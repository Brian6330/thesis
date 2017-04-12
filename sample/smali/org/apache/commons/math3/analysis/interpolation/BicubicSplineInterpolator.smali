.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final initializeDerivatives:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "initializeDerivatives"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->initializeDerivatives:Z

    .line 60
    return-void
.end method

.method private nextIndex(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "max"    # I

    .prologue
    .line 161
    add-int/lit8 v0, p1, 0x1

    .line 162
    .local v0, "index":I
    if-ge v0, p2, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private previousIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 173
    add-int/lit8 v0, p1, -0x1

    .line 174
    .local v0, "index":I
    if-ltz v0, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .param p3, "x2"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 30
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_1

    .line 71
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2

    .line 73
    :cond_1
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p3

    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 74
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p3

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 77
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 78
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 80
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 81
    .local v19, "xLen":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    .line 87
    .local v21, "yLen":I
    move/from16 v0, v21

    move/from16 v1, v19

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    .line 88
    .local v11, "fX":[[D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 89
    aget-object v2, p3, v12

    array-length v2, v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_3

    .line 90
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v3, p3, v12

    array-length v3, v3

    move/from16 v0, v21

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 93
    :cond_3
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_4

    .line 94
    aget-object v2, v11, v13

    aget-object v3, p3, v12

    aget-wide v4, v3, v13

    aput-wide v4, v2, v12

    .line 93
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 88
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 98
    .end local v13    # "j":I
    :cond_5
    new-instance v18, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct/range {v18 .. v18}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    .line 102
    .local v18, "spInterpolator":Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
    move/from16 v0, v21

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-object/from16 v22, v0

    .line 103
    .local v22, "ySplineX":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_2
    move/from16 v0, v21

    if-ge v13, v0, :cond_6

    .line 104
    aget-object v2, v11, v13

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v2

    aput-object v2, v22, v13

    .line 103
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 109
    :cond_6
    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-object/from16 v20, v0

    .line 110
    .local v20, "xSplineY":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    const/4 v12, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v12, v0, :cond_7

    .line 111
    aget-object v2, p3, v12

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v2

    aput-object v2, v20, v12

    .line 110
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 115
    :cond_7
    move/from16 v0, v19

    move/from16 v1, v21

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 116
    .local v6, "dFdX":[[D
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v21

    if-ge v13, v0, :cond_9

    .line 117
    aget-object v2, v22, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v10

    .line 118
    .local v10, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_8

    .line 119
    aget-object v2, v6, v12

    aget-wide v4, p1, v12

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v2, v13

    .line 118
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 116
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 124
    .end local v10    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    :cond_9
    move/from16 v0, v19

    move/from16 v1, v21

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 125
    .local v7, "dFdY":[[D
    const/4 v12, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v12, v0, :cond_b

    .line 126
    aget-object v2, v20, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v10

    .line 127
    .restart local v10    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v13, v0, :cond_a

    .line 128
    aget-object v2, v7, v12

    aget-wide v4, p2, v13

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v2, v13

    .line 127
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 125
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 133
    .end local v10    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    :cond_b
    move/from16 v0, v19

    move/from16 v1, v21

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 134
    .local v8, "d2FdXdY":[[D
    const/4 v12, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v12, v0, :cond_d

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v14

    .line 136
    .local v14, "nI":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v16

    .line 137
    .local v16, "pI":I
    const/4 v13, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v13, v0, :cond_c

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v15

    .line 139
    .local v15, "nJ":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v17

    .line 140
    .local v17, "pJ":I
    aget-object v2, v8, v12

    aget-object v3, p3, v14

    aget-wide v4, v3, v15

    aget-object v3, p3, v14

    aget-wide v24, v3, v17

    sub-double v4, v4, v24

    aget-object v3, p3, v16

    aget-wide v24, v3, v15

    sub-double v4, v4, v24

    aget-object v3, p3, v16

    aget-wide v24, v3, v17

    add-double v4, v4, v24

    aget-wide v24, p1, v14

    aget-wide v26, p1, v16

    sub-double v24, v24, v26

    aget-wide v26, p2, v15

    aget-wide v28, p2, v17

    sub-double v26, v26, v28

    mul-double v24, v24, v26

    div-double v4, v4, v24

    aput-wide v4, v2, v13

    .line 137
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 134
    .end local v15    # "nJ":I
    .end local v17    # "pJ":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 147
    .end local v14    # "nI":I
    .end local v16    # "pI":I
    :cond_d
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->initializeDerivatives:Z

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    return-object v2
.end method
