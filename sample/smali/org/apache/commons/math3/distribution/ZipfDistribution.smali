.class public Lorg/apache/commons/math3/distribution/ZipfDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "ZipfDistribution.java"


# static fields
.field private static final serialVersionUID:J = -0x1f39bd99aa65ef4L


# instance fields
.field private final exponent:D

.field private final numberOfElements:I

.field private numericalMean:D

.field private numericalMeanIsCalculated:Z

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z


# direct methods
.method public constructor <init>(ID)V
    .locals 2
    .param p1, "numberOfElements"    # I
    .param p2, "exponent"    # D

    .prologue
    .line 64
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "numberOfElements"    # I
    .param p3, "exponent"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 81
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 39
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    .line 41
    iput-boolean v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 43
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    .line 45
    iput-boolean v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    .line 83
    if-gtz p2, :cond_0

    .line 84
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 87
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 88
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 92
    :cond_1
    iput p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    .line 93
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    .line 94
    return-void
.end method

.method private generalizedHarmonic(ID)D
    .locals 8
    .param p1, "n"    # I
    .param p2, "m"    # D

    .prologue
    .line 222
    const-wide/16 v2, 0x0

    .line 223
    .local v2, "value":D
    move v0, p1

    .local v0, "k":I
    :goto_0
    if-lez v0, :cond_0

    .line 224
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v0

    invoke-static {v6, v7, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 223
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 226
    :cond_0
    return-wide v2
.end method


# virtual methods
.method protected calculateNumericalMean()D
    .locals 10

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v4

    .line 169
    .local v4, "N":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v6

    .line 171
    .local v6, "s":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v6, v8

    invoke-direct {p0, v4, v8, v9}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    .line 172
    .local v2, "Hs1":D
    invoke-direct {p0, v4, v6, v7}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    .line 174
    .local v0, "Hs":D
    div-double v8, v2, v0

    return-wide v8
.end method

.method protected calculateNumericalVariance()D
    .locals 18

    .prologue
    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v8

    .line 203
    .local v8, "N":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v10

    .line 205
    .local v10, "s":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double v12, v10, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v6

    .line 206
    .local v6, "Hs2":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v10, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v4

    .line 207
    .local v4, "Hs1":D
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    .line 209
    .local v2, "Hs":D
    div-double v12, v6, v2

    mul-double v14, v4, v4

    mul-double v16, v2, v2

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    return-wide v12
.end method

.method public cumulativeProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 135
    if-gtz p1, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    .line 141
    :goto_0
    return-wide v0

    .line 137
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-lt p1, v0, :cond_1

    .line 138
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 141
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, v2, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getExponent()D
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    return-wide v0
.end method

.method public getNumberOfElements()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 159
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    .line 193
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 126
    if-lez p1, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_1

    .line 127
    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 130
    :goto_0
    return-wide v0

    :cond_1
    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, v2, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public probability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 116
    if-lez p1, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_1

    .line 117
    :cond_0
    const-wide/16 v0, 0x0

    .line 120
    :goto_0
    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, v2, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0
.end method
