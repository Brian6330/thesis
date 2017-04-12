.class public Lorg/apache/commons/math3/genetics/RandomKeyMutation;
.super Ljava/lang/Object;
.source "RandomKeyMutation.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/MutationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 9
    .param p1, "original"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    instance-of v4, p1, Lorg/apache/commons/math3/genetics/RandomKey;

    if-nez v4, :cond_0

    .line 40
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->RANDOMKEY_MUTATION_WRONG_CLASS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    :cond_0
    move-object v1, p1

    .line 44
    check-cast v1, Lorg/apache/commons/math3/genetics/RandomKey;

    .line 45
    .local v1, "originalRk":Lorg/apache/commons/math3/genetics/RandomKey;, "Lorg/apache/commons/math3/genetics/RandomKey<*>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/RandomKey;->getRepresentation()Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, "repr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    .line 48
    .local v2, "rInd":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .local v0, "newRepr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/genetics/RandomKey;->newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;

    move-result-object v4

    return-object v4
.end method
