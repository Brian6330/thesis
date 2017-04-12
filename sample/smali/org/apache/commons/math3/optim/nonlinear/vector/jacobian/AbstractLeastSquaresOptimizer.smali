.class public abstract Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;
.source "AbstractLeastSquaresOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cost:D

.field private weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 58
    return-void
.end method

.method private squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 269
    instance-of v4, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v4, :cond_0

    .line 270
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 271
    .local v1, "dim":I
    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    .line 272
    .local v3, "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 273
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-interface {v3, v2, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "dim":I
    .end local v2    # "i":I
    .end local v3    # "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 278
    .local v0, "dec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .end local v0    # "dec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected computeCost([D)D
    .locals 4
    .param p1, "residuals"    # [D

    .prologue
    .line 80
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 81
    .local v0, "r":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public computeCovariances([DD)[[D
    .locals 4
    .param p1, "params"    # [D
    .param p2, "threshold"    # D

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 149
    .local v0, "j":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 152
    .local v1, "jTj":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v3, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v3, v1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 154
    .local v2, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    return-object v3
.end method

.method protected computeResiduals([D)[D
    .locals 8
    .param p1, "objectiveValue"    # [D

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v2

    .line 221
    .local v2, "target":[D
    array-length v3, p1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 222
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v2

    array-length v5, p1

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 226
    :cond_0
    array-length v3, v2

    new-array v1, v3, [D

    .line 227
    .local v1, "residuals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 228
    aget-wide v4, v2, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    aput-wide v4, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    return-object v1
.end method

.method public computeSigma([DD)[D
    .locals 6
    .param p1, "params"    # [D
    .param p2, "covarianceSingularityThreshold"    # D

    .prologue
    .line 173
    array-length v2, p1

    .line 174
    .local v2, "nC":I
    new-array v3, v2, [D

    .line 175
    .local v3, "sig":[D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v0

    .line 176
    .local v0, "cov":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 177
    aget-object v4, v0, v1

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v3
.end method

.method protected computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p1, "params"    # [D

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeJacobian([D)[[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getChiSquare()D
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->cost:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->cost:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getRMS()D
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getTargetSize()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 252
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 253
    .local v1, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    if-eqz v4, :cond_1

    .line 254
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 260
    :cond_0
    return-void

    .line 252
    .restart local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setCost(D)V
    .locals 1
    .param p1, "cost"    # D

    .prologue
    .line 124
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->cost:D

    .line 125
    return-void
.end method
