.class public Lorg/apache/commons/math3/distribution/PascalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "PascalDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x5db17834c1f59437L


# instance fields
.field private final log1mProbabilityOfSuccess:D

.field private final logProbabilityOfSuccess:D

.field private final numberOfSuccesses:I

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(ID)V
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
    .line 96
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/PascalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 5
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "r"    # I
    .param p3, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 117
    if-gtz p2, :cond_0

    .line 118
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 121
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_2

    .line 122
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

    .line 125
    :cond_2
    iput p2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    .line 126
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    .line 127
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->logProbabilityOfSuccess:D

    .line 128
    neg-double v0, p3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->log1mProbabilityOfSuccess:D

    .line 129
    return-void
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 10
    .param p1, "x"    # I

    .prologue
    .line 181
    if-gez p1, :cond_0

    .line 182
    const-wide/16 v6, 0x0

    .line 187
    .local v6, "ret":D
    :goto_0
    return-wide v6

    .line 184
    .end local v6    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    iget v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    int-to-double v2, v2

    int-to-double v4, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v6

    .restart local v6    # "ret":D
    goto :goto_0
.end method

.method public getNumberOfSuccesses()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getProbabilityOfSuccess()D

    move-result-wide v0

    .line 198
    .local v0, "p":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getNumberOfSuccesses()I

    move-result v4

    int-to-double v2, v4

    .line 199
    .local v2, "r":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v4, v2

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public getNumericalVariance()D
    .locals 8

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getProbabilityOfSuccess()D

    move-result-wide v0

    .line 210
    .local v0, "p":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getNumberOfSuccesses()I

    move-result v4

    int-to-double v2, v4

    .line 211
    .local v2, "r":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v4, v2

    mul-double v6, v0, v0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .prologue
    .line 235
    const v0, 0x7fffffff

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 8
    .param p1, "x"    # I

    .prologue
    .line 167
    if-gez p1, :cond_0

    .line 168
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 175
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 170
    .end local v0    # "ret":D
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->logProbabilityOfSuccess:D

    iget v6, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->log1mProbabilityOfSuccess:D

    int-to-double v6, p1

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0
.end method

.method public probability(I)D
    .locals 8
    .param p1, "x"    # I

    .prologue
    .line 152
    if-gez p1, :cond_0

    .line 153
    const-wide/16 v0, 0x0

    .line 160
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 155
    .end local v0    # "ret":D
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    iget v6, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0
.end method
