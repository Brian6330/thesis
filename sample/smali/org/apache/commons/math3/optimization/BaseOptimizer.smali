.class public interface abstract Lorg/apache/commons/math3/optimization/BaseOptimizer;
.super Ljava/lang/Object;
.source "BaseOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<TPAIR;>;"
        }
    .end annotation
.end method

.method public abstract getEvaluations()I
.end method

.method public abstract getMaxEvaluations()I
.end method
