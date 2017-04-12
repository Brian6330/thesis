.class public Lorg/apache/commons/math3/distribution/BinomialDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "BinomialDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x5db17834c1f59437L


# instance fields
.field private final numberOfTrials:I

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(ID)V
    .locals 2
    .param p1, "trials"    # I
    .param p2, "p"    # D

    .prologue
    .line 58
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 5
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "trials"    # I
    .param p3, "p"    # D

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 76
    if-gez p2, :cond_0

    .line 77
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_TRIALS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 80
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_2

    .line 81
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 84
    :cond_2
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    .line 85
    iput p2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    .line 86
    return-void
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 10
    .param p1, "x"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 132
    if-gez p1, :cond_0

    .line 133
    const-wide/16 v6, 0x0

    .line 140
    .local v6, "ret":D
    :goto_0
    return-wide v6

    .line 134
    .end local v6    # "ret":D
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    if-lt p1, v0, :cond_1

    .line 135
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .restart local v6    # "ret":D
    goto :goto_0

    .line 137
    .end local v6    # "ret":D
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    int-to-double v2, p1

    add-double/2addr v2, v8

    iget v4, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    sub-int/2addr v4, p1

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v0

    sub-double v6, v8, v0

    .restart local v6    # "ret":D
    goto :goto_0
.end method

.method public getNumberOfTrials()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 4

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    .line 161
    .local v0, "p":D
    iget v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 4

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    goto :goto_0
.end method

.method public getSupportUpperBound()I
    .locals 4

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 10
    .param p1, "x"    # I

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    if-nez v0, :cond_1

    .line 116
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 126
    :goto_0
    return-wide v0

    .line 116
    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 119
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    if-le p1, v0, :cond_3

    .line 120
    :cond_2
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .local v6, "ret":D
    :goto_1
    move-wide v0, v6

    .line 126
    goto :goto_0

    .line 122
    .end local v6    # "ret":D
    :cond_3
    iget v1, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    sub-double/2addr v4, v8

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v6

    .restart local v6    # "ret":D
    goto :goto_1
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->logProbability(I)D

    move-result-wide v0

    .line 109
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
