.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
.super Ljava/lang/Object;
.source "LeastSquaresBuilder.java"


# instance fields
.field private checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation
.end field

.field private lazyEvaluation:Z

.field private maxEvaluations:I

.field private maxIterations:I

.field private model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

.field private paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

.field private start:Lorg/apache/commons/math3/linear/RealVector;

.field private target:Lorg/apache/commons/math3/linear/RealVector;

.field private weight:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 9

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    iget v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations:I

    iget v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations:I

    iget-boolean v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->lazyEvaluation:Z

    iget-object v8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0
.end method

.method public checker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "newChecker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    .line 110
    return-object p0
.end method

.method public checkerPair(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "newChecker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v0

    return-object v0
.end method

.method public lazyEvaluation(Z)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->lazyEvaluation:Z

    .line 211
    return-object p0
.end method

.method public maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newMaxEvaluations"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations:I

    .line 88
    return-object p0
.end method

.method public maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newMaxIterations"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations:I

    .line 99
    return-object p0
.end method

.method public model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 1
    .param p1, "value"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "jacobian"    # Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .prologue
    .line 134
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v0

    return-object v0
.end method

.method public model(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newModel"    # Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    .line 145
    return-object p0
.end method

.method public parameterValidator(Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newValidator"    # Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    .line 224
    return-object p0
.end method

.method public start(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newStart"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start:Lorg/apache/commons/math3/linear/RealVector;

    .line 177
    return-object p0
.end method

.method public start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 2
    .param p1, "newStart"    # [D

    .prologue
    .line 187
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v0

    return-object v0
.end method

.method public target(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newTarget"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target:Lorg/apache/commons/math3/linear/RealVector;

    .line 156
    return-object p0
.end method

.method public target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 2
    .param p1, "newTarget"    # [D

    .prologue
    .line 166
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .param p1, "newWeight"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 198
    return-object p0
.end method
