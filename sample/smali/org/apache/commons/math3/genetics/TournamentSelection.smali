.class public Lorg/apache/commons/math3/genetics/TournamentSelection;
.super Ljava/lang/Object;
.source "TournamentSelection.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/SelectionPolicy;


# instance fields
.field private arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "arity"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    .line 45
    return-void
.end method

.method private tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 9
    .param p1, "population"    # Lorg/apache/commons/math3/genetics/ListPopulation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationSize()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    if-ge v4, v5, :cond_0

    .line 72
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_TOURNAMENT_ARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 76
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/genetics/TournamentSelection$1;

    iget v4, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/math3/genetics/TournamentSelection$1;-><init>(Lorg/apache/commons/math3/genetics/TournamentSelection;I)V

    .line 84
    .local v3, "tournamentPopulation":Lorg/apache/commons/math3/genetics/ListPopulation;
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getChromosomes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v0, "chromosomes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/genetics/Chromosome;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    if-ge v1, v4, :cond_1

    .line 87
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    .line 88
    .local v2, "rind":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/genetics/ListPopulation;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "rind":I
    :cond_1
    invoke-virtual {v3}, Lorg/apache/commons/math3/genetics/ListPopulation;->getFittestChromosome()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    return v0
.end method

.method public select(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 3
    .param p1, "population"    # Lorg/apache/commons/math3/genetics/Population;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/genetics/ListPopulation;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/genetics/TournamentSelection;->tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v0

    check-cast p1, Lorg/apache/commons/math3/genetics/ListPopulation;

    .end local p1    # "population":Lorg/apache/commons/math3/genetics/Population;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/TournamentSelection;->tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v1
.end method

.method public setArity(I)V
    .locals 0
    .param p1, "arity"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    .line 112
    return-void
.end method
