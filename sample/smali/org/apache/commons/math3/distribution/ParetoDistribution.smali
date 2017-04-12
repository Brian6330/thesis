.class public Lorg/apache/commons/math3/distribution/ParetoDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ParetoDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x1332a78L


# instance fields
.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 70
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(DD)V

    .line 71
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
    .line 89
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(DDD)V

    .line 90
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
    .line 110
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 111
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
    .line 123
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 4
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
    const-wide/16 v2, 0x0

    .line 140
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 142
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 143
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 146
    :cond_0
    cmpg-double v0, p4, v2

    if-gtz v0, :cond_1

    .line 147
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 150
    :cond_1
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    .line 151
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    .line 152
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->solverAbsoluteAccuracy:D

    .line 153
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 213
    const-wide/16 v0, 0x0

    .line 215
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    div-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

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
    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/ParetoDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public density(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    .line 187
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 246
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 247
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 249
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getNumericalVariance()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 262
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_0

    .line 263
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 266
    :goto_0
    return-wide v2

    .line 265
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v4

    .line 266
    .local v0, "s":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v2, v4

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 288
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 197
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 199
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public sample()D
    .locals 8

    .prologue
    .line 315
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 316
    .local v0, "n":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    return-wide v2
.end method
