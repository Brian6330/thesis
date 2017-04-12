.class Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;
.super Ljava/lang/Object;
.source "OptimumImpl.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;


# instance fields
.field private final evaluations:I

.field private final iterations:I

.field private final value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V
    .locals 0
    .param p1, "value"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .param p2, "evaluations"    # I
    .param p3, "iterations"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .line 47
    iput p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->evaluations:I

    .line 48
    iput p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->iterations:I

    .line 49
    return-void
.end method


# virtual methods
.method public getCost()D
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "threshold"    # D

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->evaluations:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->iterations:I

    return v0
.end method

.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public getRMS()D
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "covarianceSingularityThreshold"    # D

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getSigma(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
