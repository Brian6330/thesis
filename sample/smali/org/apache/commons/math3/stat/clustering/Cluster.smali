.class public Lorg/apache/commons/math3/stat/clustering/Cluster;
.super Ljava/lang/Object;
.source "Cluster.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2fc57ef5231e3010L


# instance fields
.field private final center:Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .local p1, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->center:Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->points:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public addPoint(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->center:Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->points:Ljava/util/List;

    return-object v0
.end method
