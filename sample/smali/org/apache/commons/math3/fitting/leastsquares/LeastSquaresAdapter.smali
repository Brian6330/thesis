.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;
.super Ljava/lang/Object;
.source "LeastSquaresAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# instance fields
.field private final problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)V
    .locals 0
    .param p1, "problem"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .line 40
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 1
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v0

    return-object v0
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    return-object v0
.end method

.method public getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    return-object v0
.end method

.method public getObservationSize()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getObservationSize()I

    move-result v0

    return v0
.end method

.method public getParameterSize()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getParameterSize()I

    move-result v0

    return v0
.end method

.method public getStart()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->problem:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
