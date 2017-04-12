.class Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;
.super Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.source "LeastSquaresFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyUnweightedEvaluation"
.end annotation


# instance fields
.field private final model:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

.field private final point:Lorg/apache/commons/math3/linear/RealVector;

.field private final target:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .param p1, "model"    # Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;
    .param p2, "target"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 504
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;-><init>(I)V

    .line 506
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->model:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    .line 507
    iput-object p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->point:Lorg/apache/commons/math3/linear/RealVector;

    .line 508
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->target:Lorg/apache/commons/math3/linear/RealVector;

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;
    .param p2, "x1"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x2"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x3"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;

    .prologue
    .line 486
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method


# virtual methods
.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->model:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->point:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;->computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->point:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->target:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->model:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;->point:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;->computeValue([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
