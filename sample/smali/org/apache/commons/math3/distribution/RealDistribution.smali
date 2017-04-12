.class public interface abstract Lorg/apache/commons/math3/distribution/RealDistribution;
.super Ljava/lang/Object;
.source "RealDistribution.java"


# virtual methods
.method public abstract cumulativeProbability(D)D
.end method

.method public abstract cumulativeProbability(DD)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract density(D)D
.end method

.method public abstract getNumericalMean()D
.end method

.method public abstract getNumericalVariance()D
.end method

.method public abstract getSupportLowerBound()D
.end method

.method public abstract getSupportUpperBound()D
.end method

.method public abstract inverseCumulativeProbability(D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public abstract isSupportConnected()Z
.end method

.method public abstract isSupportLowerBoundInclusive()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSupportUpperBoundInclusive()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract probability(D)D
.end method

.method public abstract reseedRandomGenerator(J)V
.end method

.method public abstract sample()D
.end method

.method public abstract sample(I)[D
.end method
