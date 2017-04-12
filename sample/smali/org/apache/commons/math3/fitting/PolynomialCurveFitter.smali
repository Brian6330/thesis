.class public Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "PolynomialCurveFitter.java"


# static fields
.field private static final FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;


# instance fields
.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "initialGuess"    # [D
    .param p2, "maxIter"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    .line 57
    iput p2, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    .line 58
    return-void
.end method

.method public static create(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 3
    .param p0, "degree"    # I

    .prologue
    .line 73
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    add-int/lit8 v1, p0, 0x1

    new-array v1, v1, [D

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

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
    .local v0, "i":I
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

    sget-object v7, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v3, v7, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 114
    .local v3, "model":Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    iget-object v7, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    if-nez v7, :cond_1

    .line 115
    new-instance v7, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v7}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v7

    .line 120
    :cond_1
    new-instance v7, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

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

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 2
    .param p1, "newMaxIter"    # I

    .prologue
    .line 92
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 3
    .param p1, "newStart"    # [D

    .prologue
    .line 82
    new-instance v1, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iget v2, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v1
.end method
