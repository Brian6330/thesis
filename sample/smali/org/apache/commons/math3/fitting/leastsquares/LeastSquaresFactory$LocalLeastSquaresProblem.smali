.class Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;
.super Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;
.source "LeastSquaresFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalLeastSquaresProblem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;,
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem",
        "<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
    }
.end annotation


# instance fields
.field private final lazyEvaluation:Z

.field private final model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

.field private final paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

.field private final start:Lorg/apache/commons/math3/linear/RealVector;

.field private final target:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)V
    .locals 5
    .param p1, "model"    # Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;
    .param p2, "target"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "start"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p5, "maxEvaluations"    # I
    .param p6, "maxIterations"    # I
    .param p7, "lazyEvaluation"    # Z
    .param p8, "paramValidator"    # Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;IIZ",
            "Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p4, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    invoke-direct {p0, p5, p6, p4}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;-><init>(IILorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 387
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    .line 388
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    .line 389
    iput-object p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    .line 390
    iput-boolean p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->lazyEvaluation:Z

    .line 391
    iput-object p8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    .line 393
    if-eqz p7, :cond_0

    instance-of v0, p1, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_IMPLEMENTATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 7
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    const/4 v5, 0x0

    .line 420
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    .line 424
    .local v4, "p":Lorg/apache/commons/math3/linear/RealVector;
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->lazyEvaluation:Z

    if-eqz v0, :cond_1

    .line 425
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    check-cast v0, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {v1, v0, v2, v4, v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;)V

    move-object v0, v1

    .line 431
    :goto_1
    return-object v0

    .line 420
    .end local v4    # "p":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;->validate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    goto :goto_0

    .line 430
    .restart local v4    # "p":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;->value(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v6

    .line 431
    .local v6, "value":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;>;"
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;

    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;)V

    goto :goto_1
.end method

.method public getObservationSize()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getParameterSize()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getStart()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    goto :goto_0
.end method
