.class final enum Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$4;
.super Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;)V

    return-void
.end method


# virtual methods
.method protected solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "residuals"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 137
    new-instance v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
