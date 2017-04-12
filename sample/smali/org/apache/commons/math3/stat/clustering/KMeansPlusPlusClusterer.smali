.class public Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;
.super Ljava/lang/Object;
.source "KMeansPlusPlusClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$1;,
        Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;-><init>(Ljava/util/Random;Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "emptyStrategy"    # Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 87
    return-void
.end method

.method private static assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I
    .locals 8
    .param p2, "assignments"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
            "<TT;>;>;",
            "Ljava/util/Collection",
            "<TT;>;[I)I"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "assignedDifferently":I
    const/4 v5, 0x0

    .line 232
    .local v5, "pointIndex":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 233
    .local v4, "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-static {p0, v4}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/stat/clustering/Clusterable;)I

    move-result v2

    .line 234
    .local v2, "clusterIndex":I
    aget v7, p2, v5

    if-eq v2, v7, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 239
    .local v1, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    .line 240
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pointIndex":I
    .local v6, "pointIndex":I
    aput v2, p2, v5

    move v5, v6

    .line 241
    .end local v6    # "pointIndex":I
    .restart local v5    # "pointIndex":I
    goto :goto_0

    .line 243
    .end local v1    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v2    # "clusterIndex":I
    .end local v4    # "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_1
    return v0
.end method

.method private static chooseInitialCenters(Ljava/util/Collection;ILjava/util/Random;)Ljava/util/List;
    .locals 26
    .param p1, "k"    # I
    .param p2, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable",
            "<TT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;I",
            "Ljava/util/Random;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 263
    .local v16, "pointList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .line 267
    .local v14, "numPoints":I
    new-array v0, v14, [Z

    move-object/from16 v22, v0

    .line 270
    .local v22, "taken":[Z
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v17, "resultSet":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 275
    .local v9, "firstPointIndex":I
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 277
    .local v8, "firstPoint":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v23, Lorg/apache/commons/math3/stat/clustering/Cluster;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/16 v23, 0x1

    aput-boolean v23, v22, v9

    .line 284
    new-array v12, v14, [D

    .line 288
    .local v12, "minDistSquared":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v14, :cond_1

    .line 289
    if-eq v10, v9, :cond_0

    .line 290
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v2

    .line 291
    .local v2, "d":D
    mul-double v24, v2, v2

    aput-wide v24, v12, v10

    .line 288
    .end local v2    # "d":D
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ge v0, v1, :cond_9

    .line 299
    const-wide/16 v6, 0x0

    .line 301
    .local v6, "distSqSum":D
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_3

    .line 302
    aget-boolean v23, v22, v10

    if-nez v23, :cond_2

    .line 303
    aget-wide v24, v12, v10

    add-double v6, v6, v24

    .line 301
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v24

    mul-double v18, v24, v6

    .line 312
    .local v18, "r":D
    const/4 v13, -0x1

    .line 316
    .local v13, "nextPointIndex":I
    const-wide/16 v20, 0x0

    .line 317
    .local v20, "sum":D
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_4

    .line 318
    aget-boolean v23, v22, v10

    if-nez v23, :cond_7

    .line 319
    aget-wide v24, v12, v10

    add-double v20, v20, v24

    .line 320
    cmpl-double v23, v20, v18

    if-ltz v23, :cond_7

    .line 321
    move v13, v10

    .line 330
    :cond_4
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_5

    .line 331
    add-int/lit8 v10, v14, -0x1

    :goto_3
    if-ltz v10, :cond_5

    .line 332
    aget-boolean v23, v22, v10

    if-nez v23, :cond_8

    .line 333
    move v13, v10

    .line 340
    :cond_5
    if-ltz v13, :cond_9

    .line 342
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 344
    .local v15, "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v23, Lorg/apache/commons/math3/stat/clustering/Cluster;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const/16 v23, 0x1

    aput-boolean v23, v22, v13

    .line 349
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 352
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v14, :cond_1

    .line 354
    aget-boolean v23, v22, v11

    if-nez v23, :cond_6

    .line 355
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v2

    .line 356
    .restart local v2    # "d":D
    mul-double v4, v2, v2

    .line 357
    .local v4, "d2":D
    aget-wide v24, v12, v11

    cmpg-double v23, v4, v24

    if-gez v23, :cond_6

    .line 358
    aput-wide v4, v12, v11

    .line 352
    .end local v2    # "d":D
    .end local v4    # "d2":D
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 317
    .end local v11    # "j":I
    .end local v15    # "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 331
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 372
    .end local v6    # "distSqSum":D
    .end local v13    # "nextPointIndex":I
    .end local v18    # "r":D
    .end local v20    # "sum":D
    :cond_9
    return-object v17
.end method

.method private getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 463
    .local v6, "maxDistance":D
    const/4 v9, 0x0

    .line 464
    .local v9, "selectedCluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    const/4 v10, -0x1

    .line 465
    .local v10, "selectedPoint":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 468
    .local v1, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v0

    .line 469
    .local v0, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v8

    .line 470
    .local v8, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 471
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v2

    .line 472
    .local v2, "distance":D
    cmpl-double v11, v2, v6

    if-lez v11, :cond_1

    .line 473
    move-wide v6, v2

    .line 474
    move-object v9, v1

    .line 475
    move v10, v4

    .line 470
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v1    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v2    # "distance":D
    .end local v4    # "i":I
    .end local v8    # "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    if-nez v9, :cond_3

    .line 483
    new-instance v11, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v11

    .line 486
    :cond_3
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v11
.end method

.method private static getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/stat/clustering/Clusterable;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable",
            "<TT;>;>(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
            "<TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .local p1, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 501
    .local v6, "minDistance":D
    const/4 v1, 0x0

    .line 502
    .local v1, "clusterIndex":I
    const/4 v5, 0x0

    .line 503
    .local v5, "minCluster":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 504
    .local v0, "c":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v2

    .line 505
    .local v2, "distance":D
    cmpg-double v8, v2, v6

    if-gez v8, :cond_0

    .line 506
    move-wide v6, v2

    .line 507
    move v5, v1

    .line 509
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 510
    goto :goto_0

    .line 511
    .end local v0    # "c":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v2    # "distance":D
    :cond_1
    return v5
.end method

.method private getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const/4 v2, 0x0

    .line 428
    .local v2, "maxNumber":I
    const/4 v4, 0x0

    .line 429
    .local v4, "selected":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 432
    .local v0, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 435
    .local v3, "number":I
    if-le v3, v2, :cond_0

    .line 436
    move v2, v3

    .line 437
    move-object v4, v0

    goto :goto_0

    .line 443
    .end local v0    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v3    # "number":I
    :cond_1
    if-nez v4, :cond_2

    .line 444
    new-instance v6, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 448
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v5

    .line 449
    .local v5, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v6
.end method

.method private getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 386
    .local v4, "maxVariance":D
    const/4 v7, 0x0

    .line 387
    .local v7, "selected":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 388
    .local v1, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 391
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v0

    .line 392
    .local v0, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v9, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 393
    .local v9, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 394
    .local v6, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-interface {v6, v0}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    goto :goto_1

    .line 396
    .end local v6    # "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_1
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v10

    .line 399
    .local v10, "variance":D
    cmpl-double v12, v10, v4

    if-lez v12, :cond_0

    .line 400
    move-wide v4, v10

    .line 401
    move-object v7, v1

    goto :goto_0

    .line 408
    .end local v0    # "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v1    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v10    # "variance":D
    :cond_2
    if-nez v7, :cond_3

    .line 409
    new-instance v12, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 413
    :cond_3
    invoke-virtual {v7}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v8

    .line 414
    .local v8, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v12, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-interface {v8, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v12
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;II)Ljava/util/List;
    .locals 17
    .param p2, "k"    # I
    .param p3, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;II)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
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
    .line 164
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    move/from16 v0, p2

    if-ge v13, v0, :cond_0

    .line 168
    new-instance v13, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v13

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->chooseInitialCenters(Ljava/util/Collection;ILjava/util/Random;)Ljava/util/List;

    move-result-object v5

    .line 176
    .local v5, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    new-array v2, v13, [I

    .line 177
    .local v2, "assignments":[I
    move-object/from16 v0, p1

    invoke-static {v5, v0, v2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    .line 180
    if-gez p3, :cond_1

    const v10, 0x7fffffff

    .line 181
    .local v10, "max":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "count":I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 182
    const/4 v8, 0x0

    .line 183
    .local v8, "emptyCluster":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v12, "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 186
    .local v4, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 187
    sget-object v13, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$1;->$SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v14}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 198
    new-instance v13, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v13

    .end local v4    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v7    # "count":I
    .end local v8    # "emptyCluster":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "max":I
    .end local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    :cond_1
    move/from16 v10, p3

    .line 180
    goto :goto_0

    .line 189
    .restart local v4    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .restart local v7    # "count":I
    .restart local v8    # "emptyCluster":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "max":I
    .restart local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v11

    .line 200
    .local v11, "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :goto_3
    const/4 v8, 0x1

    .line 204
    :goto_4
    new-instance v13, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v13, v11}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 192
    .end local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v11

    .line 193
    .restart local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_3

    .line 195
    .end local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v11

    .line 196
    .restart local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_3

    .line 202
    .end local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v13

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->centroidOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .restart local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_4

    .line 206
    .end local v4    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v11    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v12, v0, v2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    move-result v3

    .line 207
    .local v3, "changes":I
    move-object v5, v12

    .line 211
    if-nez v3, :cond_4

    if-nez v8, :cond_4

    move-object v6, v5

    .line 215
    .end local v3    # "changes":I
    .end local v5    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v8    # "emptyCluster":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .local v6, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    :goto_5
    return-object v6

    .line 181
    .end local v6    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v3    # "changes":I
    .restart local v5    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v8    # "emptyCluster":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v3    # "changes":I
    .end local v8    # "emptyCluster":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    :cond_5
    move-object v6, v5

    .line 215
    .end local v5    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v6    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    goto :goto_5

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cluster(Ljava/util/Collection;III)Ljava/util/List;
    .locals 20
    .param p2, "k"    # I
    .param p3, "numTrials"    # I
    .param p4, "maxIterationsPerTrial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;III)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster",
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
    .line 108
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v4, 0x0

    .line 109
    .local v4, "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 112
    .local v6, "bestVarianceSum":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->cluster(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v9

    .line 118
    .local v9, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/16 v16, 0x0

    .line 119
    .local v16, "varianceSum":D
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 120
    .local v8, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 123
    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v5

    .line 124
    .local v5, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v14, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v14}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 125
    .local v14, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 126
    .local v13, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-interface {v13, v5}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    goto :goto_2

    .line 128
    .end local v13    # "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_1
    invoke-virtual {v14}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v18

    add-double v16, v16, v18

    goto :goto_1

    .line 133
    .end local v5    # "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v8    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    :cond_2
    cmpg-double v15, v16, v6

    if-gtz v15, :cond_3

    .line 135
    move-object v4, v9

    .line 136
    move-wide/from16 v6, v16

    .line 112
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 142
    .end local v9    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v16    # "varianceSum":D
    :cond_4
    return-object v4
.end method
