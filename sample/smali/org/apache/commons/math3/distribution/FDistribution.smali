.class public Lorg/apache/commons/math3/distribution/FDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "FDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x76302b047020609eL


# instance fields
.field private final denominatorDegreesOfFreedom:D

.field private final numeratorDegreesOfFreedom:D

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "numeratorDegreesOfFreedom"    # D
    .param p3, "denominatorDegreesOfFreedom"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 71
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DDD)V

    .line 73
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "numeratorDegreesOfFreedom"    # D
    .param p3, "denominatorDegreesOfFreedom"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "numeratorDegreesOfFreedom"    # D
    .param p4, "denominatorDegreesOfFreedom"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 117
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 4
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "numeratorDegreesOfFreedom"    # D
    .param p4, "denominatorDegreesOfFreedom"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    .line 139
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 140
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 143
    :cond_0
    cmpg-double v0, p4, v2

    if-gtz v0, :cond_1

    .line 144
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 147
    :cond_1
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    .line 148
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    .line 149
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/FDistribution;->solverAbsoluteAccuracy:D

    .line 150
    return-void
.end method


# virtual methods
.method protected calculateNumericalVariance()D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getDenominatorDegreesOfFreedom()D

    move-result-wide v2

    .line 274
    .local v2, "denominatorDF":D
    cmpl-double v6, v2, v12

    if-lez v6, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getNumeratorDegreesOfFreedom()D

    move-result-wide v4

    .line 276
    .local v4, "numeratorDF":D
    sub-double v0, v2, v10

    .line 278
    .local v0, "denomDFMinusTwo":D
    mul-double v6, v2, v2

    mul-double/2addr v6, v10

    add-double v8, v4, v2

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    mul-double v8, v0, v0

    mul-double/2addr v8, v4

    sub-double v10, v2, v12

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 282
    .end local v0    # "denomDFMinusTwo":D
    .end local v4    # "numeratorDF":D
    :goto_0
    return-wide v6

    :cond_0
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public cumulativeProbability(D)D
    .locals 13
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 189
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 190
    const-wide/16 v10, 0x0

    .line 199
    .local v10, "ret":D
    :goto_0
    return-wide v10

    .line 192
    .end local v10    # "ret":D
    :cond_0
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    .line 193
    .local v8, "n":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    .line 195
    .local v6, "m":D
    mul-double v0, v8, p1

    mul-double v2, v8, p1

    add-double/2addr v2, v6

    div-double/2addr v0, v2

    mul-double v2, v4, v8

    mul-double/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v10

    .restart local v10    # "ret":D
    goto :goto_0
.end method

.method public density(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/FDistribution;->logDensity(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDenominatorDegreesOfFreedom()D
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    return-wide v0
.end method

.method public getNumeratorDegreesOfFreedom()D
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getDenominatorDegreesOfFreedom()D

    move-result-wide v0

    .line 238
    .local v0, "denominatorDF":D
    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 239
    sub-double v2, v0, v4

    div-double v2, v0, v2

    .line 242
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    .line 263
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 305
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 19
    .param p1, "x"    # D

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v12, v14, v16

    .line 165
    .local v12, "nhalf":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v10, v14, v16

    .line 166
    .local v10, "mhalf":D
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    .line 167
    .local v8, "logx":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    .line 168
    .local v4, "logn":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 169
    .local v2, "logm":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    mul-double v14, v14, p1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    .line 171
    .local v6, "lognxm":D
    mul-double v14, v12, v4

    mul-double v16, v12, v8

    add-double v14, v14, v16

    sub-double/2addr v14, v8

    mul-double v16, v10, v2

    add-double v14, v14, v16

    mul-double v16, v12, v6

    sub-double v14, v14, v16

    mul-double v16, v10, v6

    sub-double v14, v14, v16

    invoke-static {v12, v13, v10, v11}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    return-wide v14
.end method
