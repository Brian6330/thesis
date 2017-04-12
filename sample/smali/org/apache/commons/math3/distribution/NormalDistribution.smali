.class public Lorg/apache/commons/math3/distribution/NormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "NormalDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final SQRT2:D

.field private static final serialVersionUID:J = 0x77342d30e8d1c6e4L


# instance fields
.field private final logStandardDeviationPlusHalfLog2Pi:D

.field private final mean:D

.field private final solverAbsoluteAccuracy:D

.field private final standardDeviation:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(DD)V

    .line 67
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
    .param p1, "mean"    # D
    .param p3, "sd"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 85
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(DDD)V

    .line 86
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "mean"    # D
    .param p3, "sd"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mean"    # D
    .param p4, "sd"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 121
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mean"    # D
    .param p4, "sd"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 141
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 142
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->STANDARD_DEVIATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 145
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    .line 146
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    .line 147
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->logStandardDeviationPlusHalfLog2Pi:D

    .line 148
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->solverAbsoluteAccuracy:D

    .line 149
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 13
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 190
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double v0, p1, v6

    .line 191
    .local v0, "dev":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    mul-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 192
    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    .line 194
    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v4

    .line 192
    goto :goto_0

    .line 194
    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    sget-wide v8, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    mul-double/2addr v6, v8

    div-double v6, v0, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Erf;->erf(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public cumulativeProbability(DD)D
    .locals 3
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/NormalDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public density(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->logDensity(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/NormalDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/NormalDistribution;->getStandardDeviation()D

    move-result-wide v0

    .line 256
    .local v0, "s":D
    mul-double v2, v0, v0

    return-wide v2
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 269
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 282
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
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 202
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v6

    if-lez v0, :cond_1

    .line 203
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

    .line 205
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    sget-wide v4, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p1

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Erf;->erfInv(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 177
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double v0, p1, v4

    .line 178
    .local v0, "x0":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    div-double v2, v0, v4

    .line 179
    .local v2, "x1":D
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->logStandardDeviationPlusHalfLog2Pi:D

    sub-double/2addr v4, v6

    return-wide v4
.end method

.method public probability(DD)D
    .locals 11
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 224
    cmpl-double v6, p1, p3

    if-lez v6, :cond_0

    .line 225
    new-instance v6, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v6

    .line 228
    :cond_0
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    sget-wide v8, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    mul-double v0, v6, v8

    .line 229
    .local v0, "denom":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double v6, p1, v6

    div-double v2, v6, v0

    .line 230
    .local v2, "v0":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double v6, p3, v6

    div-double v4, v6, v0

    .line 231
    .local v4, "v1":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/special/Erf;->erf(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public sample()D
    .locals 4

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    iget-object v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    add-double/2addr v0, v2

    return-wide v0
.end method
