.class public Lorg/apache/commons/math3/random/RandomDataImpl;
.super Ljava/lang/Object;
.source "RandomDataImpl.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomData;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private final delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "rand"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 127
    return-void
.end method


# virtual methods
.method getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-object v0
.end method

.method public nextBeta(DD)D
    .locals 3
    .param p1, "alpha"    # D
    .param p3, "beta"    # D

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextBeta(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextBinomial(ID)I
    .locals 2
    .param p1, "numberOfTrials"    # I
    .param p2, "probabilityOfSuccess"    # D

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextBinomial(ID)I

    move-result v0

    return v0
.end method

.method public nextCauchy(DD)D
    .locals 3
    .param p1, "median"    # D
    .param p3, "scale"    # D

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextCauchy(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextChiSquare(D)D
    .locals 3
    .param p1, "df"    # D

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextChiSquare(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextExponential(D)D
    .locals 3
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextExponential(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextF(DD)D
    .locals 3
    .param p1, "numeratorDf"    # D
    .param p3, "denominatorDf"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextF(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextGamma(DD)D
    .locals 3
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextGamma(DD)D

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
    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextGaussian(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextHexString(I)Ljava/lang/String;
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextHypergeometric(III)I
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
    .line 382
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextHypergeometric(III)I

    move-result v0

    return v0
.end method

.method public nextInt(II)I
    .locals 1
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public nextInversionDeviate(Lorg/apache/commons/math3/distribution/RealDistribution;)D
    .locals 4
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/RandomDataImpl;->nextUniform(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/distribution/RealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInversionDeviate(Lorg/apache/commons/math3/distribution/IntegerDistribution;)I
    .locals 4
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/IntegerDistribution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/RandomDataImpl;->nextUniform(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->inverseCumulativeProbability(D)I

    move-result v0

    return v0
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "lower"    # J
    .param p3, "upper"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
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
    .line 400
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPascal(ID)I

    move-result v0

    return v0
.end method

.method public nextPermutation(II)[I
    .locals 1
    .param p1, "n"    # I
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPermutation(II)[I

    move-result-object v0

    return-object v0
.end method

.method public nextPoisson(D)J
    .locals 3
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPoisson(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextSample(Ljava/util/Collection;I)[Ljava/lang/Object;
    .locals 1
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
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSample(Ljava/util/Collection;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextSecureHexString(I)Ljava/lang/String;
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSecureHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextSecureInt(II)I
    .locals 1
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSecureInt(II)I

    move-result v0

    return v0
.end method

.method public nextSecureLong(JJ)J
    .locals 3
    .param p1, "lower"    # J
    .param p3, "upper"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSecureLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextT(D)D
    .locals 3
    .param p1, "df"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextT(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextUniform(DD)D
    .locals 3
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
    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextUniform(DDZ)D
    .locals 7
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
    .line 264
    iget-object v1, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DDZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextWeibull(DD)D
    .locals 3
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextWeibull(DD)D

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
    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextZipf(ID)I

    move-result v0

    return v0
.end method

.method public reSeed()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed()V

    .line 493
    return-void
.end method

.method public reSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 460
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    .line 461
    return-void
.end method

.method public reSeedSecure()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeedSecure()V

    .line 472
    return-void
.end method

.method public reSeedSecure(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeedSecure(J)V

    .line 485
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
    .line 517
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->setSecureAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method
