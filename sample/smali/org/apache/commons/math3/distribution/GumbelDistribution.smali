.class public Lorg/apache/commons/math3/distribution/GumbelDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "GumbelDistribution.java"


# static fields
.field private static final EULER:D = 0.5778636748954609

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
    .line 66
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/GumbelDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 4
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "beta"    # D

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 80
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 84
    :cond_0
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    .line 85
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    .line 86
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 115
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    sub-double v2, p1, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double v0, v2, v4

    .line 116
    .local v0, "z":D
    neg-double v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public density(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 108
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    sub-double v4, p1, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double v2, v4, v6

    .line 109
    .local v2, "z":D
    neg-double v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    .line 110
    .local v0, "t":D
    neg-double v4, v2

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getLocation()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    const-wide v2, 0x3fe27ddbf6271dbeL    # 0.5778636748954609

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .prologue
    .line 138
    const-wide v0, 0x3ffa51a6625307d3L    # 1.6449340668482264

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 143
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 148
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

    const-wide/16 v2, 0x0

    .line 121
    cmpg-double v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v4

    if-lez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 123
    :cond_1
    cmpl-double v0, p1, v2

    if-nez v0, :cond_2

    .line 124
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 128
    :goto_0
    return-wide v0

    .line 125
    :cond_2
    cmpl-double v0, p1, v4

    if-nez v0, :cond_3

    .line 126
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 128
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method
