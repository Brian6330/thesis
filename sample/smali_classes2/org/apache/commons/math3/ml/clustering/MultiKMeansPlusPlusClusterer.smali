.class public Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "MultiKMeansPlusPlusClusterer.java"


# annotations
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
.field private final clusterer:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final evaluator:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final numTrials:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;I)V
    .locals 2
    .param p2, "numTrials"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusterer":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getDistanceMeasure()Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;-><init>(Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;ILorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;ILorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;)V
    .locals 1
    .param p2, "numTrials"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer",
            "<TT;>;I",
            "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusterer":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p3, "evaluator":Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;, "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getDistanceMeasure()Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->clusterer:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;

    .line 65
    iput p2, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->numTrials:I

    .line 66
    iput-object p3, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->evaluator:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    .line 67
    return-void
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
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 111
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 114
    .local v2, "bestVarianceSum":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->numTrials:I

    if-ge v4, v5, :cond_1

    .line 117
    iget-object v5, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->clusterer:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;

    invoke-virtual {v5, p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->cluster(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->evaluator:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->score(Ljava/util/List;)D

    move-result-wide v6

    .line 122
    .local v6, "varianceSum":D
    iget-object v5, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->evaluator:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    invoke-virtual {v5, v6, v7, v2, v3}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->isBetterScore(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    move-object v0, v1

    .line 125
    move-wide v2, v6

    .line 114
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .end local v6    # "varianceSum":D
    :cond_1
    return-object v0
.end method

.method public getClusterEvaluator()Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->evaluator:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    return-object v0
.end method

.method public getClusterer()Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->clusterer:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;

    return-object v0
.end method

.method public getNumTrials()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->numTrials:I

    return v0
.end method
