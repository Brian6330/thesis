.class Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;
.super Ljava/lang/Object;
.source "LeastSquaresFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalValueAndJacobianFunction"
.end annotation


# instance fields
.field private final jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

.field private final value:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "jacobian"    # Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;->value:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 320
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;->jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .line 321
    return-void
.end method


# virtual methods
.method public computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3
    .param p1, "params"    # [D

    .prologue
    .line 340
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;->jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public computeValue([D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3
    .param p1, "params"    # [D

    .prologue
    .line 335
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;->value:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 4
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ")",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    .line 329
    .local v0, "p":[D
    new-instance v1, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;->computeValue([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalValueAndJacobianFunction;->computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
