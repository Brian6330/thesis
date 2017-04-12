.class public Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;
.super Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.source "OLSMultipleLinearRegression.java"


# instance fields
.field private qr:Lorg/apache/commons/math3/linear/QRDecomposition;

.field private final threshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;-><init>(D)V

    .line 67
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "threshold"    # D

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    .line 77
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->threshold:D

    .line 78
    return-void
.end method


# virtual methods
.method public calculateAdjustedRSquared()D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 224
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    int-to-double v0, v2

    .line 225
    .local v0, "n":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->isNoIntercept()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateRSquared()D

    move-result-wide v2

    sub-double v2, v8, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    int-to-double v4, v4

    sub-double v4, v0, v4

    div-double v4, v0, v4

    mul-double/2addr v2, v4

    sub-double v2, v8, v2

    .line 228
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResidualSumOfSquares()D

    move-result-wide v2

    sub-double v4, v0, v8

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateTotalSumOfSquares()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    int-to-double v6, v6

    sub-double v6, v0, v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    sub-double v2, v8, v2

    goto :goto_0
.end method

.method protected calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method protected calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 279
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 280
    .local v2, "p":I
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v6, v4, v6, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 281
    .local v0, "Raug":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v3, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 282
    .local v1, "Rinv":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    return-object v3
.end method

.method public calculateHat()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .prologue
    .line 128
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 129
    .local v0, "Q":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    .line 130
    .local v6, "p":I
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    .line 132
    .local v5, "n":I
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v5, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 133
    .local v1, "augI":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v2

    .line 134
    .local v2, "augIData":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 135
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 136
    if-ne v3, v4, :cond_0

    if-ge v3, v6, :cond_0

    .line 137
    aget-object v7, v2, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v4

    .line 135
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_0
    aget-object v7, v2, v3

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v4

    goto :goto_2

    .line 134
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v4    # "j":I
    :cond_2
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    return-object v7
.end method

.method public calculateRSquared()D
    .locals 6

    .prologue
    .line 200
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResidualSumOfSquares()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateTotalSumOfSquares()D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public calculateResidualSumOfSquares()D
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 182
    .local v0, "residuals":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    return-wide v2
.end method

.method public calculateTotalSumOfSquares()D
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->isNoIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/stat/StatUtils;->sumSq([D)D

    move-result-wide v0

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->evaluate([D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public newSampleData([DII)V
    .locals 4
    .param p1, "data"    # [D
    .param p2, "nobs"    # I
    .param p3, "nvars"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newSampleData([DII)V

    .line 102
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->threshold:D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    .line 103
    return-void
.end method

.method public newSampleData([D[[D)V
    .locals 0
    .param p1, "y"    # [D
    .param p2, "x"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->validateSampleData([[D[D)V

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newYSampleData([D)V

    .line 92
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newXSampleData([[D)V

    .line 93
    return-void
.end method

.method protected newXSampleData([[D)V
    .locals 4
    .param p1, "x"    # [[D

    .prologue
    .line 240
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newXSampleData([[D)V

    .line 241
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->threshold:D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    .line 242
    return-void
.end method
