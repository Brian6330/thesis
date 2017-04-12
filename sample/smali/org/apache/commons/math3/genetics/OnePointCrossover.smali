.class public Lorg/apache/commons/math3/genetics/OnePointCrossover;
.super Ljava/lang/Object;
.source "OnePointCrossover.java"

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
    .line 51
    .local p0, "this":Lorg/apache/commons/math3/genetics/OnePointCrossover;, "Lorg/apache/commons/math3/genetics/OnePointCrossover<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private crossover(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 10
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
    .line 98
    .local p0, "this":Lorg/apache/commons/math3/genetics/OnePointCrossover;, "Lorg/apache/commons/math3/genetics/OnePointCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v4

    .line 99
    .local v4, "length":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v7

    if-eq v4, v7, :cond_0

    .line 100
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v8

    invoke-direct {v7, v8, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 104
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v5

    .line 105
    .local v5, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v6

    .line 107
    .local v6, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v1, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v7

    add-int/lit8 v8, v4, -0x2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 114
    .local v2, "crossoverIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 115
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    .line 120
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/genetics/ChromosomePair;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v8

    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v7
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
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/genetics/OnePointCrossover;, "Lorg/apache/commons/math3/genetics/OnePointCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 84
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p1    # "first":Lorg/apache/commons/math3/genetics/Chromosome;
    check-cast p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p2    # "second":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/genetics/OnePointCrossover;->crossover(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0
.end method
