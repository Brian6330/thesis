.class public Lorg/apache/commons/math3/genetics/CycleCrossover;
.super Ljava/lang/Object;
.source "CycleCrossover.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/CrossoverPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/genetics/CrossoverPolicy;"
    }
.end annotation


# instance fields
.field private final randomStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/genetics/CycleCrossover;-><init>(Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "randomStart"    # Z

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lorg/apache/commons/math3/genetics/CycleCrossover;->randomStart:Z

    .line 84
    return-void
.end method


# virtual methods
.method public crossover(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 3
    .param p1, "first"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .param p2, "second"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 108
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p1    # "first":Lorg/apache/commons/math3/genetics/Chromosome;
    check-cast p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p2    # "second":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/genetics/CycleCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0
.end method

.method public isRandomStart()Z
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/genetics/CycleCrossover;->randomStart:Z

    return v0
.end method

.method protected mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/genetics/AbstractListChromosome",
            "<TT;>;",
            "Lorg/apache/commons/math3/genetics/AbstractListChromosome",
            "<TT;>;)",
            "Lorg/apache/commons/math3/genetics/ChromosomePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/commons/math3/genetics/CycleCrossover;, "Lorg/apache/commons/math3/genetics/CycleCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v10

    .line 123
    .local v10, "length":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v15

    if-eq v10, v15, :cond_0

    .line 124
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v0, v10}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 128
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v11

    .line 129
    .local v11, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v12

    .line 131
    .local v12, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v1, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v2, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 137
    .local v14, "visitedIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v8, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/math3/genetics/CycleCrossover;->randomStart:Z

    if-eqz v15, :cond_1

    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v15

    invoke-interface {v15, v10}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v7

    .line 141
    .local v7, "idx":I
    :goto_0
    const/4 v3, 0x1

    .line 143
    .local v3, "cycle":I
    :goto_1
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v15

    if-ge v15, v10, :cond_6

    .line 144
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 147
    .local v9, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v11, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 149
    :goto_2
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v7, v15, :cond_2

    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 155
    invoke-interface {v11, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_2

    .line 140
    .end local v3    # "cycle":I
    .end local v7    # "idx":I
    .end local v9    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 159
    .restart local v3    # "cycle":I
    .restart local v7    # "idx":I
    .restart local v9    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "cycle":I
    .local v4, "cycle":I
    rem-int/lit8 v15, v3, 0x2

    if-eqz v15, :cond_3

    .line 160
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 161
    .local v5, "i":I
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 162
    .local v13, "tmp":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v5, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {v2, v5, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 167
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "tmp":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-interface {v14, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    rem-int v7, v15, v10

    .line 170
    :cond_4
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v15

    if-ge v15, v10, :cond_5

    .line 171
    add-int/lit8 v7, v7, 0x1

    .line 172
    if-lt v7, v10, :cond_4

    .line 173
    const/4 v7, 0x0

    goto :goto_4

    .line 176
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->clear()V

    move v3, v4

    .line 177
    .end local v4    # "cycle":I
    .restart local v3    # "cycle":I
    goto/16 :goto_1

    .line 179
    .end local v9    # "item":Ljava/lang/Object;, "TT;"
    :cond_6
    new-instance v15, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v15
.end method
