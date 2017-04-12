.class public abstract Lorg/apache/commons/math3/ml/clustering/Clusterer;
.super Ljava/lang/Object;
.source "Clusterer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/Clusterer;, "Lorg/apache/commons/math3/ml/clustering/Clusterer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/Clusterer;->measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 44
    return-void
.end method


# virtual methods
.method public abstract cluster(Ljava/util/Collection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation
.end method

.method protected distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D
    .locals 3
    .param p1, "p1"    # Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .param p2, "p2"    # Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/Clusterer;, "Lorg/apache/commons/math3/ml/clustering/Clusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/Clusterer;->measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-interface {p1}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceMeasure()Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/Clusterer;, "Lorg/apache/commons/math3/ml/clustering/Clusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/Clusterer;->measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-object v0
.end method
