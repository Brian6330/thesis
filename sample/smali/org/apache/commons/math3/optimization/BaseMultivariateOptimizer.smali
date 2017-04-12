.class public interface abstract Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseOptimizer",
        "<",
        "Lorg/apache/commons/math3/optimization/PointValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
