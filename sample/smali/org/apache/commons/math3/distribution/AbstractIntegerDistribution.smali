.class public abstract Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.super Ljava/lang/Object;
.source "AbstractIntegerDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/IntegerDistribution;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfe88ba81dead5b5L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 72
    return-void
.end method

.method private checkedCumulativeProbability(I)D
    .locals 7
    .param p1, "argument"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathInternalError;
        }
    .end annotation

    .prologue
    .line 226
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 227
    .local v0, "result":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    .line 228
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 232
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public cumulativeProbability(II)D
    .locals 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 81
    if-ge p2, p1, :cond_0

    .line 82
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)I
    .locals 19
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v16, 0x0

    cmpg-double v15, p1, v16

    if-ltz v15, :cond_0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, p1, v16

    if-lez v15, :cond_1

    .line 101
    :cond_0
    new-instance v15, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v15

    .line 104
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getSupportLowerBound()I

    move-result v5

    .line 105
    .local v5, "lower":I
    const-wide/16 v16, 0x0

    cmpl-double v15, p1, v16

    if-nez v15, :cond_3

    move v14, v5

    .line 141
    :cond_2
    :goto_0
    return v14

    .line 108
    :cond_3
    const/high16 v15, -0x80000000

    if-ne v5, v15, :cond_4

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v16

    cmpl-double v15, v16, p1

    if-ltz v15, :cond_5

    move v14, v5

    .line 110
    goto :goto_0

    .line 113
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 117
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getSupportUpperBound()I

    move-result v14

    .line 118
    .local v14, "upper":I
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, p1, v16

    if-eqz v15, :cond_2

    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getNumericalMean()D

    move-result-wide v8

    .line 125
    .local v8, "mu":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getNumericalVariance()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 126
    .local v10, "sigma":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_8

    const-wide/16 v16, 0x0

    cmpl-double v15, v10, v16

    if-eqz v15, :cond_8

    const/4 v4, 0x1

    .line 128
    .local v4, "chebyshevApplies":Z
    :goto_1
    if-eqz v4, :cond_7

    .line 129
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, p1

    div-double v16, v16, p1

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 130
    .local v6, "k":D
    mul-double v16, v6, v10

    sub-double v12, v8, v16

    .line 131
    .local v12, "tmp":D
    int-to-double v0, v5

    move-wide/from16 v16, v0

    cmpl-double v15, v12, v16

    if-lez v15, :cond_6

    .line 132
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int/lit8 v5, v15, -0x1

    .line 134
    :cond_6
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v6, v16, v6

    .line 135
    mul-double v16, v6, v10

    add-double v12, v8, v16

    .line 136
    int-to-double v0, v14

    move-wide/from16 v16, v0

    cmpg-double v15, v12, v16

    if-gez v15, :cond_7

    .line 137
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int/lit8 v14, v15, -0x1

    .line 141
    .end local v6    # "k":D
    .end local v12    # "tmp":D
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5, v14}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->solveInverseCumulativeProbability(DII)I

    move-result v14

    goto/16 :goto_0

    .line 126
    .end local v4    # "chebyshevApplies":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public logProbability(I)D
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->probability(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    .line 182
    return-void
.end method

.method public sample()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->inverseCumulativeProbability(D)I

    move-result v0

    return v0
.end method

.method public sample(I)[I
    .locals 5
    .param p1, "sampleSize"    # I

    .prologue
    .line 202
    if-gtz p1, :cond_0

    .line 203
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 206
    :cond_0
    new-array v1, p1, [I

    .line 207
    .local v1, "out":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result v2

    aput v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-object v1
.end method

.method protected solveInverseCumulativeProbability(DII)I
    .locals 5
    .param p1, "p"    # D
    .param p3, "lower"    # I
    .param p4, "upper"    # I

    .prologue
    .line 157
    :goto_0
    add-int/lit8 v3, p3, 0x1

    if-ge v3, p4, :cond_3

    .line 158
    add-int v3, p3, p4

    div-int/lit8 v2, v3, 0x2

    .line 159
    .local v2, "xm":I
    if-lt v2, p3, :cond_0

    if-le v2, p4, :cond_1

    .line 165
    :cond_0
    sub-int v3, p4, p3

    div-int/lit8 v3, v3, 0x2

    add-int v2, p3, v3

    .line 168
    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v0

    .line 169
    .local v0, "pm":D
    cmpl-double v3, v0, p1

    if-ltz v3, :cond_2

    .line 170
    move p4, v2

    goto :goto_0

    .line 172
    :cond_2
    move p3, v2

    goto :goto_0

    .line 175
    .end local v0    # "pm":D
    .end local v2    # "xm":I
    :cond_3
    return p4
.end method
