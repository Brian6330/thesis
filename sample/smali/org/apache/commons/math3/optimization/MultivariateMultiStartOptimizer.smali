.class public Lorg/apache/commons/math3/optimization/MultivariateMultiStartOptimizer;
.super Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;
.source "MultivariateMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer",
        "<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/MultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 0
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optimization/MultivariateOptimizer;
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    .line 51
    return-void
.end method
