.class public Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "KMeansPlusPlusClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$1;,
        Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
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
.field private final emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field private final k:I

.field private final maxIterations:I

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "k"    # I

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 99
    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 1
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I
    .param p3, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 113
    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 6
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I
    .param p3, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p4, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    sget-object v5, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V

    .line 130
    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V
    .locals 0
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I
    .param p3, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p4, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p5, "emptyStrategy"    # Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 147
    iput p1, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    .line 148
    iput p2, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    .line 149
    iput-object p4, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 150
    iput-object p5, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 151
    return-void
.end method

.method private assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I
    .locals 8
    .param p3, "assignments"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;",
            "Ljava/util/Collection",
            "<TT;>;[I)I"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .local p2, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 266
    .local v0, "assignedDifferently":I
    const/4 v5, 0x0

    .line 267
    .local v5, "pointIndex":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 268
    .local v4, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/ml/clustering/Clusterable;)I

    move-result v2

    .line 269
    .local v2, "clusterIndex":I
    aget v7, p3, v5

    if-eq v2, v7, :cond_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    .line 273
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 274
    .local v1, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 275
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pointIndex":I
    .local v6, "pointIndex":I
    aput v2, p3, v5

    move v5, v6

    .line 276
    .end local v6    # "pointIndex":I
    .restart local v5    # "pointIndex":I
    goto :goto_0

    .line 278
    .end local v1    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v2    # "clusterIndex":I
    .end local v4    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_1
    return v0
.end method

.method private centroidOf(Ljava/util/Collection;I)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 10
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;I)",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-array v0, p2, [D

    .line 553
    .local v0, "centroid":[D
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 554
    .local v3, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v3}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v4

    .line 555
    .local v4, "point":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 556
    aget-wide v6, v0, v1

    aget-wide v8, v4, v1

    add-double/2addr v6, v8

    aput-wide v6, v0, v1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "i":I
    .end local v3    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v4    # "point":[D
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 560
    aget-wide v6, v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    aput-wide v6, v0, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    return-object v5
.end method

.method private chooseInitialCenters(Ljava/util/Collection;)Ljava/util/List;
    .locals 26
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

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 294
    .local v16, "pointList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .line 298
    .local v14, "numPoints":I
    new-array v0, v14, [Z

    move-object/from16 v22, v0

    .line 301
    .local v22, "taken":[Z
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v17, "resultSet":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v9

    .line 306
    .local v9, "firstPointIndex":I
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 308
    .local v8, "firstPoint":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    new-instance v23, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const/16 v23, 0x1

    aput-boolean v23, v22, v9

    .line 315
    new-array v12, v14, [D

    .line 319
    .local v12, "minDistSquared":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v14, :cond_1

    .line 320
    if-eq v10, v9, :cond_0

    .line 321
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v2

    .line 322
    .local v2, "d":D
    mul-double v24, v2, v2

    aput-wide v24, v12, v10

    .line 319
    .end local v2    # "d":D
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 330
    const-wide/16 v6, 0x0

    .line 332
    .local v6, "distSqSum":D
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_3

    .line 333
    aget-boolean v23, v22, v10

    if-nez v23, :cond_2

    .line 334
    aget-wide v24, v12, v10

    add-double v6, v6, v24

    .line 332
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 340
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v24

    mul-double v18, v24, v6

    .line 343
    .local v18, "r":D
    const/4 v13, -0x1

    .line 347
    .local v13, "nextPointIndex":I
    const-wide/16 v20, 0x0

    .line 348
    .local v20, "sum":D
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_4

    .line 349
    aget-boolean v23, v22, v10

    if-nez v23, :cond_7

    .line 350
    aget-wide v24, v12, v10

    add-double v20, v20, v24

    .line 351
    cmpl-double v23, v20, v18

    if-ltz v23, :cond_7

    .line 352
    move v13, v10

    .line 361
    :cond_4
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_5

    .line 362
    add-int/lit8 v10, v14, -0x1

    :goto_3
    if-ltz v10, :cond_5

    .line 363
    aget-boolean v23, v22, v10

    if-nez v23, :cond_8

    .line 364
    move v13, v10

    .line 371
    :cond_5
    if-ltz v13, :cond_9

    .line 373
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 375
    .local v15, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    new-instance v23, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const/16 v23, 0x1

    aput-boolean v23, v22, v13

    .line 380
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 383
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v14, :cond_1

    .line 385
    aget-boolean v23, v22, v11

    if-nez v23, :cond_6

    .line 386
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v2

    .line 387
    .restart local v2    # "d":D
    mul-double v4, v2, v2

    .line 388
    .local v4, "d2":D
    aget-wide v24, v12, v11

    cmpg-double v23, v4, v24

    if-gez v23, :cond_6

    .line 389
    aput-wide v4, v12, v11

    .line 383
    .end local v2    # "d":D
    .end local v4    # "d2":D
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 348
    .end local v11    # "j":I
    .end local v15    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 362
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 403
    .end local v6    # "distSqSum":D
    .end local v13    # "nextPointIndex":I
    .end local v18    # "r":D
    .end local v20    # "sum":D
    :cond_9
    return-object v17
.end method

.method private getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 495
    .local v6, "maxDistance":D
    const/4 v9, 0x0

    .line 496
    .local v9, "selectedCluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    const/4 v10, -0x1

    .line 497
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

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 500
    .local v1, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v0

    .line 501
    .local v0, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v8

    .line 502
    .local v8, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 503
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {p0, v11, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v2

    .line 504
    .local v2, "distance":D
    cmpl-double v11, v2, v6

    if-lez v11, :cond_1

    .line 505
    move-wide v6, v2

    .line 506
    move-object v9, v1

    .line 507
    move v10, v4

    .line 502
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v1    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v2    # "distance":D
    .end local v4    # "i":I
    .end local v8    # "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    if-nez v9, :cond_3

    .line 515
    new-instance v11, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v11

    .line 518
    :cond_3
    invoke-virtual {v9}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v11
.end method

.method private getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/ml/clustering/Clusterable;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .local p2, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 531
    .local v6, "minDistance":D
    const/4 v1, 0x0

    .line 532
    .local v1, "clusterIndex":I
    const/4 v5, 0x0

    .line 533
    .local v5, "minCluster":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 534
    .local v0, "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v8

    invoke-virtual {p0, p2, v8}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v2

    .line 535
    .local v2, "distance":D
    cmpg-double v8, v2, v6

    if-gez v8, :cond_0

    .line 536
    move-wide v6, v2

    .line 537
    move v5, v1

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 540
    goto :goto_0

    .line 541
    .end local v0    # "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v2    # "distance":D
    :cond_1
    return v5
.end method

.method private getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;>;"
    const/4 v2, 0x0

    .line 460
    .local v2, "maxNumber":I
    const/4 v4, 0x0

    .line 461
    .local v4, "selected":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
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

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/Cluster;

    .line 464
    .local v0, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 467
    .local v3, "number":I
    if-le v3, v2, :cond_0

    .line 468
    move v2, v3

    .line 469
    move-object v4, v0

    goto :goto_0

    .line 475
    .end local v0    # "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    .end local v3    # "number":I
    :cond_1
    if-nez v4, :cond_2

    .line 476
    new-instance v6, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 480
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v5

    .line 481
    .local v5, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v6
.end method

.method private getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 417
    .local v4, "maxVariance":D
    const/4 v7, 0x0

    .line 418
    .local v7, "selected":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 419
    .local v1, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 422
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v0

    .line 423
    .local v0, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    new-instance v9, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 424
    .local v9, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

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

    check-cast v6, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 425
    .local v6, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-virtual {p0, v6, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    goto :goto_1

    .line 427
    .end local v6    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_1
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v10

    .line 430
    .local v10, "variance":D
    cmpl-double v12, v10, v4

    if-lez v12, :cond_0

    .line 431
    move-wide v4, v10

    .line 432
    move-object v7, v1

    goto :goto_0

    .line 439
    .end local v0    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v1    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v10    # "variance":D
    :cond_2
    if-nez v7, :cond_3

    .line 440
    new-instance v12, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 444
    :cond_3
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v8

    .line 445
    .local v8, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v12, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v12

    invoke-interface {v8, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v12
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 17
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
    .line 200
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 203
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    if-ge v13, v14, :cond_0

    .line 204
    new-instance v13, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v13

    .line 208
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->chooseInitialCenters(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 212
    .local v5, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    new-array v2, v13, [I

    .line 213
    .local v2, "assignments":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    .line 216
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    if-gez v13, :cond_1

    const v10, 0x7fffffff

    .line 217
    .local v10, "max":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "count":I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 218
    const/4 v8, 0x0

    .line 219
    .local v8, "emptyCluster":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v12, "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 222
    .local v4, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 223
    sget-object v13, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$1;->$SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v14}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 234
    new-instance v13, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v13

    .line 216
    .end local v4    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v7    # "count":I
    .end local v8    # "emptyCluster":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "max":I
    .end local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    goto :goto_0

    .line 225
    .restart local v4    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .restart local v7    # "count":I
    .restart local v8    # "emptyCluster":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "max":I
    .restart local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v11

    .line 236
    .local v11, "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :goto_3
    const/4 v8, 0x1

    .line 240
    :goto_4
    new-instance v13, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v13, v11}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 228
    .end local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v11

    .line 229
    .restart local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    goto :goto_3

    .line 231
    .end local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v11

    .line 232
    .restart local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    goto :goto_3

    .line 238
    .end local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v14

    array-length v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->centroidOf(Ljava/util/Collection;I)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v11

    .restart local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    goto :goto_4

    .line 242
    .end local v4    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v11    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v2}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    move-result v3

    .line 243
    .local v3, "changes":I
    move-object v5, v12

    .line 247
    if-nez v3, :cond_4

    if-nez v8, :cond_4

    move-object v6, v5

    .line 251
    .end local v3    # "changes":I
    .end local v5    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .end local v8    # "emptyCluster":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .local v6, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    :goto_5
    return-object v6

    .line 217
    .end local v6    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .restart local v3    # "changes":I
    .restart local v5    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .restart local v8    # "emptyCluster":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .end local v3    # "changes":I
    .end local v8    # "emptyCluster":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    :cond_5
    move-object v6, v5

    .line 251
    .end local v5    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .restart local v6    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    goto :goto_5

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEmptyClusterStrategy()Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-object v0
.end method

.method public getK()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    return v0
.end method

.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method
