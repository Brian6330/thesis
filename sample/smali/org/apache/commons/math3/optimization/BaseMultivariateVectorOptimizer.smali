.class public interface abstract Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateVectorOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseOptimizer",
        "<",
        "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
