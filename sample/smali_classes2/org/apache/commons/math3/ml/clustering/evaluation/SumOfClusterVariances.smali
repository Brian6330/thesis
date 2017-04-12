.class public Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;
.super Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
.source "SumOfClusterVariances.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;, "Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 46
    return-void
.end method


# virtual methods
.method public score(Ljava/util/List;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster",
            "<TT;>;>;)D"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;, "Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances<TT;>;"
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;>;"
    const-wide/16 v6, 0x0

    .line 51
    .local v6, "varianceSum":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Cluster;

    .line 52
    .local v1, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;->centroidOf(Lorg/apache/commons/math3/ml/clustering/Cluster;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v0

    .line 57
    .local v0, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 58
    .local v5, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 59
    .local v4, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    goto :goto_1

    .line 61
    .end local v4    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v8

    add-double/2addr v6, v8

    goto :goto_0

    .line 65
    .end local v0    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v1    # "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    :cond_2
    return-wide v6
.end method
