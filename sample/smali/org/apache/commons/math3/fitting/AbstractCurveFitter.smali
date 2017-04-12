.class public abstract Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.super Ljava/lang/Object;
.source "AbstractCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public fit(Ljava/util/Collection;)[D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->getOptimizer()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;->optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method protected getOptimizer()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    invoke-direct {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>()V

    return-object v0
.end method

.method protected abstract getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
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
.end method
