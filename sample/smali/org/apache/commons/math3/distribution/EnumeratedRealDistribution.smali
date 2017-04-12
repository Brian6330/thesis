.class public Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "EnumeratedRealDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a04L


# instance fields
.field protected final innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/distribution/EnumeratedDistribution",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[D)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "singletons"    # [D
    .param p3, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 98
    array-length v2, p2

    array-length v3, p3

    if-eq v2, v3, :cond_0

    .line 99
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p3

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 102
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v1, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 105
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aget-wide v4, p3, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-direct {v2, p1, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 109
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 1
    .param p1, "singletons"    # [D
    .param p2, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[D)V

    .line 77
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 136
    const-wide/16 v2, 0x0

    .line 138
    .local v2, "probability":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 139
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_0

    .line 140
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 144
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1
    return-wide v2
.end method

.method public density(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->probability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 8

    .prologue
    .line 180
    const-wide/16 v2, 0x0

    .line 182
    .local v2, "mean":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 183
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    goto :goto_0

    .line 186
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_0
    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 10

    .prologue
    .line 195
    const-wide/16 v2, 0x0

    .line 196
    .local v2, "mean":D
    const-wide/16 v4, 0x0

    .line 198
    .local v4, "meanOfSquares":D
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 199
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 200
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v8, v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    goto :goto_0

    .line 203
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_0
    mul-double v6, v2, v2

    sub-double v6, v4, v6

    return-wide v6
.end method

.method public getSupportLowerBound()D
    .locals 8

    .prologue
    .line 214
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 215
    .local v2, "min":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 216
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 217
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 221
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1
    return-wide v2
.end method

.method public getSupportUpperBound()D
    .locals 8

    .prologue
    .line 232
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 233
    .local v2, "max":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 234
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 235
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 239
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1
    return-wide v2
.end method

.method public inverseCumulativeProbability(D)D
    .locals 11
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 152
    cmpg-double v6, p1, v8

    if-ltz v6, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, p1, v6

    if-lez v6, :cond_1

    .line 153
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v6

    .line 156
    :cond_1
    const-wide/16 v2, 0x0

    .line 157
    .local v2, "probability":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->getSupportLowerBound()D

    move-result-wide v4

    .line 158
    .local v4, "x":D
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 159
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    .line 163
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 164
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 166
    cmpl-double v6, v2, p1

    if-ltz v6, :cond_2

    .line 171
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_3
    return-wide v4
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public probability(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probability(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample()D
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
