.class public interface abstract Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;
.super Ljava/lang/Object;
.source "MultivariateRealDistribution.java"


# virtual methods
.method public abstract density([D)D
.end method

.method public abstract getDimension()I
.end method

.method public abstract reseedRandomGenerator(J)V
.end method

.method public abstract sample()[D
.end method

.method public abstract sample(I)[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation
.end method
