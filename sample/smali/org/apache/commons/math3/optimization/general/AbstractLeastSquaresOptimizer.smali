.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.source "AbstractLeastSquaresOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer",
        "<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SINGULARITY_THRESHOLD:D = 1.0E-14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected cols:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected cost:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

.field private jacobianEvaluations:I

.field protected objective:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected point:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected rows:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

.field protected weightedResidualJacobian:[[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected weightedResiduals:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 135
    return-void
.end method

.method private squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 565
    instance-of v4, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v4, :cond_0

    .line 566
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 567
    .local v1, "dim":I
    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    .line 568
    .local v3, "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 569
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-interface {v3, v2, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "dim":I
    .end local v2    # "i":I
    .end local v3    # "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 574
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
    .line 225
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 226
    .local v0, "r":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

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
    .line 330
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 333
    .local v0, "j":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 336
    .local v1, "jTj":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v3, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v3, v1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 338
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
    .line 544
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v2

    .line 545
    .local v2, "target":[D
    array-length v3, p1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 546
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v2

    array-length v5, p1

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 550
    :cond_0
    array-length v3, v2

    new-array v1, v3, [D

    .line 551
    .local v1, "residuals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 552
    aget-wide v4, v2, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    aput-wide v4, v1, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    return-object v1
.end method

.method public computeSigma([DD)[D
    .locals 6
    .param p1, "params"    # [D
    .param p2, "covarianceSingularityThreshold"    # D

    .prologue
    .line 402
    array-length v2, p1

    .line 403
    .local v2, "nC":I
    new-array v3, v2, [D

    .line 404
    .local v3, "sig":[D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v0

    .line 405
    .local v0, "cov":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 406
    aget-object v4, v0, v1

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-object v3
.end method

.method protected computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12
    .param p1, "params"    # [D

    .prologue
    const/4 v2, 0x1

    .line 168
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    .line 170
    array-length v0, p1

    new-array v6, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 171
    .local v6, "dsPoint":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v1, p1

    .line 172
    .local v1, "nC":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 173
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    .line 176
    .local v7, "dsValue":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    array-length v10, v0

    .line 177
    .local v10, "nR":I
    array-length v0, v7

    if-eq v0, v10, :cond_1

    .line 178
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v7

    invoke-direct {v0, v2, v10}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 180
    :cond_1
    filled-new-array {v10, v1}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 181
    .local v9, "jacobianData":[[D
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_3

    .line 182
    new-array v11, v1, [I

    .line 183
    .local v11, "orders":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v1, :cond_2

    .line 184
    aput v2, v11, v8

    .line 185
    aget-object v0, v9, v3

    aget-object v4, v7, v3

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v4

    aput-wide v4, v0, v8

    .line 186
    const/4 v0, 0x0

    aput v0, v11, v8

    .line 183
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 181
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v8    # "j":I
    .end local v11    # "orders":[I
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v9}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getChiSquare()D
    .locals 4

    .prologue
    .line 250
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getCovariances()[[D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getCovariances(D)[[D

    move-result-object v0

    return-object v0
.end method

.method public getCovariances(D)[[D
    .locals 1
    .param p1, "threshold"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v0

    return-object v0
.end method

.method public getJacobianEvaluations()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    return v0
.end method

.method public getRMS()D
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public guessParametersErrors()[D
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    iget v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v6, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    if-gt v5, v6, :cond_0

    .line 373
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v7, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 376
    :cond_0
    iget v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    new-array v3, v5, [D

    .line 377
    .local v3, "errors":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v6

    iget v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v8, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    sub-int/2addr v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 378
    .local v0, "c":D
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v2

    .line 379
    .local v2, "covar":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 380
    aget-object v5, v2, v4

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    aput-wide v6, v3, v4

    .line 379
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    :cond_1
    return-object v3
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 4
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
    .param p3, "target"    # [D
    .param p4, "weights"    # [D
    .param p5, "startPoint"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v3, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {v3, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v3, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 6
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p3, "x2"    # [D
    .param p4, "x3"    # [D
    .param p5, "x4"    # [D

    .prologue
    .line 62
    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .param p3, "target"    # [D
    .param p4, "weights"    # [D
    .param p5, "startPoint"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v2, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {v2, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v2, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .param p3, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected setCost(D)V
    .locals 1
    .param p1, "cost"    # D

    .prologue
    .line 270
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    .line 271
    return-void
.end method

.method protected setUp()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 519
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-static {v0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .line 522
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    .line 524
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    .line 525
    return-void
.end method

.method protected updateJacobian()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 155
    .local v0, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResidualJacobian:[[D

    .line 156
    return-void
.end method

.method protected updateResidualsAndCost()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->objective:[D

    .line 206
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->objective:[D

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v0

    .line 209
    .local v0, "res":[D
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    .line 212
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 213
    .local v1, "residuals":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResiduals:[D

    .line 214
    return-void
.end method
