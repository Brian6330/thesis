.class public Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;
.super Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.source "GLSMultipleLinearRegression.java"


# instance fields
.field private Omega:Lorg/apache/commons/math3/linear/RealMatrix;

.field private OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
    .locals 6

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 95
    .local v0, "OI":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 96
    .local v1, "XT":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 97
    .local v2, "XTOIX":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v4, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 98
    .local v3, "inverse":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    return-object v4
.end method

.method protected calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 111
    .local v0, "OI":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 112
    .local v1, "XTOIX":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v2, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    return-object v2
.end method

.method protected calculateErrorVariance()D
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 130
    .local v0, "residuals":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    .line 131
    .local v2, "t":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-double v4, v1

    div-double v4, v2, v4

    return-wide v4
.end method

.method protected getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->Omega:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method protected newCovarianceData([[D)V
    .locals 1
    .param p1, "omega"    # [[D

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->Omega:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 71
    return-void
.end method

.method public newSampleData([D[[D[[D)V
    .locals 0
    .param p1, "y"    # [D
    .param p2, "x"    # [[D
    .param p3, "covariance"    # [[D

    .prologue
    .line 56
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->validateSampleData([[D[D)V

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newYSampleData([D)V

    .line 58
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newXSampleData([[D)V

    .line 59
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->validateCovarianceData([[D[[D)V

    .line 60
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newCovarianceData([[D)V

    .line 61
    return-void
.end method
