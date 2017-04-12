.class public interface abstract Lorg/apache/commons/math3/distribution/IntegerDistribution;
.super Ljava/lang/Object;
.source "IntegerDistribution.java"


# virtual methods
.method public abstract cumulativeProbability(I)D
.end method

.method public abstract cumulativeProbability(II)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation
.end method

.method public abstract getNumericalMean()D
.end method

.method public abstract getNumericalVariance()D
.end method

.method public abstract getSupportLowerBound()I
.end method

.method public abstract getSupportUpperBound()I
.end method

.method public abstract inverseCumulativeProbability(D)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public abstract isSupportConnected()Z
.end method

.method public abstract probability(I)D
.end method

.method public abstract reseedRandomGenerator(J)V
.end method

.method public abstract sample()I
.end method

.method public abstract sample(I)[I
.end method
