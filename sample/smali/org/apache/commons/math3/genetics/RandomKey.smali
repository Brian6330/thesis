.class public abstract Lorg/apache/commons/math3/genetics/RandomKey;
.super Lorg/apache/commons/math3/genetics/AbstractListChromosome;
.source "RandomKey.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/PermutationChromosome;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/genetics/AbstractListChromosome",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Lorg/apache/commons/math3/genetics/PermutationChromosome",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSeqPermutation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedRepresentation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .local v0, "sortedRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->sortedRepresentation:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/math3/genetics/RandomKey;->baseSequence(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/genetics/RandomKey;->sortedRepresentation:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/genetics/RandomKey;->decodeGeneric(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    .line 82
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 1
    .param p1, "representation"    # [Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/genetics/RandomKey;-><init>(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method private static baseSequence(I)Ljava/util/List;
    .locals 3
    .param p0, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v0, "baseSequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-object v0
.end method

.method public static comparatorPermutation(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Ljava/util/Comparator",
            "<TS;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .local v0, "sortedData":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    invoke-static {p0, v0}, Lorg/apache/commons/math3/genetics/RandomKey;->inducedPermutation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static decodeGeneric(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "sequence":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "sortedRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 120
    .local v2, "l":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 121
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 123
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 124
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 128
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v3, "reprCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<TS;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 133
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 134
    .local v1, "index":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "index":I
    :cond_2
    return-object v4
.end method

.method public static final identityPermutation(I)Ljava/util/List;
    .locals 6
    .param p0, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v1, "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 214
    int-to-double v2, v0

    int-to-double v4, p0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-object v1
.end method

.method public static inducedPermutation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Ljava/util/List",
            "<TS;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "originalData":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "permutedData":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 262
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 264
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 266
    .local v2, "l":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    .local v3, "origDataCopy":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-array v4, v2, [Ljava/lang/Double;

    .line 269
    .local v4, "res":[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 270
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 271
    .local v1, "index":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 272
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIFFERENT_ORIG_AND_PERMUTED_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 274
    :cond_1
    int-to-double v6, v0

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    .line 275
    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "index":I
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static final randomPermutation(I)Ljava/util/List;
    .locals 4
    .param p0, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v1, "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 199
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected checkValidity(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    .local p1, "chromosomeRepresentation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 181
    .local v2, "val":D
    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 182
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/genetics/InvalidRepresentationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v1, v4, v5}, Lorg/apache/commons/math3/genetics/InvalidRepresentationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 186
    .end local v2    # "val":D
    :cond_2
    return-void
.end method

.method public decode(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    .local p1, "sequence":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/genetics/RandomKey;->sortedRepresentation:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/genetics/RandomKey;->decodeGeneric(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z
    .locals 7
    .param p1, "another"    # Lorg/apache/commons/math3/genetics/Chromosome;

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    const/4 v4, 0x0

    .line 150
    instance-of v5, p1, Lorg/apache/commons/math3/genetics/RandomKey;

    if-nez v5, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 153
    check-cast v1, Lorg/apache/commons/math3/genetics/RandomKey;

    .line 155
    .local v1, "anotherRk":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 161
    iget-object v3, p0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    .line 162
    .local v3, "thisPerm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    .line 164
    .local v0, "anotherPerm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 165
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<TT;>;"
    const-string v0, "(f=%s pi=(%s))"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/RandomKey;->getFitness()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/commons/math3/genetics/RandomKey;->baseSeqPermutation:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
