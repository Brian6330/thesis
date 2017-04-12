.class public Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorMultiStartOptimizer;
.super Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;
.source "DifferentiableMultivariateVectorMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer",
        "<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 0
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    .line 52
    return-void
.end method
