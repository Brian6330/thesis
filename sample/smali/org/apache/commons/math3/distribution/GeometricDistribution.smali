.class public Lorg/apache/commons/math3/distribution/GeometricDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "GeometricDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332acbL


# instance fields
.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "p"    # D

    .prologue
    .line 53
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/GeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "p"    # D

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 66
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 70
    :cond_1
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 71
    return-void
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 10
    .param p1, "x"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 110
    if-gez p1, :cond_0

    .line 111
    const-wide/16 v2, 0x0

    .line 116
    .local v2, "ret":D
    :goto_0
    return-wide v2

    .line 113
    .end local v2    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 114
    .local v0, "p":D
    sub-double v4, v8, v0

    add-int/lit8 v6, p1, 0x1

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    sub-double v2, v8, v4

    .restart local v2    # "ret":D
    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 4

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 126
    .local v0, "p":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 6

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 137
    .local v0, "p":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .prologue
    .line 160
    const v0, 0x7fffffff

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 8
    .param p1, "x"    # I

    .prologue
    .line 98
    if-gez p1, :cond_0

    .line 99
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 104
    .local v2, "ret":D
    :goto_0
    return-wide v2

    .line 101
    .end local v2    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 102
    .local v0, "p":D
    int-to-double v4, p1

    neg-double v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    add-double v2, v4, v6

    .restart local v2    # "ret":D
    goto :goto_0
.end method

.method public probability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 85
    if-gez p1, :cond_0

    .line 86
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "ret":D
    :goto_0
    return-wide v2

    .line 88
    .end local v2    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 89
    .local v0, "p":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    invoke-static {v4, v5, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    mul-double v2, v4, v0

    .restart local v2    # "ret":D
    goto :goto_0
.end method
