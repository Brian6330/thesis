.class public Lorg/apache/commons/math3/distribution/HypergeometricDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "HypergeometricDistribution.java"


# static fields
.field private static final serialVersionUID:J = -0x61048728c601293L


# instance fields
.field private final numberOfSuccesses:I

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final populationSize:I

.field private final sampleSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "populationSize"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V
    .locals 5
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "populationSize"    # I
    .param p3, "numberOfSuccesses"    # I
    .param p4, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 44
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    .line 92
    if-gtz p2, :cond_0

    .line 93
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 96
    :cond_0
    if-gez p3, :cond_1

    .line 97
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 100
    :cond_1
    if-gez p4, :cond_2

    .line 101
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 105
    :cond_2
    if-le p3, p2, :cond_3

    .line 106
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 109
    :cond_3
    if-le p4, p2, :cond_4

    .line 110
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SAMPLE_SIZE_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 114
    :cond_4
    iput p3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    .line 115
    iput p2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    .line 116
    iput p4, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    .line 117
    return-void
.end method

.method private getDomain(III)[I
    .locals 3
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "k"    # I

    .prologue
    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getLowerDomain(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getUpperDomain(II)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method private getLowerDomain(III)I
    .locals 2
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "k"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    sub-int v1, p1, p3

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    return v0
.end method

.method private getUpperDomain(II)I
    .locals 1
    .param p1, "m"    # I
    .param p2, "k"    # I

    .prologue
    .line 197
    invoke-static {p2, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    return v0
.end method

.method private innerCumulativeProbability(III)D
    .locals 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "dx"    # I

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->probability(I)D

    move-result-wide v0

    .line 267
    .local v0, "ret":D
    :goto_0
    if-eq p1, p2, :cond_0

    .line 268
    add-int/2addr p1, p3

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->probability(I)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 271
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected calculateNumericalVariance()D
    .locals 12

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v6

    int-to-double v0, v6

    .line 306
    .local v0, "N":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v6

    int-to-double v2, v6

    .line 307
    .local v2, "m":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v6

    int-to-double v4, v6

    .line 308
    .local v4, "n":D
    mul-double v6, v4, v2

    sub-double v8, v0, v4

    mul-double/2addr v6, v8

    sub-double v8, v0, v2

    mul-double/2addr v6, v8

    mul-double v8, v0, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v0, v10

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    return-wide v6
.end method

.method public cumulativeProbability(I)D
    .locals 8
    .param p1, "x"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v4, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v5, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    .line 124
    .local v0, "domain":[I
    aget v1, v0, v6

    if-ge p1, v1, :cond_0

    .line 125
    const-wide/16 v2, 0x0

    .line 132
    .local v2, "ret":D
    :goto_0
    return-wide v2

    .line 126
    .end local v2    # "ret":D
    :cond_0
    aget v1, v0, v7

    if-lt p1, v1, :cond_1

    .line 127
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .restart local v2    # "ret":D
    goto :goto_0

    .line 129
    .end local v2    # "ret":D
    :cond_1
    aget v1, v0, v6

    invoke-direct {p0, v1, p1, v7}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->innerCumulativeProbability(III)D

    move-result-wide v2

    .restart local v2    # "ret":D
    goto :goto_0
.end method

.method public getNumberOfSuccesses()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    .line 296
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getPopulationSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    return v0
.end method

.method public getSupportLowerBound()I
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 20
    .param p1, "x"    # I

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v8

    .line 212
    .local v8, "domain":[I
    const/4 v2, 0x0

    aget v2, v8, v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    aget v2, v8, v2

    move/from16 v0, p1

    if-le v0, v2, :cond_1

    .line 213
    :cond_0
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 227
    .local v16, "ret":D
    :goto_0
    return-wide v16

    .line 215
    .end local v16    # "ret":D
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v4, v2, v18

    .line 216
    .local v4, "p":D
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v6, v2, v18

    .line 217
    .local v6, "q":D
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    move/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v10

    .line 219
    .local v10, "p1":D
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    sub-int/2addr v3, v9

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v12

    .line 222
    .local v12, "p2":D
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v14

    .line 224
    .local v14, "p3":D
    add-double v2, v10, v12

    sub-double v16, v2, v14

    .restart local v16    # "ret":D
    goto :goto_0
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->logProbability(I)D

    move-result-wide v0

    .line 203
    .local v0, "logProbability":D
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public upperCumulativeProbability(I)D
    .locals 7
    .param p1, "x"    # I

    .prologue
    const/4 v6, 0x1

    .line 240
    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v4, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v5, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    .line 241
    .local v0, "domain":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    if-gt p1, v1, :cond_0

    .line 242
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 249
    .local v2, "ret":D
    :goto_0
    return-wide v2

    .line 243
    .end local v2    # "ret":D
    :cond_0
    aget v1, v0, v6

    if-le p1, v1, :cond_1

    .line 244
    const-wide/16 v2, 0x0

    .restart local v2    # "ret":D
    goto :goto_0

    .line 246
    .end local v2    # "ret":D
    :cond_1
    aget v1, v0, v6

    const/4 v4, -0x1

    invoke-direct {p0, v1, p1, v4}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->innerCumulativeProbability(III)D

    move-result-wide v2

    .restart local v2    # "ret":D
    goto :goto_0
.end method
