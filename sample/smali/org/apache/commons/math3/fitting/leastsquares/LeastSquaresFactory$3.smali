.class final Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$3;
.super Ljava/lang/Object;
.source "LeastSquaresFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/ConvergenceChecker",
        "<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$3;->val$checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p2, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$3;->converged(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z

    move-result v0

    return v0
.end method

.method public converged(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z
    .locals 6
    .param p1, "iteration"    # I
    .param p2, "previous"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .param p3, "current"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .prologue
    const/4 v5, 0x0

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$3;->val$checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    new-instance v1, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-interface {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    new-instance v2, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-interface {p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    invoke-interface {p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
