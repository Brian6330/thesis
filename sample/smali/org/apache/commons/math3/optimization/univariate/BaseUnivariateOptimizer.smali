.class public interface abstract Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;
.super Ljava/lang/Object;
.source "BaseUnivariateOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseOptimizer",
        "<",
        "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation
.end method

.method public abstract optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DDD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation
.end method
