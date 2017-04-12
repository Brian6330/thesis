.class public abstract Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.super Ljava/lang/Object;
.source "AbstractMultipleLinearRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/MultipleLinearRegression;


# instance fields
.field private noIntercept:Z

.field private xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private yVector:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return-void
.end method


# virtual methods
.method protected abstract calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method protected abstract calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method protected calculateErrorVariance()D
    .locals 6

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 364
    .local v0, "residuals":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    return-wide v2
.end method

.method protected calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 380
    .local v0, "b":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1
.end method

.method protected calculateYVariance()D
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateErrorVariance()D
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressandVariance()D
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateYVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressionParameters()[D
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 265
    .local v0, "b":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    return-object v1
.end method

.method public estimateRegressionParametersStandardErrors()[D
    .locals 8

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateRegressionParametersVariance()[[D

    move-result-object v0

    .line 289
    .local v0, "betaVariance":[[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v4

    .line 290
    .local v4, "sigma":D
    const/4 v6, 0x0

    aget-object v6, v0, v6

    array-length v2, v6

    .line 291
    .local v2, "length":I
    new-array v3, v2, [D

    .line 292
    .local v3, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 293
    aget-object v6, v0, v1

    aget-wide v6, v6, v1

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-object v3
.end method

.method public estimateRegressionParametersVariance()[[D
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method public estimateRegressionStandardError()D
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateErrorVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateResiduals()[D
    .locals 4

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 273
    .local v0, "b":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    .line 274
    .local v1, "e":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    return-object v2
.end method

.method protected getX()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method protected getY()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public isNoIntercept()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return v0
.end method

.method public newSampleData([DII)V
    .locals 12
    .param p1, "data"    # [D
    .param p2, "nobs"    # I
    .param p3, "nvars"    # I

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v7, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v7}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v7

    .line 118
    :cond_0
    array-length v7, p1

    add-int/lit8 v8, p3, 0x1

    mul-int/2addr v8, p2

    if-eq v7, v8, :cond_1

    .line 119
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, p1

    add-int/lit8 v9, p3, 0x1

    mul-int/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 121
    :cond_1
    if-gt p2, p3, :cond_2

    .line 122
    new-instance v7, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 124
    :cond_2
    new-array v6, p2, [D

    .line 125
    .local v6, "y":[D
    iget-boolean v7, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-eqz v7, :cond_4

    move v0, p3

    .line 126
    .local v0, "cols":I
    :goto_0
    filled-new-array {p2, v0}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 127
    .local v5, "x":[[D
    const/4 v3, 0x0

    .line 128
    .local v3, "pointer":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "pointer":I
    .local v4, "pointer":I
    :goto_1
    if-ge v1, p2, :cond_7

    .line 129
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pointer":I
    .restart local v3    # "pointer":I
    aget-wide v8, p1, v4

    aput-wide v8, v6, v1

    .line 130
    iget-boolean v7, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-nez v7, :cond_3

    .line 131
    aget-object v7, v5, v1

    const/4 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v7, v8

    .line 133
    :cond_3
    iget-boolean v7, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-eqz v7, :cond_5

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    move v4, v3

    .end local v3    # "pointer":I
    .restart local v4    # "pointer":I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 134
    aget-object v7, v5, v1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pointer":I
    .restart local v3    # "pointer":I
    aget-wide v8, p1, v4

    aput-wide v8, v7, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "pointer":I
    .restart local v4    # "pointer":I
    goto :goto_3

    .line 125
    .end local v0    # "cols":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "pointer":I
    .end local v5    # "x":[[D
    :cond_4
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 133
    .restart local v0    # "cols":I
    .restart local v1    # "i":I
    .restart local v3    # "pointer":I
    .restart local v5    # "x":[[D
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 128
    .end local v3    # "pointer":I
    .restart local v2    # "j":I
    .restart local v4    # "pointer":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "j":I
    :cond_7
    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v7, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v7, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 138
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v7, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    .line 139
    return-void
.end method

.method protected newXSampleData([[D)V
    .locals 8
    .param p1, "x"    # [[D

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 187
    :cond_0
    array-length v3, p1

    if-nez v3, :cond_1

    .line 188
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v3

    .line 190
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-eqz v3, :cond_2

    .line 191
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, p1, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 204
    :goto_0
    return-void

    .line 193
    :cond_2
    aget-object v3, p1, v6

    array-length v1, v3

    .line 194
    .local v1, "nVars":I
    array-length v3, p1

    add-int/lit8 v4, v1, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 195
    .local v2, "xAug":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 196
    aget-object v3, p1, v0

    array-length v3, v3

    if-eq v3, v1, :cond_3

    .line 197
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v0

    array-length v4, v4

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 199
    :cond_3
    aget-object v3, v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v6

    .line 200
    aget-object v3, p1, v0

    aget-object v4, v2, v0

    invoke-static {v3, v6, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, v2, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_0
.end method

.method protected newYSampleData([D)V
    .locals 1
    .param p1, "y"    # [D

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 152
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    .line 156
    return-void
.end method

.method public setNoIntercept(Z)V
    .locals 0
    .param p1, "noIntercept"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    .line 77
    return-void
.end method

.method protected validateCovarianceData([[D[[D)V
    .locals 3
    .param p1, "x"    # [[D
    .param p2, "covariance"    # [[D

    .prologue
    const/4 v2, 0x0

    .line 252
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 253
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 255
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    aget-object v1, p2, v2

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 256
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    array-length v1, p2

    aget-object v2, p2, v2

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 258
    :cond_1
    return-void
.end method

.method protected validateSampleData([[D[D)V
    .locals 5
    .param p1, "x"    # [[D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 225
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 226
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 228
    :cond_1
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 229
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 231
    :cond_2
    array-length v0, p1

    if-nez v0, :cond_3

    .line 232
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 234
    :cond_3
    aget-object v0, p1, v4

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 235
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aget-object v4, p1, v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 239
    :cond_4
    return-void
.end method
