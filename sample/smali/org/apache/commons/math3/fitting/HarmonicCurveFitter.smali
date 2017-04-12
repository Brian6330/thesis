.class public Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "HarmonicCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;
    }
.end annotation


# static fields
.field private static final FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;


# instance fields
.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "initialGuess"    # [D
    .param p2, "maxIter"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    .line 67
    iput p2, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    .line 68
    return-void
.end method

.method public static create()Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method


# virtual methods
.method protected getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 11
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
    .line 109
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 110
    .local v2, "len":I
    new-array v6, v2, [D

    .line 111
    .local v6, "target":[D
    new-array v7, v2, [D

    .line 113
    .local v7, "weights":[D
    const/4 v0, 0x0

    .line 114
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 115
    .local v4, "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 116
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v8

    aput-wide v8, v7, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v4    # "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    sget-object v8, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v3, v8, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 124
    .local v3, "model":Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    iget-object v8, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    if-eqz v8, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    .line 131
    .local v5, "startPoint":[D
    :goto_1
    new-instance v8, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v9, 0x7fffffff

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v8

    iget v9, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v8

    new-instance v9, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v9, v7}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v9

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v8

    return-object v8

    .line 124
    .end local v5    # "startPoint":[D
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;

    invoke-direct {v8, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->guess()[D

    move-result-object v5

    goto :goto_1
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 2
    .param p1, "newMaxIter"    # I

    .prologue
    .line 101
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 3
    .param p1, "newStart"    # [D

    .prologue
    .line 91
    new-instance v1, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iget v2, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v1
.end method
