.class public Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.source "SmoothingPolynomialBicubicSplineInterpolator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final xDegree:I

.field private final xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

.field private final yDegree:I

.field private final yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "degree"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 11
    .param p1, "xDegree"    # I
    .param p2, "yDegree"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>()V

    .line 76
    if-gez p1, :cond_0

    .line 77
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 79
    :cond_0
    if-gez p2, :cond_1

    .line 80
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 82
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xDegree:I

    .line 83
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yDegree:I

    .line 85
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 86
    .local v2, "safeFactor":D
    new-instance v0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;

    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v4, v8

    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    mul-double/2addr v6, v8

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;-><init>(DD)V

    .line 89
    .local v0, "checker":Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;
    new-instance v1, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v4, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    invoke-direct {v4, v10, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {v1, v4}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    .line 90
    new-instance v1, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v4, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    invoke-direct {v4, v10, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {v1, v4}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    .line 91
    return-void
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
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 20
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 102
    move-object/from16 v0, p1

    array-length v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    array-length v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p3

    array-length v5, v0

    if-nez v5, :cond_1

    .line 103
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v5

    .line 105
    :cond_1
    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p3

    array-length v6, v0

    if-eq v5, v6, :cond_2

    .line 106
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 109
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 110
    .local v16, "xLen":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    .line 112
    .local v18, "yLen":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 113
    aget-object v5, p3, v14

    array-length v5, v5

    move/from16 v0, v18

    if-eq v5, v0, :cond_3

    .line 114
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v6, p3, v14

    array-length v6, v6

    move/from16 v0, v18

    invoke-direct {v5, v6, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 112
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 118
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 119
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 123
    move/from16 v0, v18

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-object/from16 v19, v0

    .line 124
    .local v19, "yPolyX":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->clearObservations()V

    .line 126
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aget-wide v8, p1, v14

    aget-object v10, p3, v14

    aget-wide v10, v10, v15

    invoke-virtual/range {v5 .. v11}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->addObservedPoint(DDD)V

    .line 126
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 132
    :cond_5
    new-instance v5, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xDegree:I

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [D

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v5, v19, v15

    .line 124
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 137
    :cond_6
    move/from16 v0, v16

    move/from16 v1, v18

    filled-new-array {v0, v1}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 138
    .local v12, "fval_1":[[D
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    .line 139
    aget-object v4, v19, v15

    .line 140
    .local v4, "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    .line 141
    aget-object v5, v12, v14

    aget-wide v6, p1, v14

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v6

    aput-wide v6, v5, v15

    .line 140
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 138
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 147
    .end local v4    # "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    :cond_8
    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-object/from16 v17, v0

    .line 148
    .local v17, "xPolyY":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->clearObservations()V

    .line 150
    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aget-wide v8, p2, v15

    aget-object v10, v12, v14

    aget-wide v10, v10, v15

    invoke-virtual/range {v5 .. v11}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->addObservedPoint(DDD)V

    .line 150
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 156
    :cond_9
    new-instance v5, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yDegree:I

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [D

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v5, v17, v14

    .line 148
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 161
    :cond_a
    move/from16 v0, v16

    move/from16 v1, v18

    filled-new-array {v0, v1}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    .line 162
    .local v13, "fval_2":[[D
    const/4 v14, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v14, v0, :cond_c

    .line 163
    aget-object v4, v17, v14

    .line 164
    .restart local v4    # "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v15, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    .line 165
    aget-object v5, v13, v14

    aget-wide v6, p2, v15

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v6

    aput-wide v6, v5, v15

    .line 164
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 162
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 169
    .end local v4    # "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super {v0, v1, v2, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v5

    return-object v5
.end method
