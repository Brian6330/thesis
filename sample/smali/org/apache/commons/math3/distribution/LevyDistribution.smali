.class public Lorg/apache/commons/math3/distribution/LevyDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LevyDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a0aL


# instance fields
.field private final c:D

.field private final halfC:D

.field private final mu:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "mu"    # D
    .param p3, "c"    # D

    .prologue
    .line 60
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/LevyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "c"    # D

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 71
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    .line 72
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->c:D

    .line 73
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p4

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    .line 74
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 125
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 127
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    sub-double v2, p1, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Erf;->erfc(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public density(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 91
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 92
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 97
    :goto_0
    return-wide v4

    .line 95
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    sub-double v0, p1, v4

    .line 96
    .local v0, "delta":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    div-double v2, v4, v0

    .line 97
    .local v2, "f":D
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double v4, v2, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    neg-double v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v0

    goto :goto_0
.end method

.method public getLocation()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 156
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 161
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->c:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 171
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 9
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 133
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 134
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 136
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/special/Erf;->erfcInv(D)D

    move-result-wide v0

    .line 137
    .local v0, "t":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    mul-double v6, v0, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    return-wide v2
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 106
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 107
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 112
    :goto_0
    return-wide v4

    .line 110
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    sub-double v0, p1, v4

    .line 111
    .local v0, "delta":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    div-double v2, v4, v0

    .line 112
    .local v2, "f":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v6, v2, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v4, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    goto :goto_0
.end method
