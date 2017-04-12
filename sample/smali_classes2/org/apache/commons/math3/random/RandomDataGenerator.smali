.class public Lorg/apache/commons/math3/random/RandomDataGenerator;
.super Ljava/lang/Object;
.source "RandomDataGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomData;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private rand:Lorg/apache/commons/math3/random/RandomGenerator;

.field private secRand:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 121
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "rand"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 121
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 142
    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 143
    return-void
.end method

.method private getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 6

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 778
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method

.method private initRan()V
    .locals 6

    .prologue
    .line 762
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/random/Well19937c;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 763
    return-void
.end method

.method private static nextLong(Lorg/apache/commons/math3/random/RandomGenerator;J)J
    .locals 19
    .param p0, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 240
    const-wide/16 v12, 0x0

    cmp-long v9, p1, v12

    if-lez v9, :cond_2

    .line 241
    const/16 v9, 0x8

    new-array v6, v9, [B

    .line 245
    .local v6, "byteArray":[B
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    .line 246
    const-wide/16 v4, 0x0

    .line 247
    .local v4, "bits":J
    move-object v2, v6

    .local v2, "arr$":[B
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-byte v3, v2, v7

    .line 248
    .local v3, "b":B
    const/16 v9, 0x8

    shl-long v12, v4, v9

    int-to-long v14, v3

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    or-long v4, v12, v14

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "b":B
    :cond_1
    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v4, v12

    .line 251
    rem-long v10, v4, p1

    .line 252
    .local v10, "val":J
    sub-long v12, v4, v10

    const-wide/16 v14, 0x1

    sub-long v14, p1, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-ltz v9, :cond_0

    .line 253
    return-wide v10

    .line 255
    .end local v2    # "arr$":[B
    .end local v4    # "bits":J
    .end local v6    # "byteArray":[B
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "val":J
    :cond_2
    new-instance v9, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v9
.end method


# virtual methods
.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    if-nez v0, :cond_0

    .line 752
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->initRan()V

    .line 754
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method

.method public nextBeta(DD)D
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D

    .prologue
    .line 504
    new-instance v0, Lorg/apache/commons/math3/distribution/BetaDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextBinomial(ID)I
    .locals 2
    .param p1, "numberOfTrials"    # I
    .param p2, "probabilityOfSuccess"    # D

    .prologue
    .line 516
    new-instance v0, Lorg/apache/commons/math3/distribution/BinomialDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->sample()I

    move-result v0

    return v0
.end method

.method public nextCauchy(DD)D
    .locals 9
    .param p1, "median"    # D
    .param p3, "scale"    # D

    .prologue
    .line 527
    new-instance v0, Lorg/apache/commons/math3/distribution/CauchyDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/CauchyDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextChiSquare(D)D
    .locals 7
    .param p1, "df"    # D

    .prologue
    .line 538
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextExponential(D)D
    .locals 7
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextF(DD)D
    .locals 9
    .param p1, "numeratorDf"    # D
    .param p3, "denominatorDf"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lorg/apache/commons/math3/distribution/FDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/FDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextGamma(DD)D
    .locals 9
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lorg/apache/commons/math3/distribution/GammaDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/GammaDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextGaussian(DD)D
    .locals 3
    .param p1, "mu"    # D
    .param p3, "sigma"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 378
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->STANDARD_DEVIATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, p3

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public nextHexString(I)Ljava/lang/String;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 162
    if-gtz p1, :cond_0

    .line 163
    new-instance v6, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v6

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    .line 170
    .local v4, "ran":Lorg/apache/commons/math3/random/RandomGenerator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v3, "outBuffer":Ljava/lang/StringBuilder;
    div-int/lit8 v6, p1, 0x2

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [B

    .line 174
    .local v5, "randomBytes":[B
    invoke-interface {v4, v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 178
    aget-byte v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    .local v0, "c":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit16 v6, v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "c":Ljava/lang/Integer;
    .end local v1    # "hex":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public nextHypergeometric(III)I
    .locals 2
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
    .line 439
    new-instance v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sample()I

    move-result v0

    return v0
.end method

.method public nextInt(II)I
    .locals 2
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v0

    return v0
.end method

.method public nextLong(JJ)J
    .locals 11
    .param p1, "lower"    # J
    .param p3, "upper"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 203
    cmp-long v5, p1, p3

    if-ltz v5, :cond_0

    .line 204
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 207
    :cond_0
    sub-long v6, p3, p1

    const-wide/16 v8, 0x1

    add-long v0, v6, v8

    .line 208
    .local v0, "max":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_2

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    .line 213
    .local v4, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    :cond_1
    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextLong()J

    move-result-wide v2

    .line 214
    .local v2, "r":J
    cmp-long v5, v2, p1

    if-ltz v5, :cond_1

    cmp-long v5, v2, p3

    if-gtz v5, :cond_1

    .line 223
    .end local v2    # "r":J
    .end local v4    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    :goto_0
    return-wide v2

    .line 218
    :cond_2
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-gez v5, :cond_3

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v5

    long-to-int v6, v0

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v5

    int-to-long v6, v5

    add-long v2, p1, v6

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(Lorg/apache/commons/math3/random/RandomGenerator;J)J

    move-result-wide v6

    add-long v2, p1, v6

    goto :goto_0
.end method

.method public nextPascal(ID)I
    .locals 2
    .param p1, "r"    # I
    .param p2, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Lorg/apache/commons/math3/distribution/PascalDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/commons/math3/distribution/PascalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->sample()I

    move-result v0

    return v0
.end method

.method public nextPermutation(II)[I
    .locals 6
    .param p1, "n"    # I
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 631
    if-le p2, p1, :cond_0

    .line 632
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERMUTATION_EXCEEDS_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 635
    :cond_0
    if-gtz p2, :cond_1

    .line 636
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERMUTATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v1

    .line 640
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v0

    .line 641
    .local v0, "index":[I
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 644
    invoke-static {v0, p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public nextPoisson(D)J
    .locals 7
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    const v6, 0x989680

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->sample()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public nextSample(Ljava/util/Collection;I)[Ljava/lang/Object;
    .locals 10
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 656
    .local v2, "len":I
    if-le p2, v2, :cond_0

    .line 657
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SAMPLE_SIZE_EXCEEDS_COLLECTION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 660
    :cond_0
    if-gtz p2, :cond_1

    .line 661
    new-instance v5, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v5

    .line 664
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 665
    .local v3, "objects":[Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPermutation(II)[I

    move-result-object v1

    .line 666
    .local v1, "index":[I
    new-array v4, p2, [Ljava/lang/Object;

    .line 667
    .local v4, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 668
    aget v5, v1, v0

    aget-object v5, v3, v5

    aput-object v5, v4, v0

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_2
    return-object v4
.end method

.method public nextSecureHexString(I)Ljava/lang/String;
    .locals 14
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 276
    if-gtz p1, :cond_0

    .line 277
    new-instance v11, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v11

    .line 281
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v10

    .line 282
    .local v10, "secRan":Lorg/apache/commons/math3/random/RandomGenerator;
    const/4 v0, 0x0

    .line 284
    .local v0, "alg":Ljava/security/MessageDigest;
    :try_start_0
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 292
    div-int/lit8 v11, p1, 0x28

    add-int/lit8 v7, v11, 0x1

    .line 294
    .local v7, "numIter":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v8, "outBuffer":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .local v6, "iter":I
    :goto_0
    add-int/lit8 v11, v7, 0x1

    if-ge v6, v11, :cond_3

    .line 296
    const/16 v11, 0x28

    new-array v9, v11, [B

    .line 297
    .local v9, "randomBytes":[B
    invoke-interface {v10, v9}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    .line 298
    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 301
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 304
    .local v3, "hash":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v11, v3

    if-ge v5, v11, :cond_2

    .line 305
    aget-byte v11, v3, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 312
    .local v1, "c":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit16 v11, v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "hex":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 316
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 285
    .end local v1    # "c":Ljava/lang/Integer;
    .end local v3    # "hash":[B
    .end local v4    # "hex":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "iter":I
    .end local v7    # "numIter":I
    .end local v8    # "outBuffer":Ljava/lang/StringBuilder;
    .end local v9    # "randomBytes":[B
    :catch_0
    move-exception v2

    .line 287
    .local v2, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v11, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v11, v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 295
    .end local v2    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "hash":[B
    .restart local v5    # "i":I
    .restart local v6    # "iter":I
    .restart local v7    # "numIter":I
    .restart local v8    # "outBuffer":Ljava/lang/StringBuilder;
    .restart local v9    # "randomBytes":[B
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "hash":[B
    .end local v5    # "i":I
    .end local v9    # "randomBytes":[B
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public nextSecureInt(II)I
    .locals 2
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v0

    return v0
.end method

.method public nextSecureLong(JJ)J
    .locals 11
    .param p1, "lower"    # J
    .param p3, "upper"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 331
    cmp-long v5, p1, p3

    if-ltz v5, :cond_0

    .line 332
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 335
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    .line 336
    .local v4, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    sub-long v6, p3, p1

    const-wide/16 v8, 0x1

    add-long v0, v6, v8

    .line 337
    .local v0, "max":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_2

    .line 341
    :cond_1
    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextLong()J

    move-result-wide v2

    .line 342
    .local v2, "r":J
    cmp-long v5, v2, p1

    if-ltz v5, :cond_1

    cmp-long v5, v2, p3

    if-gtz v5, :cond_1

    .line 351
    .end local v2    # "r":J
    :goto_0
    return-wide v2

    .line 346
    :cond_2
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-gez v5, :cond_3

    .line 348
    long-to-int v5, v0

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v5

    int-to-long v6, v5

    add-long v2, p1, v6

    goto :goto_0

    .line 351
    :cond_3
    invoke-static {v4, v0, v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(Lorg/apache/commons/math3/random/RandomGenerator;J)J

    move-result-wide v6

    add-long v2, p1, v6

    goto :goto_0
.end method

.method public nextT(D)D
    .locals 7
    .param p1, "df"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/TDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextUniform(DD)D
    .locals 7
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 571
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DDZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextUniform(DDZ)D
    .locals 9
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "lowerInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 592
    cmpl-double v1, p1, p3

    if-ltz v1, :cond_0

    .line 593
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 597
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    new-instance v1, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    .line 600
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    new-instance v1, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    .line 604
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 605
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v1

    .line 608
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    .line 611
    .local v0, "generator":Lorg/apache/commons/math3/random/RandomGenerator;
    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    .line 612
    .local v2, "u":D
    :goto_0
    if-nez p5, :cond_5

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_5

    .line 613
    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    goto :goto_0

    .line 616
    :cond_5
    mul-double v4, v2, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public nextWeibull(DD)D
    .locals 9
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lorg/apache/commons/math3/distribution/WeibullDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextZipf(ID)I
    .locals 2
    .param p1, "numberOfElements"    # I
    .param p2, "exponent"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lorg/apache/commons/math3/distribution/ZipfDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sample()I

    move-result v0

    return v0
.end method

.method public reSeed()V
    .locals 6

    .prologue
    .line 715
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 716
    return-void
.end method

.method public reSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 684
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 685
    return-void
.end method

.method public reSeedSecure()V
    .locals 4

    .prologue
    .line 695
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 696
    return-void
.end method

.method public reSeedSecure(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 707
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 708
    return-void
.end method

.method public setSecureAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {p1, p2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 737
    return-void
.end method
