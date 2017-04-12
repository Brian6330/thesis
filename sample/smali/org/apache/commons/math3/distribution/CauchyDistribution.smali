.class public Lorg/apache/commons/math3/distribution/CauchyDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "CauchyDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x77342d30e8d1c6e4L


# instance fields
.field private final median:D

.field private final scale:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(DD)V

    .line 54
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
    .param p1, "median"    # D
    .param p3, "scale"    # D

    .prologue
    .line 70
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(DDD)V

    .line 71
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "median"    # D
    .param p3, "scale"    # D
    .param p5, "inverseCumAccuracy"    # D

    .prologue
    .line 93
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "median"    # D
    .param p4, "scale"    # D

    .prologue
    .line 106
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 4
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "median"    # D
    .param p4, "scale"    # D
    .param p6, "inverseCumAccuracy"    # D

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 126
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 127
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 129
    :cond_0
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    .line 130
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    .line 131
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->solverAbsoluteAccuracy:D

    .line 132
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 136
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    sub-double v2, p1, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public density(D)D
    .locals 13
    .param p1, "x"    # D

    .prologue
    .line 159
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    sub-double v0, p1, v2

    .line 160
    .local v0, "dev":D
    const-wide v2, 0x3fd45f306dc9c883L    # 0.3183098861837907

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    mul-double v6, v0, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getMedian()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 198
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 209
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 221
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 233
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
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 172
    cmpg-double v2, p1, v4

    if-ltz v2, :cond_0

    cmpl-double v2, p1, v6

    if-lez v2, :cond_1

    .line 173
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

    .line 174
    :cond_1
    cmpl-double v2, p1, v4

    if-nez v2, :cond_2

    .line 175
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 181
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 176
    .end local v0    # "ret":D
    :cond_2
    cmpl-double v2, p1, v6

    if-nez v2, :cond_3

    .line 177
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .restart local v0    # "ret":D
    goto :goto_0

    .line 179
    .end local v0    # "ret":D
    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double v8, p1, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method
