.class public interface abstract Lorg/apache/commons/math3/analysis/integration/UnivariateIntegrator;
.super Ljava/lang/Object;
.source "UnivariateIntegrator.java"


# virtual methods
.method public abstract getAbsoluteAccuracy()D
.end method

.method public abstract getEvaluations()I
.end method

.method public abstract getIterations()I
.end method

.method public abstract getMaximalIterationCount()I
.end method

.method public abstract getMinimalIterationCount()I
.end method

.method public abstract getRelativeAccuracy()D
.end method

.method public abstract integrate(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation
.end method
