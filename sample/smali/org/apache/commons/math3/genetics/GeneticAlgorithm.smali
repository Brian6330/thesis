.class public Lorg/apache/commons/math3/genetics/GeneticAlgorithm;
.super Ljava/lang/Object;
.source "GeneticAlgorithm.java"


# static fields
.field private static randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;


# instance fields
.field private final crossoverPolicy:Lorg/apache/commons/math3/genetics/CrossoverPolicy;

.field private final crossoverRate:D

.field private generationsEvolved:I

.field private final mutationPolicy:Lorg/apache/commons/math3/genetics/MutationPolicy;

.field private final mutationRate:D

.field private final selectionPolicy:Lorg/apache/commons/math3/genetics/SelectionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/genetics/CrossoverPolicy;DLorg/apache/commons/math3/genetics/MutationPolicy;DLorg/apache/commons/math3/genetics/SelectionPolicy;)V
    .locals 5
    .param p1, "crossoverPolicy"    # Lorg/apache/commons/math3/genetics/CrossoverPolicy;
    .param p2, "crossoverRate"    # D
    .param p4, "mutationPolicy"    # Lorg/apache/commons/math3/genetics/MutationPolicy;
    .param p5, "mutationRate"    # D
    .param p7, "selectionPolicy"    # Lorg/apache/commons/math3/genetics/SelectionPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->generationsEvolved:I

    .line 73
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSOVER_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 77
    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_3

    .line 78
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MUTATION_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 81
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->crossoverPolicy:Lorg/apache/commons/math3/genetics/CrossoverPolicy;

    .line 82
    iput-wide p2, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->crossoverRate:D

    .line 83
    iput-object p4, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->mutationPolicy:Lorg/apache/commons/math3/genetics/MutationPolicy;

    .line 84
    iput-wide p5, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->mutationRate:D

    .line 85
    iput-object p7, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->selectionPolicy:Lorg/apache/commons/math3/genetics/SelectionPolicy;

    .line 86
    return-void
.end method

.method public static declared-synchronized getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 2

    .prologue
    .line 103
    const-class v0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setRandomGenerator(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 94
    const-class v0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public evolve(Lorg/apache/commons/math3/genetics/Population;Lorg/apache/commons/math3/genetics/StoppingCondition;)Lorg/apache/commons/math3/genetics/Population;
    .locals 2
    .param p1, "initial"    # Lorg/apache/commons/math3/genetics/Population;
    .param p2, "condition"    # Lorg/apache/commons/math3/genetics/StoppingCondition;

    .prologue
    .line 117
    move-object v0, p1

    .line 118
    .local v0, "current":Lorg/apache/commons/math3/genetics/Population;
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->generationsEvolved:I

    .line 119
    :goto_0
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/genetics/StoppingCondition;->isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->nextGeneration(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Population;

    move-result-object v0

    .line 121
    iget v1, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->generationsEvolved:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->generationsEvolved:I

    goto :goto_0

    .line 123
    :cond_0
    return-object v0
.end method

.method public getCrossoverPolicy()Lorg/apache/commons/math3/genetics/CrossoverPolicy;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->crossoverPolicy:Lorg/apache/commons/math3/genetics/CrossoverPolicy;

    return-object v0
.end method

.method public getCrossoverRate()D
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->crossoverRate:D

    return-wide v0
.end method

.method public getGenerationsEvolved()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->generationsEvolved:I

    return v0
.end method

.method public getMutationPolicy()Lorg/apache/commons/math3/genetics/MutationPolicy;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->mutationPolicy:Lorg/apache/commons/math3/genetics/MutationPolicy;

    return-object v0
.end method

.method public getMutationRate()D
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->mutationRate:D

    return-wide v0
.end method

.method public getSelectionPolicy()Lorg/apache/commons/math3/genetics/SelectionPolicy;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->selectionPolicy:Lorg/apache/commons/math3/genetics/SelectionPolicy;

    return-object v0
.end method

.method public nextGeneration(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Population;
    .locals 8
    .param p1, "current"    # Lorg/apache/commons/math3/genetics/Population;

    .prologue
    .line 149
    invoke-interface {p1}, Lorg/apache/commons/math3/genetics/Population;->nextGeneration()Lorg/apache/commons/math3/genetics/Population;

    move-result-object v0

    .line 151
    .local v0, "nextGeneration":Lorg/apache/commons/math3/genetics/Population;
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v3

    .line 153
    .local v3, "randGen":Lorg/apache/commons/math3/random/RandomGenerator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationSize()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationLimit()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getSelectionPolicy()Lorg/apache/commons/math3/genetics/SelectionPolicy;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/commons/math3/genetics/SelectionPolicy;->select(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v1

    .line 158
    .local v1, "pair":Lorg/apache/commons/math3/genetics/ChromosomePair;
    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getCrossoverRate()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getCrossoverPolicy()Lorg/apache/commons/math3/genetics/CrossoverPolicy;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/genetics/CrossoverPolicy;->crossover(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v1

    .line 164
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getMutationRate()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 166
    new-instance v2, Lorg/apache/commons/math3/genetics/ChromosomePair;

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getMutationPolicy()Lorg/apache/commons/math3/genetics/MutationPolicy;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/genetics/MutationPolicy;->mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getMutationPolicy()Lorg/apache/commons/math3/genetics/MutationPolicy;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/genetics/MutationPolicy;->mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    .end local v1    # "pair":Lorg/apache/commons/math3/genetics/ChromosomePair;
    .local v2, "pair":Lorg/apache/commons/math3/genetics/ChromosomePair;
    move-object v1, v2

    .line 172
    .end local v2    # "pair":Lorg/apache/commons/math3/genetics/ChromosomePair;
    .restart local v1    # "pair":Lorg/apache/commons/math3/genetics/ChromosomePair;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/genetics/Population;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    .line 174
    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationSize()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationLimit()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 176
    invoke-virtual {v1}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/genetics/Population;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    goto :goto_0

    .line 180
    .end local v1    # "pair":Lorg/apache/commons/math3/genetics/ChromosomePair;
    :cond_3
    return-object v0
.end method
