.class public abstract Lorg/apache/commons/math3/genetics/BinaryChromosome;
.super Lorg/apache/commons/math3/genetics/AbstractListChromosome;
.source "BinaryChromosome.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/genetics/AbstractListChromosome",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "representation"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>([Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static randomBinaryRepresentation(I)Ljava/util/List;
    .locals 4
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v1, "rList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 71
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected checkValidity(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .local p1, "chromosomeRepresentation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    .local v0, "i":I
    if-ltz v0, :cond_1

    if-le v0, v4, :cond_0

    .line 56
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/genetics/InvalidRepresentationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_BINARY_DIGIT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/genetics/InvalidRepresentationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 60
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z
    .locals 5
    .param p1, "another"    # Lorg/apache/commons/math3/genetics/Chromosome;

    .prologue
    const/4 v3, 0x0

    .line 79
    instance-of v2, p1, Lorg/apache/commons/math3/genetics/BinaryChromosome;

    if-nez v2, :cond_0

    move v2, v3

    .line 94
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 82
    check-cast v0, Lorg/apache/commons/math3/genetics/BinaryChromosome;

    .line 84
    .local v0, "anotherBc":Lorg/apache/commons/math3/genetics/BinaryChromosome;
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getLength()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getLength()I

    move-result v4

    if-eq v2, v4, :cond_1

    move v2, v3

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/BinaryChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 90
    goto :goto_0

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
