.class public Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;
.super Lorg/apache/commons/math3/stat/correlation/Covariance;
.source "StorelessCovariance.java"


# instance fields
.field private covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

.field private dimension:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "dim"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;-><init>(IZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "dim"    # I
    .param p2, "biasCorrected"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>()V

    .line 69
    iput p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    .line 70
    iget v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    .line 71
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->initializeMatrix(Z)V

    .line 72
    return-void
.end method

.method private getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->indexOf(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private indexOf(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 98
    if-ge p2, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private initializeMatrix(Z)V
    .locals 3
    .param p1, "biasCorrected"    # Z

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v0, v2, :cond_1

    .line 82
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v1, v2, :cond_0

    .line 83
    new-instance v2, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;-><init>(Z)V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->setElement(IILorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private setElement(IILorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "cov"    # Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->indexOf(II)I

    move-result v1

    aput-object p3, v0, v1

    .line 120
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;)V
    .locals 5
    .param p1, "sc"    # Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 175
    iget v2, p1, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-eq v2, v3, :cond_0

    .line 176
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v3, p1, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    iget v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 181
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v0, v2, :cond_2

    .line 182
    move v1, v0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v1, v2, :cond_1

    .line 183
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v2

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->append(Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public getCovariance(II)D
    .locals 2
    .param p1, "xIndex"    # I
    .param p2, "yIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getData()[[D

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getData()[[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 206
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    iget v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 207
    .local v0, "data":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v1, v3, :cond_1

    .line 208
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v2, v3, :cond_0

    .line 209
    aget-object v3, v0, v1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->getResult()D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public getN()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public increment([D)V
    .locals 8
    .param p1, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 149
    array-length v2, p1

    .line 150
    .local v2, "length":I
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-eq v2, v3, :cond_0

    .line 151
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 156
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 157
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 158
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v3

    aget-wide v4, p1, v0

    aget-wide v6, p1, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->increment(DD)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "j":I
    :cond_2
    return-void
.end method
