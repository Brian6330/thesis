.class public Lorg/apache/commons/math3/distribution/LogisticDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LogisticDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final mu:D

.field private final s:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "mu"    # D
    .param p3, "s"    # D

    .prologue
    .line 60
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/LogisticDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 4
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "s"    # D

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 74
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 75
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 78
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    .line 79
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    .line 80
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 109
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    div-double v2, v6, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    sub-double v4, p1, v4

    mul-double v0, v2, v4

    .line 110
    .local v0, "z":D
    neg-double v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    add-double/2addr v2, v6

    div-double v2, v6, v2

    return-wide v2
.end method

.method public density(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 102
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    sub-double v4, p1, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    div-double v2, v4, v6

    .line 103
    .local v2, "z":D
    neg-double v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    .line 104
    .local v0, "v":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    div-double v4, v8, v4

    mul-double/2addr v4, v0

    add-double v6, v8, v0

    add-double/2addr v8, v0

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getLocation()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    .prologue
    .line 132
    const-wide v0, 0x400a51a6625307d3L    # 3.289868133696453

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 137
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 142
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 7
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 115
    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    cmpl-double v2, p1, v4

    if-lez v2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 117
    :cond_1
    cmpl-double v2, p1, v0

    if-nez v2, :cond_2

    .line 122
    :goto_0
    return-wide v0

    .line 119
    :cond_2
    cmpl-double v0, p1, v4

    if-nez v0, :cond_3

    .line 120
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 122
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    sub-double v2, v4, p1

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method
