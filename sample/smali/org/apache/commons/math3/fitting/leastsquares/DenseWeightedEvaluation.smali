.class Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;
.super Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.source "DenseWeightedEvaluation.java"


# instance fields
.field private final unweighted:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

.field private final weightSqrt:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "unweighted"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .param p2, "weightSqrt"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 44
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;-><init>(I)V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->unweighted:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .line 46
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->weightSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 47
    return-void
.end method


# virtual methods
.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->weightSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->unweighted:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->unweighted:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->weightSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;->unweighted:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
