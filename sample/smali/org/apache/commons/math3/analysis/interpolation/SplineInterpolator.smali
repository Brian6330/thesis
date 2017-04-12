.class public Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
.super Ljava/lang/Object;
.source "SplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 26
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 69
    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 70
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 73
    :cond_0
    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 74
    new-instance v15, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v16, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    invoke-direct/range {v15 .. v19}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v15

    .line 79
    :cond_1
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v12, v15, -0x1

    .line 81
    .local v12, "n":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 84
    new-array v8, v12, [D

    .line 85
    .local v8, "h":[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 86
    add-int/lit8 v15, v9, 0x1

    aget-wide v16, p1, v15

    aget-wide v18, p1, v9

    sub-double v16, v16, v18

    aput-wide v16, v8, v9

    .line 85
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 89
    :cond_2
    new-array v11, v12, [D

    .line 90
    .local v11, "mu":[D
    add-int/lit8 v15, v12, 0x1

    new-array v14, v15, [D

    .line 91
    .local v14, "z":[D
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    aput-wide v16, v11, v15

    .line 92
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    aput-wide v16, v14, v15

    .line 93
    const-wide/16 v6, 0x0

    .line 94
    .local v6, "g":D
    const/4 v9, 0x1

    :goto_1
    if-ge v9, v12, :cond_3

    .line 95
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-int/lit8 v15, v9, 0x1

    aget-wide v18, p1, v15

    add-int/lit8 v15, v9, -0x1

    aget-wide v20, p1, v15

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-int/lit8 v15, v9, -0x1

    aget-wide v18, v8, v15

    add-int/lit8 v15, v9, -0x1

    aget-wide v20, v11, v15

    mul-double v18, v18, v20

    sub-double v6, v16, v18

    .line 96
    aget-wide v16, v8, v9

    div-double v16, v16, v6

    aput-wide v16, v11, v9

    .line 97
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    add-int/lit8 v15, v9, 0x1

    aget-wide v18, p2, v15

    add-int/lit8 v15, v9, -0x1

    aget-wide v20, v8, v15

    mul-double v18, v18, v20

    aget-wide v20, p2, v9

    add-int/lit8 v15, v9, 0x1

    aget-wide v22, p1, v15

    add-int/lit8 v15, v9, -0x1

    aget-wide v24, p1, v15

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-int/lit8 v15, v9, -0x1

    aget-wide v20, p2, v15

    aget-wide v22, v8, v9

    mul-double v20, v20, v22

    add-double v18, v18, v20

    mul-double v16, v16, v18

    add-int/lit8 v15, v9, -0x1

    aget-wide v18, v8, v15

    aget-wide v20, v8, v9

    mul-double v18, v18, v20

    div-double v16, v16, v18

    add-int/lit8 v15, v9, -0x1

    aget-wide v18, v8, v15

    add-int/lit8 v15, v9, -0x1

    aget-wide v20, v14, v15

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    div-double v16, v16, v6

    aput-wide v16, v14, v9

    .line 94
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 102
    :cond_3
    new-array v2, v12, [D

    .line 103
    .local v2, "b":[D
    add-int/lit8 v15, v12, 0x1

    new-array v3, v15, [D

    .line 104
    .local v3, "c":[D
    new-array v5, v12, [D

    .line 106
    .local v5, "d":[D
    const-wide/16 v16, 0x0

    aput-wide v16, v14, v12

    .line 107
    const-wide/16 v16, 0x0

    aput-wide v16, v3, v12

    .line 109
    add-int/lit8 v10, v12, -0x1

    .local v10, "j":I
    :goto_2
    if-ltz v10, :cond_4

    .line 110
    aget-wide v16, v14, v10

    aget-wide v18, v11, v10

    add-int/lit8 v15, v10, 0x1

    aget-wide v20, v3, v15

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    aput-wide v16, v3, v10

    .line 111
    add-int/lit8 v15, v10, 0x1

    aget-wide v16, p2, v15

    aget-wide v18, p2, v10

    sub-double v16, v16, v18

    aget-wide v18, v8, v10

    div-double v16, v16, v18

    aget-wide v18, v8, v10

    add-int/lit8 v15, v10, 0x1

    aget-wide v20, v3, v15

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    aget-wide v24, v3, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    div-double v18, v18, v20

    sub-double v16, v16, v18

    aput-wide v16, v2, v10

    .line 112
    add-int/lit8 v15, v10, 0x1

    aget-wide v16, v3, v15

    aget-wide v18, v3, v10

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    aget-wide v20, v8, v10

    mul-double v18, v18, v20

    div-double v16, v16, v18

    aput-wide v16, v5, v10

    .line 109
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 115
    :cond_4
    new-array v13, v12, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 116
    .local v13, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v15, 0x4

    new-array v4, v15, [D

    .line 117
    .local v4, "coefficients":[D
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_5

    .line 118
    const/4 v15, 0x0

    aget-wide v16, p2, v9

    aput-wide v16, v4, v15

    .line 119
    const/4 v15, 0x1

    aget-wide v16, v2, v9

    aput-wide v16, v4, v15

    .line 120
    const/4 v15, 0x2

    aget-wide v16, v3, v9

    aput-wide v16, v4, v15

    .line 121
    const/4 v15, 0x3

    aget-wide v16, v5, v9

    aput-wide v16, v4, v15

    .line 122
    new-instance v15, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v15, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v15, v13, v9

    .line 117
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 125
    :cond_5
    new-instance v15, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v15
.end method
