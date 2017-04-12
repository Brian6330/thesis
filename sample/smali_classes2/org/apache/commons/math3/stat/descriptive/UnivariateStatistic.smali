.class public interface abstract Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
.super Ljava/lang/Object;
.source "UnivariateStatistic.java"

# interfaces
.implements Lorg/apache/commons/math3/util/MathArrays$Function;


# virtual methods
.method public abstract copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
.end method

.method public abstract evaluate([D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract evaluate([DII)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation
.end method
