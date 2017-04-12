.class public Lorg/apache/commons/math3/genetics/ElitisticListPopulation;
.super Lorg/apache/commons/math3/genetics/ListPopulation;
.source "ElitisticListPopulation.java"


# instance fields
.field private elitismRate:D


# direct methods
.method public constructor <init>(ID)V
    .locals 2
    .param p1, "populationLimit"    # I
    .param p2, "elitismRate"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(I)V

    .line 38
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->elitismRate:D

    .line 71
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->setElitismRate(D)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ID)V
    .locals 3
    .param p2, "populationLimit"    # I
    .param p3, "elitismRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;ID)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "chromosomes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/genetics/Chromosome;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(Ljava/util/List;I)V

    .line 38
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->elitismRate:D

    .line 56
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->setElitismRate(D)V

    .line 57
    return-void
.end method


# virtual methods
.method public getElitismRate()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->elitismRate:D

    return-wide v0
.end method

.method public nextGeneration()Lorg/apache/commons/math3/genetics/Population;
    .locals 8

    .prologue
    .line 82
    new-instance v2, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->getPopulationLimit()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->getElitismRate()D

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;-><init>(ID)V

    .line 85
    .local v2, "nextGeneration":Lorg/apache/commons/math3/genetics/ElitisticListPopulation;
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->getChromosomeList()Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "oldChromosomes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/genetics/Chromosome;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 89
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->getElitismRate()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 90
    .local v0, "boundIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 91
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v2
.end method

.method public setElitismRate(D)V
    .locals 5
    .param p1, "elitismRate"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 103
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ELITISM_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 106
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->elitismRate:D

    .line 107
    return-void
.end method
