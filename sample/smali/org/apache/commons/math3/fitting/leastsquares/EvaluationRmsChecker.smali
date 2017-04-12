.class public Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;
.super Ljava/lang/Object;
.source "EvaluationRmsChecker.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
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
.field private final absTol:D

.field private final relTol:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "tol"    # D

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;-><init>(DD)V

    .line 47
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relTol"    # D
    .param p3, "absTol"    # D

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->relTol:D

    .line 62
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->absTol:D

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p2, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->converged(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z

    move-result v0

    return v0
.end method

.method public converged(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z
    .locals 6
    .param p1, "iteration"    # I
    .param p2, "previous"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .param p3, "current"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .prologue
    .line 69
    invoke-interface {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide v0

    .line 70
    .local v0, "prevRms":D
    invoke-interface {p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide v2

    .line 71
    .local v2, "currRms":D
    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->absTol:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->relTol:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
