.class public Lorg/apache/commons/math3/distribution/GammaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "GammaDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x13303ccL


# instance fields
.field private final densityPrefactor1:D

.field private final densityPrefactor2:D

.field private final logDensityPrefactor1:D

.field private final logDensityPrefactor2:D

.field private final maxLogY:D

.field private final minY:D

.field private final scale:D

.field private final shape:D

.field private final shiftedShape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 117
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(DDD)V

    .line 118
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "shape"    # D
    .param p4, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 157
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "shape"    # D
    .param p4, "scale"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 180
    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gtz v2, :cond_0

    .line 181
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 183
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p4, v2

    if-gtz v2, :cond_1

    .line 184
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 187
    :cond_1
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    .line 188
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    .line 189
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->solverAbsoluteAccuracy:D

    .line 190
    const-wide v2, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    .line 191
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    mul-double/2addr v4, v6

    div-double v0, v2, v4

    .line 192
    .local v0, "aux":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    invoke-static {p2, p3}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    .line 193
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {p2, p3}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    .line 195
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    div-double/2addr v2, p4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    neg-double v6, p2

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v4, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor1:D

    .line 198
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, p2

    sub-double/2addr v2, v4

    add-double/2addr v2, p2

    const-wide v4, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor1:D

    .line 201
    const-wide v2, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v2, p2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    .line 202
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, p2, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    .line 203
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 352
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    .line 353
    const-wide/16 v0, 0x0

    .line 358
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 355
    .end local v0    # "ret":D
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DD)D

    move-result-wide v0

    .restart local v0    # "ret":D
    goto :goto_0
.end method

.method public density(D)D
    .locals 15
    .param p1, "x"    # D

    .prologue
    .line 289
    const-wide/16 v8, 0x0

    cmpg-double v8, p1, v8

    if-gez v8, :cond_0

    .line 290
    const-wide/16 v8, 0x0

    .line 306
    :goto_0
    return-wide v8

    .line 292
    :cond_0
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v6, p1, v8

    .line 293
    .local v6, "y":D
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    cmpg-double v8, v6, v8

    if-lez v8, :cond_1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 297
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    sub-double v8, v6, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double v0, v8, v10

    .line 298
    .local v0, "aux1":D
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v10

    sub-double/2addr v10, v0

    mul-double v2, v8, v10

    .line 299
    .local v2, "aux2":D
    neg-double v8, v6

    const-wide v10, 0x4014f80000000000L    # 5.2421875

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v8, v10

    const-wide v10, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v8, v10

    add-double v4, v8, v2

    .line 301
    .local v4, "aux3":D
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    div-double v8, v8, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    goto :goto_0

    .line 306
    .end local v0    # "aux1":D
    .end local v2    # "aux2":D
    .end local v4    # "aux3":D
    :cond_2
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor1:D

    neg-double v10, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    invoke-static {v6, v7, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    goto :goto_0
.end method

.method public getAlpha()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .prologue
    .line 374
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .prologue
    .line 386
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 409
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 19
    .param p1, "x"    # D

    .prologue
    .line 315
    const-wide/16 v10, 0x0

    cmpg-double v10, p1, v10

    if-gez v10, :cond_0

    .line 316
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 332
    :goto_0
    return-wide v10

    .line 318
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v8, p1, v10

    .line 319
    .local v8, "y":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    cmpg-double v10, v8, v10

    if-lez v10, :cond_1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_2

    .line 323
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    sub-double v10, v8, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double v2, v10, v12

    .line 324
    .local v2, "aux1":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v12

    sub-double/2addr v12, v2

    mul-double v4, v10, v12

    .line 325
    .local v4, "aux2":D
    neg-double v10, v8

    const-wide v12, 0x4014f80000000000L    # 5.2421875

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v10, v12

    const-wide v12, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v10, v12

    add-double v6, v10, v4

    .line 327
    .local v6, "aux3":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    add-double/2addr v10, v6

    goto :goto_0

    .line 332
    .end local v2    # "aux1":D
    .end local v4    # "aux2":D
    .end local v6    # "aux3":D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor1:D

    sub-double/2addr v10, v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    goto :goto_0
.end method

.method public sample()D
    .locals 30

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_2

    .line 455
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v12

    .line 456
    .local v12, "u":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    move-wide/from16 v24, v0

    const-wide v26, 0x4005bf0a8b145769L    # Math.E

    div-double v24, v24, v26

    add-double v4, v22, v24

    .line 457
    .local v4, "bGS":D
    mul-double v10, v4, v12

    .line 459
    .local v10, "p":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v22, v10, v22

    if-gtz v22, :cond_1

    .line 462
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v10, v11, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v18

    .line 463
    .local v18, "x":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v14

    .line 465
    .local v14, "u2":D
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v22

    cmpl-double v22, v14, v22

    if-gtz v22, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    .line 509
    .end local v4    # "bGS":D
    .end local v10    # "p":D
    .end local v14    # "u2":D
    :goto_0
    return-wide v22

    .line 474
    .end local v18    # "x":D
    .restart local v4    # "bGS":D
    .restart local v10    # "p":D
    :cond_1
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    sub-double v24, v4, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v24

    mul-double v18, v22, v24

    .line 475
    .restart local v18    # "x":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v14

    .line 477
    .restart local v14    # "u2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v24

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v22

    cmpl-double v22, v14, v22

    if-gtz v22, :cond_0

    .line 481
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    goto :goto_0

    .line 489
    .end local v4    # "bGS":D
    .end local v10    # "p":D
    .end local v12    # "u":D
    .end local v14    # "u2":D
    .end local v18    # "x":D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v8, v22, v24

    .line 490
    .local v8, "d":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    div-double v6, v22, v24

    .line 493
    .local v6, "c":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v18

    .line 494
    .restart local v18    # "x":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v24, v6, v18

    add-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v26, v6, v18

    add-double v24, v24, v26

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v26, v6, v18

    add-double v24, v24, v26

    mul-double v16, v22, v24

    .line 496
    .local v16, "v":D
    const-wide/16 v22, 0x0

    cmpg-double v22, v16, v22

    if-lez v22, :cond_3

    .line 500
    mul-double v20, v18, v18

    .line 501
    .local v20, "x2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v12

    .line 504
    .restart local v12    # "u":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide v24, 0x3fa0f27bb2fec56dL    # 0.0331

    mul-double v24, v24, v20

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    cmpg-double v22, v12, v22

    if-gez v22, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v8

    mul-double v22, v22, v16

    goto/16 :goto_0

    .line 508
    :cond_4
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v20

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    add-double v26, v26, v28

    mul-double v26, v26, v8

    add-double v24, v24, v26

    cmpg-double v22, v22, v24

    if-gez v22, :cond_3

    .line 509
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v8

    mul-double v22, v22, v16

    goto/16 :goto_0
.end method
