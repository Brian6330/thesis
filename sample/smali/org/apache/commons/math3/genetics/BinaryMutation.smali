.class public Lorg/apache/commons/math3/genetics/BinaryMutation;
.super Ljava/lang/Object;
.source "BinaryMutation.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/MutationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 7
    .param p1, "original"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 40
    instance-of v4, p1, Lorg/apache/commons/math3/genetics/BinaryChromosome;

    if-nez v4, :cond_0

    .line 41
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_BINARY_CHROMOSOME:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v4, v6, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    :cond_0
    move-object v3, p1

    .line 44
    check-cast v3, Lorg/apache/commons/math3/genetics/BinaryChromosome;

    .line 45
    .local v3, "origChrom":Lorg/apache/commons/math3/genetics/BinaryChromosome;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v2, "newRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getLength()I

    move-result v6

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v0

    .line 50
    .local v0, "geneIndex":I
    invoke-virtual {v3}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v1

    .line 53
    .local v1, "newChrom":Lorg/apache/commons/math3/genetics/Chromosome;
    return-object v1

    .end local v1    # "newChrom":Lorg/apache/commons/math3/genetics/Chromosome;
    :cond_1
    move v4, v5

    .line 50
    goto :goto_0
.end method
