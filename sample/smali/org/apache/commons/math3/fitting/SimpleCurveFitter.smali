.class public Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "SimpleCurveFitter.java"


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V
    .locals 0
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .param p2, "initialGuess"    # [D
    .param p3, "maxIter"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 51
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->initialGuess:[D

    .line 52
    iput p3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->maxIter:I

    .line 53
    return-void
.end method

.method public static create(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 2
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .param p1, "start"    # [D

    .prologue
    .line 71
    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method


# virtual methods
.method protected getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 101
    .local v2, "len":I
    new-array v5, v2, [D

    .line 102
    .local v5, "target":[D
    new-array v6, v2, [D

    .line 104
    .local v6, "weights":[D
    const/4 v0, 0x0

    .line 105
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 106
    .local v4, "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    aput-wide v8, v5, v0

    .line 107
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v4    # "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    iget-object v7, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-direct {v3, v7, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 116
    .local v3, "model":Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    new-instance v7, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->maxIter:I

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->initialGuess:[D

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    new-instance v8, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v8, v6}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v7

    return-object v7
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 3
    .param p1, "newMaxIter"    # I

    .prologue
    .line 91
    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 4
    .param p1, "newStart"    # [D

    .prologue
    .line 80
    new-instance v1, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iget v3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->maxIter:I

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v1
.end method
