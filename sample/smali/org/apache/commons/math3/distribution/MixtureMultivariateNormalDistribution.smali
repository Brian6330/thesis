.class public Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
.super Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;
.source "MixtureMultivariateNormalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution",
        "<",
        "Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;",
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
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;-><init>(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 0
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
            "Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public constructor <init>([D[[D[[[D)V
    .locals 1
    .param p1, "weights"    # [D
    .param p2, "means"    # [[D
    .param p3, "covariances"    # [[[D

    .prologue
    .line 55
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->createComponents([D[[D[[[D)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;-><init>(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method private static createComponents([D[[D[[[D)Ljava/util/List;
    .locals 6
    .param p0, "weights"    # [D
    .param p1, "means"    # [[D
    .param p2, "covariances"    # [[[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[[D[[[D)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v2, "mvns":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 105
    new-instance v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>([D[[D)V

    .line 108
    .local v0, "dist":Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "dist":Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    :cond_0
    return-object v2
.end method
