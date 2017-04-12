.class public abstract Lorg/apache/commons/math3/genetics/Chromosome;
.super Ljava/lang/Object;
.source "Chromosome.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/math3/genetics/Fitness;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/genetics/Chromosome;",
        ">;",
        "Lorg/apache/commons/math3/genetics/Fitness;"
    }
.end annotation


# static fields
.field private static final NO_FITNESS:D = -Infinity


# instance fields
.field private fitness:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->fitness:D

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lorg/apache/commons/math3/genetics/Chromosome;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/Chromosome;->compareTo(Lorg/apache/commons/math3/genetics/Chromosome;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/genetics/Chromosome;)I
    .locals 4
    .param p1, "another"    # Lorg/apache/commons/math3/genetics/Chromosome;

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method protected findSameChromosome(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 3
    .param p1, "population"    # Lorg/apache/commons/math3/genetics/Population;

    .prologue
    .line 83
    invoke-interface {p1}, Lorg/apache/commons/math3/genetics/Population;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/genetics/Chromosome;

    .line 84
    .local v0, "anotherChr":Lorg/apache/commons/math3/genetics/Chromosome;
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/genetics/Chromosome;->isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    .end local v0    # "anotherChr":Lorg/apache/commons/math3/genetics/Chromosome;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitness()D
    .locals 4

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->fitness:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/Chromosome;->fitness()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->fitness:D

    .line 46
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->fitness:D

    return-wide v0
.end method

.method protected isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z
    .locals 1
    .param p1, "another"    # Lorg/apache/commons/math3/genetics/Chromosome;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public searchForFitnessUpdate(Lorg/apache/commons/math3/genetics/Population;)V
    .locals 4
    .param p1, "population"    # Lorg/apache/commons/math3/genetics/Population;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/Chromosome;->findSameChromosome(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v0

    .line 99
    .local v0, "sameChromosome":Lorg/apache/commons/math3/genetics/Chromosome;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/genetics/Chromosome;->fitness:D

    .line 102
    :cond_0
    return-void
.end method
