.class public Lorg/apache/commons/math3/distribution/LaplaceDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LaplaceDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final beta:D

.field private final mu:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "mu"    # D
    .param p3, "beta"    # D

    .prologue
    .line 58
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/LaplaceDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 4
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "beta"    # D

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 72
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 73
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 76
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    .line 77
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    .line 78
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 105
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    div-double/2addr v0, v6

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    sub-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    div-double/2addr v2, v6

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public density(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLocation()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .prologue
    .line 132
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

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
    .locals 11
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 114
    cmpg-double v2, p1, v4

    if-ltz v2, :cond_0

    cmpl-double v2, p1, v6

    if-lez v2, :cond_1

    .line 115
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 116
    :cond_1
    cmpl-double v2, p1, v4

    if-nez v2, :cond_2

    .line 117
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 122
    :goto_0
    return-wide v2

    .line 118
    :cond_2
    cmpl-double v2, p1, v6

    if-nez v2, :cond_3

    .line 119
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 121
    :cond_3
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p1, v2

    if-lez v2, :cond_4

    mul-double v2, v8, p1

    sub-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    neg-double v0, v2

    .line 122
    .local v0, "x":D
    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    goto :goto_0

    .line 121
    .end local v0    # "x":D
    :cond_4
    mul-double v2, v8, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_1
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
