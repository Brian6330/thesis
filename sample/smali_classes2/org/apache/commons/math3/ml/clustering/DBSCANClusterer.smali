.class public Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "DBSCANClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Clusterer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final eps:D

.field private final minPts:I


# direct methods
.method public constructor <init>(DI)V
    .locals 1
    .param p1, "eps"    # D
    .param p3, "minPts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;-><init>(DILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 86
    return-void
.end method

.method public constructor <init>(DILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 3
    .param p1, "eps"    # D
    .param p3, "minPts"    # I
    .param p4, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 100
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 101
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 103
    :cond_0
    if-gez p3, :cond_1

    .line 104
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 106
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    .line 107
    iput p3, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    .line 108
    return-void
.end method

.method private expandCluster(Lorg/apache/commons/math3/ml/clustering/Cluster;Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/List;Ljava/util/Collection;Ljava/util/Map;)Lorg/apache/commons/math3/ml/clustering/Cluster;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/Cluster",
            "<TT;>;TT;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
            "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;",
            ">;)",
            "Lorg/apache/commons/math3/ml/clustering/Cluster",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    .local p2, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .local p3, "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p5, "visited":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;>;"
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 175
    sget-object v5, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {p5, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v4, "seeds":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .line 179
    .local v2, "index":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 180
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 181
    .local v0, "current":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    .line 183
    .local v3, "pStatus":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    if-nez v3, :cond_0

    .line 184
    invoke-direct {p0, v0, p4}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 185
    .local v1, "currentNeighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    if-lt v5, v6, :cond_0

    .line 186
    invoke-direct {p0, v4, v1}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 190
    .end local v1    # "currentNeighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    sget-object v5, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    if-eq v3, v5, :cond_1

    .line 191
    sget-object v5, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {p5, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 195
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 196
    goto :goto_0

    .line 197
    .end local v0    # "current":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v3    # "pStatus":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    :cond_2
    return-object p1
.end method

.method private getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .local p2, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v2, "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 210
    .local v1, "neighbor":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 211
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v1    # "neighbor":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_1
    return-object v2
.end method

.method private merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "one":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "two":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v2, "oneSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 227
    .local v1, "item":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v1    # "item":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_1
    return-object p1
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/Cluster",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v6, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v5, "visited":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 143
    .local v2, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0, v2, p1}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 147
    .local v3, "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    if-lt v0, v4, :cond_1

    .line 149
    new-instance v1, Lorg/apache/commons/math3/ml/clustering/Cluster;

    invoke-direct {v1}, Lorg/apache/commons/math3/ml/clustering/Cluster;-><init>()V

    .local v1, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    move-object v0, p0

    move-object v4, p1

    .line 150
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->expandCluster(Lorg/apache/commons/math3/ml/clustering/Cluster;Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/List;Ljava/util/Collection;Ljava/util/Map;)Lorg/apache/commons/math3/ml/clustering/Cluster;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v1    # "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->NOISE:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    .end local v2    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v3    # "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    return-object v6
.end method

.method public getEps()D
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    return-wide v0
.end method

.method public getMinPts()I
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    return v0
.end method
