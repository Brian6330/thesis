.class public Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "EnumeratedIntegerDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a04L


# instance fields
.field protected final innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/distribution/EnumeratedDistribution",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[I[D)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "singletons"    # [I
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
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 97
    array-length v2, p2

    array-length v3, p3

    if-eq v2, v3, :cond_0

    .line 98
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p3

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 101
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v1, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 104
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p3, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-direct {v2, p1, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 108
    return-void
.end method

.method public constructor <init>([I[D)V
    .locals 1
    .param p1, "singletons"    # [I
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
    .line 75
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[I[D)V

    .line 76
    return-void
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 121
    const-wide/16 v2, 0x0

    .line 123
    .local v2, "probability":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 124
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_0

    .line 125
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 129
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    return-wide v2
.end method

.method public getNumericalMean()D
    .locals 8

    .prologue
    .line 138
    const-wide/16 v2, 0x0

    .line 140
    .local v2, "mean":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 141
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    goto :goto_0

    .line 144
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 10

    .prologue
    .line 153
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "mean":D
    const-wide/16 v4, 0x0

    .line 156
    .local v4, "meanOfSquares":D
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

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

    .line 157
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 158
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v8, v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    goto :goto_0

    .line 161
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    mul-double v6, v2, v2

    sub-double v6, v4, v6

    return-wide v6
.end method

.method public getSupportLowerBound()I
    .locals 8

    .prologue
    .line 172
    const v1, 0x7fffffff

    .line 173
    .local v1, "min":I
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 174
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 175
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 179
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    return v1
.end method

.method public getSupportUpperBound()I
    .locals 8

    .prologue
    .line 190
    const/high16 v1, -0x80000000

    .line 191
    .local v1, "max":I
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 192
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 193
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 197
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    return v1
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public probability(I)D
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probability(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
