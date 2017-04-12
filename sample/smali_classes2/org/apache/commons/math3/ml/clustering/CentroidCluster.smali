.class public Lorg/apache/commons/math3/ml/clustering/CentroidCluster;
.super Lorg/apache/commons/math3/ml/clustering/Cluster;
.source "CentroidCluster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Cluster",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2aad9e9d511ccac0L


# instance fields
.field private final center:Lorg/apache/commons/math3/ml/clustering/Clusterable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V
    .locals 0
    .param p1, "center"    # Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/Cluster;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->center:Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 43
    return-void
.end method


# virtual methods
.method public getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->center:Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v0
.end method
