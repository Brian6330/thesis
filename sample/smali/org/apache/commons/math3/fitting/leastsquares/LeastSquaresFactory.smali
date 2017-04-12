.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.super Ljava/lang/Object;
.source "LeastSquaresFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;,
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countEvaluations(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 1
    .param p0, "problem"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .param p1, "counter"    # Lorg/apache/commons/math3/util/Incrementor;

    .prologue
    .line 227
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$2;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)V

    return-object v0
.end method

.method public static create(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;[D[DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 7
    .param p0, "model"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p1, "jacobian"    # Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .param p2, "observed"    # [D
    .param p3, "start"    # [D
    .param p4, "weight"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p6, "maxEvaluations"    # I
    .param p7, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
            "Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;",
            "[D[D",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;II)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .prologue
    .local p5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    const/4 v3, 0x0

    .line 174
    invoke-static {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, p2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, p3, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 6
    .param p0, "model"    # Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;
    .param p1, "observed"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "start"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "weight"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p5, "maxEvaluations"    # I
    .param p6, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;II)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .prologue
    .line 138
    .local p4, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 9
    .param p0, "model"    # Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;
    .param p1, "observed"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "start"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "weight"    # Lorg/apache/commons/math3/linear/RealMatrix;
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
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;IIZ",
            "Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;",
            ")",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)V

    .line 82
    .local v0, "p":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    if-eqz p3, :cond_0

    .line 83
    invoke-static {v0, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    .line 85
    .end local v0    # "p":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    :cond_0
    return-object v0
.end method

.method public static create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 9
    .param p0, "model"    # Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;
    .param p1, "observed"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "start"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "maxEvaluations"    # I
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;II)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .prologue
    .local p3, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    const/4 v3, 0x0

    .line 107
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0
.end method

.method public static evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$3;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-object v0
.end method

.method public static model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;
    .locals 1
    .param p0, "value"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p1, "jacobian"    # Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .prologue
    .line 295
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;-><init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V

    return-object v0
.end method

.method private static squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 272
    instance-of v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v4, :cond_0

    .line 273
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 274
    .local v1, "dim":I
    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    .line 275
    .local v3, "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 276
    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-interface {v3, v2, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "dim":I
    .end local v2    # "i":I
    .end local v3    # "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 281
    .local v0, "dec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .end local v0    # "dec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    :cond_1
    return-object v3
.end method

.method public static weightDiagonal(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 2
    .param p0, "problem"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .param p1, "weights"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 213
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-static {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0
.end method

.method public static weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 2
    .param p0, "problem"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .param p1, "weights"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 193
    invoke-static {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 194
    .local v0, "weightSquareRoot":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-object v1
.end method
