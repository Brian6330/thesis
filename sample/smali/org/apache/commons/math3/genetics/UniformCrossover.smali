.class public Lorg/apache/commons/math3/genetics/UniformCrossover;
.super Ljava/lang/Object;
.source "UniformCrossover.java"

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
.field private final ratio:D


# direct methods
.method public constructor <init>(D)V
    .locals 9
    .param p1, "ratio"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/genetics/UniformCrossover;, "Lorg/apache/commons/math3/genetics/UniformCrossover<TT;>;"
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    cmpg-double v0, p1, v4

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v6

    if-lez v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSOVER_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 66
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/genetics/UniformCrossover;->ratio:D

    .line 67
    return-void
.end method

.method private mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 12
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
    .line 105
    .local p0, "this":Lorg/apache/commons/math3/genetics/UniformCrossover;, "Lorg/apache/commons/math3/genetics/UniformCrossover<TT;>;"
    .local p1, "first":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p2, "second":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v3

    .line 106
    .local v3, "length":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v7

    if-eq v3, v7, :cond_0

    .line 107
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getLength()I

    move-result v8

    invoke-direct {v7, v8, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 111
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, "parent1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v5

    .line 114
    .local v5, "parent2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "child1Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v1, "child2Rep":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v6

    .line 119
    .local v6, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 121
    invoke-interface {v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/genetics/UniformCrossover;->ratio:D

    cmpg-double v7, v8, v10

    if-gez v7, :cond_1

    .line 123
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
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
    .line 89
    .local p0, "this":Lorg/apache/commons/math3/genetics/UniformCrossover;, "Lorg/apache/commons/math3/genetics/UniformCrossover<TT;>;"
    instance-of v0, p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_FIXED_LENGTH_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 92
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p1    # "first":Lorg/apache/commons/math3/genetics/Chromosome;
    check-cast p2, Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    .end local p2    # "second":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/genetics/UniformCrossover;->mate(Lorg/apache/commons/math3/genetics/AbstractListChromosome;Lorg/apache/commons/math3/genetics/AbstractListChromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()D
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/math3/genetics/UniformCrossover;, "Lorg/apache/commons/math3/genetics/UniformCrossover<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/UniformCrossover;->ratio:D

    return-wide v0
.end method
