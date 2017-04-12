.class public Lorg/apache/commons/math3/distribution/ConstantRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ConstantRealDistribution.java"


# static fields
.field private static final serialVersionUID:J = -0x39b34733540b89c1L


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 42
    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    .line 43
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public density(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 5
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 61
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 0
    .param p1, "seed"    # J

    .prologue
    .line 120
    return-void
.end method

.method public sample()D
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method
