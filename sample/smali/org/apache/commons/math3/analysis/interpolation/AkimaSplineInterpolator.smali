.class public Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;
.super Ljava/lang/Object;
.source "AkimaSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field private static final MINIMUM_NUMBER_POINTS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private differentiateThreePoint([D[DIIII)D
    .locals 22
    .param p1, "xvals"    # [D
    .param p2, "yvals"    # [D
    .param p3, "indexOfDifferentiation"    # I
    .param p4, "indexOfFirstSample"    # I
    .param p5, "indexOfSecondsample"    # I
    .param p6, "indexOfThirdSample"    # I

    .prologue
    .line 148
    aget-wide v10, p2, p4

    .line 149
    .local v10, "x0":D
    aget-wide v12, p2, p5

    .line 150
    .local v12, "x1":D
    aget-wide v14, p2, p6

    .line 152
    .local v14, "x2":D
    aget-wide v16, p1, p3

    aget-wide v18, p1, p4

    sub-double v4, v16, v18

    .line 153
    .local v4, "t":D
    aget-wide v16, p1, p5

    aget-wide v18, p1, p4

    sub-double v6, v16, v18

    .line 154
    .local v6, "t1":D
    aget-wide v16, p1, p6

    aget-wide v18, p1, p4

    sub-double v8, v16, v18

    .line 156
    .local v8, "t2":D
    sub-double v16, v14, v10

    div-double v18, v8, v6

    sub-double v20, v12, v10

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v18, v8, v8

    mul-double v20, v6, v8

    sub-double v18, v18, v20

    div-double v0, v16, v18

    .line 157
    .local v0, "a":D
    sub-double v16, v12, v10

    mul-double v18, v0, v6

    mul-double v18, v18, v6

    sub-double v16, v16, v18

    div-double v2, v16, v6

    .line 159
    .local v2, "b":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v0

    mul-double v16, v16, v4

    add-double v16, v16, v2

    return-wide v16
.end method

.method private interpolateHermiteSorted([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 26
    .param p1, "xvals"    # [D
    .param p2, "yvals"    # [D
    .param p3, "firstDerivatives"    # [D

    .prologue
    .line 175
    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v13, v0, :cond_0

    .line 176
    new-instance v13, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v13

    .line 179
    :cond_0
    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v13, v0, :cond_1

    .line 180
    new-instance v13, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v13

    .line 184
    :cond_1
    const/4 v10, 0x2

    .line 185
    .local v10, "minimumLength":I
    move-object/from16 v0, p1

    array-length v13, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    .line 186
    new-instance v13, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v22, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v13, v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v13

    .line 191
    :cond_2
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v12, v13, -0x1

    .line 192
    .local v12, "size":I
    new-array v11, v12, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 193
    .local v11, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v13, 0x4

    new-array v4, v13, [D

    .line 195
    .local v4, "coefficients":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v13, v11

    if-ge v5, v13, :cond_3

    .line 196
    add-int/lit8 v13, v5, 0x1

    aget-wide v22, p1, v13

    aget-wide v24, p1, v5

    sub-double v14, v22, v24

    .line 197
    .local v14, "w":D
    mul-double v16, v14, v14

    .line 199
    .local v16, "w2":D
    aget-wide v18, p2, v5

    .line 200
    .local v18, "yv":D
    add-int/lit8 v13, v5, 0x1

    aget-wide v20, p2, v13

    .line 202
    .local v20, "yvP":D
    aget-wide v6, p3, v5

    .line 203
    .local v6, "fd":D
    add-int/lit8 v13, v5, 0x1

    aget-wide v8, p3, v13

    .line 205
    .local v8, "fdP":D
    const/4 v13, 0x0

    aput-wide v18, v4, v13

    .line 206
    const/4 v13, 0x1

    aget-wide v22, p3, v5

    aput-wide v22, v4, v13

    .line 207
    const/4 v13, 0x2

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    sub-double v24, v20, v18

    mul-double v22, v22, v24

    div-double v22, v22, v14

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v6

    sub-double v22, v22, v24

    sub-double v22, v22, v8

    div-double v22, v22, v14

    aput-wide v22, v4, v13

    .line 208
    const/4 v13, 0x3

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    sub-double v24, v18, v20

    mul-double v22, v22, v24

    div-double v22, v22, v14

    add-double v22, v22, v6

    add-double v22, v22, v8

    div-double v22, v22, v16

    aput-wide v22, v4, v13

    .line 209
    new-instance v13, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v13, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v13, v11, v5

    .line 195
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    .end local v6    # "fd":D
    .end local v8    # "fdP":D
    .end local v14    # "w":D
    .end local v16    # "w2":D
    .end local v18    # "yv":D
    .end local v20    # "yvP":D
    :cond_3
    new-instance v13, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v13
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
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 27
    .param p1, "xvals"    # [D
    .param p2, "yvals"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v4

    .line 76
    :cond_1
    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p2

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 77
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p2

    array-length v6, v0

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 80
    :cond_2
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 81
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 86
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 88
    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v14, v4, -0x1

    .line 90
    .local v14, "numberOfDiffAndWeightElements":I
    new-array v11, v14, [D

    .line 91
    .local v11, "differences":[D
    new-array v15, v14, [D

    .line 93
    .local v15, "weights":[D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v4, v11

    if-ge v13, v4, :cond_4

    .line 94
    add-int/lit8 v4, v13, 0x1

    aget-wide v4, p2, v4

    aget-wide v6, p2, v13

    sub-double/2addr v4, v6

    add-int/lit8 v6, v13, 0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v13

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    aput-wide v4, v11, v13

    .line 93
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 97
    :cond_4
    const/4 v13, 0x1

    :goto_1
    array-length v4, v15

    if-ge v13, v4, :cond_5

    .line 98
    aget-wide v4, v11, v13

    add-int/lit8 v6, v13, -0x1

    aget-wide v6, v11, v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aput-wide v4, v15, v13

    .line 97
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 102
    :cond_5
    move-object/from16 v0, p1

    array-length v4, v0

    new-array v12, v4, [D

    .line 104
    .local v12, "firstDerivatives":[D
    const/4 v13, 0x2

    :goto_2
    array-length v4, v12

    add-int/lit8 v4, v4, -0x2

    if-ge v13, v4, :cond_7

    .line 105
    add-int/lit8 v4, v13, 0x1

    aget-wide v18, v15, v4

    .line 106
    .local v18, "wP":D
    add-int/lit8 v4, v13, -0x1

    aget-wide v16, v15, v4

    .line 107
    .local v16, "wM":D
    const-wide/16 v4, 0x0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    aget-wide v20, p1, v13

    .line 110
    .local v20, "xv":D
    add-int/lit8 v4, v13, 0x1

    aget-wide v24, p1, v4

    .line 111
    .local v24, "xvP":D
    add-int/lit8 v4, v13, -0x1

    aget-wide v22, p1, v4

    .line 112
    .local v22, "xvM":D
    sub-double v4, v24, v20

    add-int/lit8 v6, v13, -0x1

    aget-wide v6, v11, v6

    mul-double/2addr v4, v6

    sub-double v6, v20, v22

    aget-wide v8, v11, v13

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sub-double v6, v24, v22

    div-double/2addr v4, v6

    aput-wide v4, v12, v13

    .line 104
    .end local v20    # "xv":D
    .end local v22    # "xvM":D
    .end local v24    # "xvP":D
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 114
    :cond_6
    add-int/lit8 v4, v13, -0x1

    aget-wide v4, v11, v4

    mul-double v4, v4, v18

    aget-wide v6, v11, v13

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    add-double v6, v18, v16

    div-double/2addr v4, v6

    aput-wide v4, v12, v13

    goto :goto_3

    .line 118
    .end local v16    # "wM":D
    .end local v18    # "wP":D
    :cond_7
    const/16 v26, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v4

    aput-wide v4, v12, v26

    .line 119
    const/16 v26, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v4

    aput-wide v4, v12, v26

    .line 120
    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v26, v4, -0x2

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v7, v4, -0x2

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v8, v4, -0x3

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v9, v4, -0x2

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v10, v4, -0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v4

    aput-wide v4, v12, v26

    .line 123
    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v26, v4, -0x1

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v7, v4, -0x1

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v8, v4, -0x3

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v9, v4, -0x2

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v10, v4, -0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v4

    aput-wide v4, v12, v26

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolateHermiteSorted([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v4

    return-object v4
.end method
