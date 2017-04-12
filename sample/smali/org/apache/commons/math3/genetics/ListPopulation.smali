.class public abstract Lorg/apache/commons/math3/genetics/ListPopulation;
.super Ljava/lang/Object;
.source "ListPopulation.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/Population;


# instance fields
.field private chromosomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;"
        }
    .end annotation
.end field

.field private populationLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "populationLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(Ljava/util/List;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 5
    .param p2, "populationLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "chromosomes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/genetics/Chromosome;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_0
    if-gtz p2, :cond_1

    .line 72
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POPULATION_LIMIT_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 74
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 75
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 78
    :cond_2
    iput p2, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V
    .locals 5
    .param p1, "chromosome"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v2, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addChromosomes(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "chromosomeColl":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/genetics/Chromosome;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    if-le v0, v1, :cond_0

    .line 118
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v2, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void
.end method

.method protected getChromosomeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    return-object v0
.end method

.method public getChromosomes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFittestChromosome()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 5

    .prologue
    .line 162
    iget-object v3, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/genetics/Chromosome;

    .line 163
    .local v0, "bestChromosome":Lorg/apache/commons/math3/genetics/Chromosome;
    iget-object v3, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/genetics/Chromosome;

    .line 164
    .local v1, "chromosome":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/genetics/Chromosome;->compareTo(Lorg/apache/commons/math3/genetics/Chromosome;)I

    move-result v3

    if-lez v3, :cond_0

    .line 166
    move-object v0, v1

    goto :goto_0

    .line 169
    .end local v1    # "chromosome":Lorg/apache/commons/math3/genetics/Chromosome;
    :cond_1
    return-object v0
.end method

.method public getPopulationLimit()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    return v0
.end method

.method public getPopulationSize()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ListPopulation;->getChromosomes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setChromosomes(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    .local p1, "chromosomes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/genetics/Chromosome;>;"
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    if-le v0, v1, :cond_1

    .line 102
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method

.method public setPopulationLimit(I)V
    .locals 4
    .param p1, "populationLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 188
    if-gtz p1, :cond_0

    .line 189
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POPULATION_LIMIT_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 192
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 194
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->populationLimit:I

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ListPopulation;->chromosomes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
