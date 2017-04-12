.class public Lorg/apache/commons/math3/distribution/NakagamiDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "NakagamiDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final inverseAbsoluteAccuracy:D

.field private final mu:D

.field private final omega:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "mu"    # D
    .param p3, "omega"    # D

    .prologue
    .line 65
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/NakagamiDistribution;-><init>(DDD)V

    .line 66
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "mu"    # D
    .param p3, "omega"    # D
    .param p5, "inverseAbsoluteAccuracy"    # D

    .prologue
    .line 86
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NakagamiDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 4
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "omega"    # D
    .param p6, "inverseAbsoluteAccuracy"    # D

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 103
    cmpg-double v0, p2, v2

    if-gez v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 106
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_1

    .line 107
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 110
    :cond_1
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    .line 111
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    .line 112
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->inverseAbsoluteAccuracy:D

    .line 113
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public density(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/16 v0, 0x0

    .line 140
    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 143
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    mul-double/2addr v2, v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    neg-double v2, v2

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 159
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v4

    div-double v0, v2, v4

    .line 160
    .local v0, "v":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    div-double v4, v6, v4

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->inverseAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 170
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method
