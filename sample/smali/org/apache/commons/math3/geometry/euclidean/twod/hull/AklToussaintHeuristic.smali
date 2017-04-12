.class public final Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;
.super Ljava/lang/Object;
.source "AklToussaintHeuristic.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static varargs buildQuadrilateral([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Ljava/util/List;
    .locals 6
    .param p0, "points"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v4, "quadrilateral":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 108
    .local v3, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    return-object v4
.end method

.method private static insideQuadrilateral(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)Z
    .locals 14
    .param p0, "point"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "quadrilateralPoints":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 124
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 125
    .local v1, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 127
    .local v4, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v7, v8

    .line 150
    :cond_1
    :goto_0
    return v7

    .line 132
    :cond_2
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v2

    .line 133
    .local v2, "last":D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 135
    .local v5, "size":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_6

    .line 136
    move-object v1, v4

    .line 137
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v5, :cond_4

    move v6, v7

    :goto_2
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 139
    .restart local v4    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    move v7, v8

    .line 140
    goto :goto_0

    .line 137
    :cond_4
    add-int/lit8 v6, v0, 0x1

    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v10

    mul-double/2addr v10, v2

    const-wide/16 v12, 0x0

    cmpg-double v6, v10, v12

    if-ltz v6, :cond_1

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v7, v8

    .line 150
    goto :goto_0
.end method

.method public static reducePoints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    const/4 v8, 0x0

    .line 57
    .local v8, "size":I
    const/4 v3, 0x0

    .line 58
    .local v3, "minX":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v1, 0x0

    .line 59
    .local v1, "maxX":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v4, 0x0

    .line 60
    .local v4, "minY":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v2, 0x0

    .line 61
    .local v2, "maxY":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 62
    .local v5, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    if-eqz v3, :cond_0

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v12

    cmpg-double v9, v10, v12

    if-gez v9, :cond_1

    .line 63
    :cond_0
    move-object v3, v5

    .line 65
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-lez v9, :cond_3

    .line 66
    :cond_2
    move-object v1, v5

    .line 68
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    cmpg-double v9, v10, v12

    if-gez v9, :cond_5

    .line 69
    :cond_4
    move-object v4, v5

    .line 71
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-lez v9, :cond_7

    .line 72
    :cond_6
    move-object v2, v5

    .line 74
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_8
    const/4 v9, 0x4

    if-ge v8, v9, :cond_a

    .line 96
    .end local p0    # "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    :cond_9
    :goto_1
    return-object p0

    .line 81
    .restart local p0    # "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    :cond_a
    const/4 v9, 0x4

    new-array v9, v9, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-static {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;->buildQuadrilateral([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Ljava/util/List;

    move-result-object v6

    .line 83
    .local v6, "quadrilateral":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_9

    .line 87
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v7, "reducedPoints":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 91
    .restart local v5    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-static {v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;->insideQuadrilateral(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 92
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_c
    move-object p0, v7

    .line 96
    goto :goto_1
.end method
