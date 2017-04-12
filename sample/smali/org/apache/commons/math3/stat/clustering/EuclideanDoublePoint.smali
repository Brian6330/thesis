.class public Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
.super Ljava/lang/Object;
.source "EuclideanDoublePoint.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/clustering/Clusterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable",
        "<",
        "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f63c2790e4eb9f0L


# instance fields
.field private final point:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0
    .param p1, "point"    # [D

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic centroidOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    move-result-object v0

    return-object v0
.end method

.method public centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;",
            ">;)",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object v4

    array-length v4, v4

    new-array v0, v4, [D

    .line 54
    .local v0, "centroid":[D
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    .line 55
    .local v3, "p":Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 56
    aget-wide v4, v0, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object v6

    aget-wide v6, v6, v1

    add-double/2addr v4, v6

    aput-wide v4, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    .end local v3    # "p":Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 60
    aget-wide v4, v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    aput-wide v4, v0, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;-><init>([D)V

    return-object v4
.end method

.method public bridge synthetic distanceFrom(Ljava/lang/Object;)D
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;)D
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->distance([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 73
    instance-of v0, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0
.end method

.method public getPoint()[D
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
