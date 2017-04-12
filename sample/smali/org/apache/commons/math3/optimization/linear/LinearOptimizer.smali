.class public interface abstract Lorg/apache/commons/math3/optimization/linear/LinearOptimizer;
.super Ljava/lang/Object;
.source "LinearOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getIterations()I
.end method

.method public abstract getMaxIterations()I
.end method

.method public abstract optimize(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;Z)Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "Z)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation
.end method

.method public abstract setMaxIterations(I)V
.end method
