.class public interface abstract Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;
.super Ljava/lang/Object;
.source "BaseUnivariateSolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAbsoluteAccuracy()D
.end method

.method public abstract getEvaluations()I
.end method

.method public abstract getFunctionValueAccuracy()D
.end method

.method public abstract getMaxEvaluations()I
.end method

.method public abstract getRelativeAccuracy()D
.end method

.method public abstract solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;D)D"
        }
    .end annotation
.end method

.method public abstract solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DD)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation
.end method

.method public abstract solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation
.end method
