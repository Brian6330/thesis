.class public Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
.super Ljava/lang/Object;
.source "EnumeratedDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1330eacL


# instance fields
.field private final cumulativeProbabilities:[D

.field private final probabilities:[D

.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private final singletons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<TT;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p1, "pmf":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;>;"
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 10
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<TT;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p2, "pmf":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    .line 121
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [D

    .line 123
    .local v1, "probs":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 124
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/util/Pair;

    .line 125
    .local v4, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 127
    .local v2, "p":D
    const-wide/16 v8, 0x0

    cmpg-double v5, v2, v8

    if-gez v5, :cond_0

    .line 128
    new-instance v8, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-direct {v8, v5}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v8

    .line 130
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    new-instance v5, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v5, v8, v9}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v5

    .line 133
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    new-instance v5, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v5

    .line 136
    :cond_2
    aput-wide v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "p":D
    .end local v4    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;"
    :cond_3
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v8, v9}, Lorg/apache/commons/math3/util/MathArrays;->normalizeArray([DD)[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    .line 141
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v5, v5

    new-array v5, v5, [D

    iput-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    .line 142
    const-wide/16 v6, 0x0

    .line 143
    .local v6, "sum":D
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 144
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v8, v5, v0

    add-double/2addr v6, v8

    .line 145
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    aput-wide v6, v5, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_4
    return-void
.end method


# virtual methods
.method public getPmf()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<TT;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v1, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<TT;Ljava/lang/Double;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 197
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v1
.end method

.method probability(Ljava/lang/Object;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p1, "x":Ljava/lang/Object;, "TT;"
    const-wide/16 v2, 0x0

    .line 173
    .local v2, "probability":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 174
    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v4, v1, v0

    add-double/2addr v2, v4

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_3
    return-wide v2
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 156
    return-void
.end method

.method public sample()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    .line 211
    .local v2, "randomValue":D
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 212
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 213
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 216
    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    aget-wide v4, v1, v0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 218
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public sample(I)[Ljava/lang/Object;
    .locals 5
    .param p1, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    if-gtz p1, :cond_0

    .line 238
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 242
    :cond_0
    new-array v1, p1, [Ljava/lang/Object;

    .line 244
    .local v1, "out":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-object v1
.end method

.method public sample(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lorg/apache/commons/math3/distribution/EnumeratedDistribution;, "Lorg/apache/commons/math3/distribution/EnumeratedDistribution<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    if-gtz p1, :cond_0

    .line 267
    new-instance v3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v3

    .line 270
    :cond_0
    if-nez p2, :cond_1

    .line 271
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 275
    :cond_1
    array-length v3, p2

    if-ge v3, p1, :cond_2

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 278
    .local v2, "unchecked":[Ljava/lang/Object;, "[TT;"
    move-object v1, v2

    .line 283
    .end local v2    # "unchecked":[Ljava/lang/Object;, "[TT;"
    .local v1, "out":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    .end local v0    # "i":I
    .end local v1    # "out":[Ljava/lang/Object;, "[TT;"
    :cond_2
    move-object v1, p2

    .restart local v1    # "out":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 287
    .restart local v0    # "i":I
    :cond_3
    return-object v1
.end method
