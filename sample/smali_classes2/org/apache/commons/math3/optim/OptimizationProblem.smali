.class public interface abstract Lorg/apache/commons/math3/optim/OptimizationProblem;
.super Ljava/lang/Object;
.source "OptimizationProblem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<TPAIR;>;"
        }
    .end annotation
.end method

.method public abstract getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;
.end method

.method public abstract getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;
.end method
