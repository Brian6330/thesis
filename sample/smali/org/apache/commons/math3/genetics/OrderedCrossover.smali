.class public Lorg/apache/commons/math3/genetics/OrderedCrossover;
.super Ljava/lang/Object;
.source "OrderedCrossover.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/commons/math3/genetics/OrderedCrossover;, "Lorg/apache/commons/math3/genetics/OrderedCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/genetics/OrderedCrossover;, "Lorg/apache/commons/math3/genetics/OrderedCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 76
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p1    # "first":Lorg/apache/commons/math3/genetics/Chromosome;
    check-cast p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p2    # "second":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/genetics/OrderedCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0
.end method

.method protected mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 21
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
    .line 90
    .local p0, "this":Lorg/apache/commons/math3/genetics/OrderedCrossover;, "Lorg/apache/commons/math3/genetics/OrderedCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v13

    .line 91
    .local v13, "length":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-eq v13, v0, :cond_0

    .line 92
    new-instance v18, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v18

    .line 96
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v14

    .line 97
    .local v14, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v15

    .line 99
    .local v15, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v4, "child1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v6, "child2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    .local v5, "child1Set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 105
    .local v7, "child2Set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v16

    .line 107
    .local v16, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    .line 110
    .local v2, "a":I
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v3

    .line 111
    .local v3, "b":I
    if-eq v2, v3, :cond_1

    .line 113
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 114
    .local v12, "lb":I
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v17

    .line 117
    .local v17, "ub":I
    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    invoke-interface {v14, v12, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v12, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    if-gt v8, v13, :cond_4

    .line 124
    add-int v18, v17, v8

    rem-int v9, v18, v13

    .line 127
    .local v9, "idx":I
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 128
    .local v10, "item1":Ljava/lang/Object;, "TT;"
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 131
    .local v11, "item2":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 132
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 138
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 144
    .end local v9    # "idx":I
    .end local v10    # "item1":Ljava/lang/Object;, "TT;"
    .end local v11    # "item2":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-static {v4, v12}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 145
    invoke-static {v6, v12}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 147
    new-instance v18, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v18
.end method
