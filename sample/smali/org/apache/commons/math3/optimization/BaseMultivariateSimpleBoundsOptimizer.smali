.class public interface abstract Lorg/apache/commons/math3/optimization/BaseMultivariateSimpleBoundsOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateSimpleBoundsOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer",
        "<TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D[D[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation
.end method
