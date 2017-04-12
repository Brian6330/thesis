.class public Lorg/apache/commons/math3/distribution/WeibullDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "WeibullDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x77342d30e8d1c6e4L


# instance fields
.field private numericalMean:D

.field private numericalMeanIsCalculated:Z

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 79
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(DDD)V

    .line 80
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "inverseCumAccuracy"    # D

    .prologue
    .line 104
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 118
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    const-wide/16 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 53
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMean:D

    .line 55
    iput-boolean v4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMeanIsCalculated:Z

    .line 57
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVariance:D

    .line 59
    iput-boolean v4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVarianceIsCalculated:Z

    .line 140
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 141
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 144
    :cond_0
    cmpg-double v0, p4, v2

    if-gtz v0, :cond_1

    .line 145
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 148
    :cond_1
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    .line 149
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    .line 150
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->solverAbsoluteAccuracy:D

    .line 151
    return-void
.end method


# virtual methods
.method protected calculateNumericalMean()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getShape()D

    move-result-wide v2

    .line 275
    .local v2, "sh":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getScale()D

    move-result-wide v0

    .line 277
    .local v0, "sc":D
    div-double v4, v6, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method protected calculateNumericalVariance()D
    .locals 12

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getShape()D

    move-result-wide v4

    .line 301
    .local v4, "sh":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getScale()D

    move-result-wide v2

    .line 302
    .local v2, "sc":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getNumericalMean()D

    move-result-wide v0

    .line 304
    .local v0, "mn":D
    mul-double v6, v2, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    mul-double v8, v0, v0

    sub-double/2addr v6, v8

    return-wide v6
.end method

.method public cumulativeProbability(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 213
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    .line 214
    const-wide/16 v0, 0x0

    .line 218
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 216
    .end local v0    # "ret":D
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double v4, p1, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    sub-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0
.end method

.method public density(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 173
    cmpg-double v8, p1, v6

    if-gez v8, :cond_0

    .line 187
    :goto_0
    return-wide v6

    .line 177
    :cond_0
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double v0, p1, v6

    .line 178
    .local v0, "xscale":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    .line 185
    .local v2, "xscalepow":D
    mul-double v4, v2, v0

    .line 187
    .local v4, "xscalepowshape":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr v6, v8

    mul-double/2addr v6, v2

    neg-double v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMeanIsCalculated:Z

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->calculateNumericalMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMean:D

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMeanIsCalculated:Z

    .line 265
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMean:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVariance:D

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVarianceIsCalculated:Z

    .line 291
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 316
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 329
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 11
    .param p1, "p"    # D

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 230
    cmpg-double v2, p1, v4

    if-ltz v2, :cond_0

    cmpl-double v2, p1, v8

    if-lez v2, :cond_1

    .line 231
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 232
    :cond_1
    cmpl-double v2, p1, v4

    if-nez v2, :cond_2

    .line 233
    const-wide/16 v0, 0x0

    .line 239
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 234
    .end local v0    # "ret":D
    :cond_2
    cmpl-double v2, p1, v8

    if-nez v2, :cond_3

    .line 235
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .restart local v0    # "ret":D
    goto :goto_0

    .line 237
    .end local v0    # "ret":D
    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    neg-double v4, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    div-double v6, v8, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 13
    .param p1, "x"    # D

    .prologue
    .line 193
    const-wide/16 v6, 0x0

    cmpg-double v6, p1, v6

    if-gez v6, :cond_0

    .line 194
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 207
    :goto_0
    return-wide v6

    .line 197
    :cond_0
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double v2, p1, v6

    .line 198
    .local v2, "xscale":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    mul-double v0, v6, v8

    .line 205
    .local v0, "logxscalepow":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    mul-double v4, v6, v2

    .line 207
    .local v4, "xscalepowshape":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    add-double/2addr v6, v0

    sub-double/2addr v6, v4

    goto :goto_0
.end method
