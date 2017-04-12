.class public Lorg/apache/commons/math3/distribution/LogNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LogNormalDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final SQRT2:D

.field private static final SQRT2PI:D

.field private static final serialVersionUID:J = 0x1330230L


# instance fields
.field private final logShapePlusHalfLog2Pi:D

.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2PI:D

    .line 66
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(DD)V

    .line 95
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
    .param p1, "scale"    # D
    .param p3, "shape"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 113
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(DDD)V

    .line 114
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "scale"    # D
    .param p3, "shape"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "scale"    # D
    .param p4, "shape"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 148
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "scale"    # D
    .param p4, "shape"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 168
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 169
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 172
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    .line 173
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 174
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->logShapePlusHalfLog2Pi:D

    .line 175
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->solverAbsoluteAccuracy:D

    .line 176
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 13
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    .line 247
    cmpg-double v4, p1, v2

    if-gtz v4, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-wide v2

    .line 250
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double v0, v4, v6

    .line 251
    .local v0, "dev":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 252
    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 254
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v4, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    mul-double/2addr v2, v4

    div-double v2, v0, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Erf;->erf(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v10

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
    .line 265
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public density(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 208
    cmpg-double v6, p1, v4

    if-gtz v6, :cond_0

    .line 213
    :goto_0
    return-wide v4

    .line 211
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double v0, v4, v6

    .line 212
    .local v0, "x0":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    div-double v2, v0, v4

    .line 213
    .local v2, "x1":D
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v8, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2PI:D

    mul-double/2addr v6, v8

    mul-double/2addr v6, p1

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 8

    .prologue
    .line 299
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 300
    .local v0, "s":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    mul-double v4, v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 10

    .prologue
    .line 310
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 311
    .local v0, "s":D
    mul-double v2, v0, v0

    .line 312
    .local v2, "ss":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 323
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 336
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    .line 222
    const-wide/16 v6, 0x0

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_0

    .line 223
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 228
    :goto_0
    return-wide v6

    .line 225
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 226
    .local v0, "logX":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double v2, v0, v6

    .line 227
    .local v2, "x0":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    div-double v4, v2, v6

    .line 228
    .local v4, "x1":D
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->logShapePlusHalfLog2Pi:D

    add-double/2addr v8, v0

    sub-double/2addr v6, v8

    goto :goto_0
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
    const-wide/16 v8, 0x0

    .line 273
    cmpl-double v6, p1, p3

    if-lez v6, :cond_0

    .line 274
    new-instance v6, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v6

    .line 277
    :cond_0
    cmpg-double v6, p1, v8

    if-lez v6, :cond_1

    cmpg-double v6, p3, v8

    if-gtz v6, :cond_2

    .line 278
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide v6

    .line 283
    :goto_0
    return-wide v6

    .line 280
    :cond_2
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v8, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    mul-double v0, v6, v8

    .line 281
    .local v0, "denom":D
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v6, v8

    div-double v2, v6, v0

    .line 282
    .local v2, "v0":D
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v6, v8

    div-double v4, v6, v0

    .line 283
    .local v4, "v1":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/special/Erf;->erf(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    goto :goto_0
.end method

.method public sample()D
    .locals 6

    .prologue
    .line 363
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    .line 364
    .local v0, "n":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method
