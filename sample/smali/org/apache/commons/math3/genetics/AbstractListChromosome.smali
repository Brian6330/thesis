.class public abstract Lorg/apache/commons/math3/genetics/AbstractListChromosome;
.super Lorg/apache/commons/math3/genetics/Chromosome;
.source "AbstractListChromosome.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/genetics/Chromosome;"
    }
.end annotation


# instance fields
.field private final representation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "copyList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p1, "representation":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/genetics/Chromosome;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->checkValidity(Ljava/util/List;)V

    .line 61
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .end local p1    # "representation":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->representation:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    .local p1, "representation":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract checkValidity(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getRepresentation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->representation:Ljava/util/List;

    return-object v0
.end method

.method public abstract newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lorg/apache/commons/math3/genetics/AbstractListChromosome",
            "<TT;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/commons/math3/genetics/AbstractListChromosome;, "Lorg/apache/commons/math3/genetics/AbstractListChromosome<TT;>;"
    const-string v0, "(f=%s %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getFitness()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
