.class public Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "MixtureMultivariateRealDistribution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;",
        ">",
        "Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;"
    }
.end annotation


# instance fields
.field private final distribution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final weight:[D


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;, "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution<TT;>;"
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;>;"
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 11
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;, "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution<TT;>;"
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;>;"
    const/4 v10, 0x0

    .line 74
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v6}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 77
    .local v3, "numComp":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getDimension()I

    move-result v1

    .line 78
    .local v1, "dim":I
    const-wide/16 v4, 0x0

    .line 79
    .local v4, "weightSum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 80
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/Pair;

    .line 81
    .local v0, "comp":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v6}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 82
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v6}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v6

    invoke-direct {v7, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 84
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 85
    new-instance v7, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v7

    .line 87
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "comp":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;"
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    new-instance v6, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 96
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    .line 97
    new-array v6, v3, [D

    iput-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    .line 98
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 99
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/Pair;

    .line 100
    .restart local v0    # "comp":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;"
    iget-object v7, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    div-double/2addr v8, v4

    aput-wide v8, v7, v2

    .line 101
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "comp":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public density([D)D
    .locals 8
    .param p1, "values"    # [D

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;, "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution<TT;>;"
    const-wide/16 v2, 0x0

    .line 108
    .local v2, "p":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    aget-wide v4, v1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->density([D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-wide v2
.end method

.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;, "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;TT;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 166
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v1
.end method

.method public reseedRandomGenerator(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;, "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->reseedRandomGenerator(J)V

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->reseedRandomGenerator(J)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public sample()[D
    .locals 8

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;, "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution<TT;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "vals":[D
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    .line 122
    .local v2, "randomValue":D
    const-wide/16 v4, 0x0

    .line 124
    .local v4, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 125
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    aget-wide v6, v6, v0

    add-double/2addr v4, v6

    .line 126
    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    .line 128
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v6}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->sample()[D

    move-result-object v1

    .line 133
    :cond_0
    if-nez v1, :cond_1

    .line 137
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v6}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->sample()[D

    move-result-object v1

    .line 140
    :cond_1
    return-object v1

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
