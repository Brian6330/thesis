.class public interface abstract Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
.super Ljava/lang/Object;
.source "StorelessUnivariateStatistic.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
.end method

.method public abstract getN()J
.end method

.method public abstract getResult()D
.end method

.method public abstract increment(D)V
.end method

.method public abstract incrementAll([D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract incrementAll([DII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation
.end method
