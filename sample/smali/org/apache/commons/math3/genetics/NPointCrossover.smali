.class public Lorg/apache/commons/math3/genetics/NPointCrossover;
.super Ljava/lang/Object;
.source "NPointCrossover.java"

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
.field private final crossoverPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "crossoverPoints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-gtz p1, :cond_0

    .line 68
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 70
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    .line 71
    return-void
.end method

.method private mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 19
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
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v9

    .line 130
    .local v9, "length":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v15

    if-eq v9, v15, :cond_0

    .line 131
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v0, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 133
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    if-lt v15, v9, :cond_1

    .line 134
    new-instance v15, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v15

    .line 138
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v10

    .line 139
    .local v10, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v11

    .line 141
    .local v11, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v3, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v4, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v12

    .line 146
    .local v12, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    move-object v1, v3

    .line 147
    .local v1, "c1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v4

    .line 149
    .local v2, "c2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    .line 150
    .local v13, "remainingPoints":I
    const/4 v8, 0x0

    .line 151
    .local v8, "lastIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    if-ge v6, v15, :cond_3

    .line 153
    add-int/lit8 v15, v8, 0x1

    sub-int v16, v9, v8

    sub-int v16, v16, v13

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v16

    add-int v5, v15, v16

    .line 156
    .local v5, "crossoverIndex":I
    move v7, v8

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 157
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    :cond_2
    move-object v14, v1

    .line 163
    .local v14, "tmp":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v1, v2

    .line 164
    move-object v2, v14

    .line 166
    move v8, v5

    .line 151
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 170
    .end local v5    # "crossoverIndex":I
    .end local v7    # "j":I
    .end local v14    # "tmp":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    move v7, v8

    .restart local v7    # "j":I
    :goto_2
    if-ge v7, v9, :cond_4

    .line 171
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 175
    :cond_4
    new-instance v15, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v15
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
    .line 110
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-nez v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p1    # "first":Lorg/apache/commons/math3/genetics/Chromosome;
    check-cast p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p2    # "second":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/genetics/NPointCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0
.end method

.method public getCrossoverPoints()I
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/genetics/NPointCrossover;, "Lorg/apache/commons/math3/genetics/NPointCrossover<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/genetics/NPointCrossover;->crossoverPoints:I

    return v0
.end method
