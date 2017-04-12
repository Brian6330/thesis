.class public Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "FuzzyKMeansClusterer.java"


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


# static fields
.field private static final DEFAULT_EPSILON:D = 0.001


# instance fields
.field private clusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final epsilon:D

.field private final fuzziness:D

.field private final k:I

.field private final maxIterations:I

.field private membershipMatrix:[[D

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(ID)V
    .locals 6
    .param p1, "k"    # I
    .param p2, "fuzziness"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v4, -0x1

    new-instance v5, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v5}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;-><init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 108
    return-void
.end method

.method public constructor <init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 10
    .param p1, "k"    # I
    .param p2, "fuzziness"    # D
    .param p4, "maxIterations"    # I
    .param p5, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    new-instance v8, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v8}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;-><init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;DLorg/apache/commons/math3/random/RandomGenerator;)V

    .line 124
    return-void
.end method

.method public constructor <init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;DLorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 4
    .param p1, "k"    # I
    .param p2, "fuzziness"    # D
    .param p4, "maxIterations"    # I
    .param p5, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p6, "epsilon"    # D
    .param p8, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 145
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 146
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 148
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    .line 149
    iput-wide p2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    .line 150
    iput p4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    .line 151
    iput-wide p6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    .line 152
    iput-object p8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object v0, v1

    .line 154
    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    .line 155
    iput-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    .line 156
    iput-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 157
    return-void
.end method

.method private calculateMaxMembershipChange([[D)D
    .locals 10
    .param p1, "matrix"    # [[D

    .prologue
    .line 405
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const-wide/16 v2, 0x0

    .line 406
    .local v2, "maxMembership":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 407
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 408
    iget-object v6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v6, v6, v0

    aget-wide v6, v6, v1

    aget-object v8, p1, v0

    aget-wide v8, v8, v1

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 409
    .local v4, "v":D
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    .end local v4    # "v":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "j":I
    :cond_1
    return-wide v2
.end method

.method private initializeMembershipMatrix()V
    .locals 6

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 390
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v1, v2, :cond_0

    .line 391
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->normalizeArray([DD)[D

    move-result-object v3

    aput-object v3, v2, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private saveMembershipMatrix([[D)V
    .locals 5
    .param p1, "matrix"    # [[D

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v4, 0x0

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 422
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method private updateClusterCenters()V
    .locals 22

    .prologue
    .line 318
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v9, 0x0

    .line 319
    .local v9, "j":I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v10, "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 321
    .local v4, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v3

    .line 322
    .local v3, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    const/4 v5, 0x0

    .line 323
    .local v5, "i":I
    invoke-interface {v3}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v13

    array-length v13, v13

    new-array v2, v13, [D

    .line 324
    .local v2, "arr":[D
    const-wide/16 v14, 0x0

    .line 325
    .local v14, "sum":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 326
    .local v11, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v13, v13, v5

    aget-wide v18, v13, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    .line 327
    .local v16, "u":D
    invoke-interface {v11}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v12

    .line 328
    .local v12, "pointArr":[D
    const/4 v8, 0x0

    .local v8, "idx":I
    :goto_2
    array-length v13, v2

    if-ge v8, v13, :cond_0

    .line 329
    aget-wide v18, v2, v8

    aget-wide v20, v12, v8

    mul-double v20, v20, v16

    add-double v18, v18, v20

    aput-wide v18, v2, v8

    .line 328
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 331
    :cond_0
    add-double v14, v14, v16

    .line 332
    add-int/lit8 v5, v5, 0x1

    .line 333
    goto :goto_1

    .line 334
    .end local v8    # "idx":I
    .end local v11    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v12    # "pointArr":[D
    .end local v16    # "u":D
    :cond_1
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v18, v18, v14

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    .line 335
    new-instance v13, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    new-instance v18, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v9, v9, 0x1

    .line 337
    goto :goto_0

    .line 338
    .end local v2    # "arr":[D
    .end local v3    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v4    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v5    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v14    # "sum":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 339
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 340
    return-void
.end method

.method private updateMembershipMatrix()V
    .locals 26

    .prologue
    .line 347
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 349
    .local v15, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    const-wide/16 v10, 0x1

    .line 350
    .local v10, "maxMembership":D
    const/4 v14, -0x1

    .line 351
    .local v14, "newCluster":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 352
    const-wide/16 v16, 0x0

    .line 353
    .local v16, "sum":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 355
    .local v4, "distA":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v4, v18

    if-eqz v18, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 357
    .local v2, "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 358
    .local v6, "distB":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_2

    .line 359
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 367
    .end local v2    # "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v6    # "distB":D
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    const-wide/16 v18, 0x0

    cmpl-double v18, v16, v18

    if-nez v18, :cond_3

    .line 368
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 374
    .local v12, "membership":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    aput-wide v12, v18, v9

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    aget-wide v18, v18, v9

    cmpl-double v18, v18, v10

    if-lez v18, :cond_1

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    aget-wide v10, v18, v9

    .line 378
    move v14, v9

    .line 351
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 362
    .end local v12    # "membership":D
    .restart local v2    # "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .restart local v6    # "distB":D
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    div-double v18, v4, v6

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v24

    div-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    .line 363
    goto :goto_2

    .line 369
    .end local v2    # "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v6    # "distB":D
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v18, v16, v18

    if-nez v18, :cond_4

    .line 370
    const-wide/16 v12, 0x0

    .restart local v12    # "membership":D
    goto :goto_3

    .line 372
    .end local v12    # "membership":D
    :cond_4
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v12, v18, v16

    .restart local v12    # "membership":D
    goto :goto_3

    .line 381
    .end local v4    # "distA":D
    .end local v12    # "membership":D
    .end local v16    # "sum":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 383
    .end local v9    # "j":I
    .end local v10    # "maxMembership":D
    .end local v14    # "newCluster":I
    .end local v15    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_6
    return-void
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 12
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
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    .local p1, "dataPoints":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v11, 0x0

    .line 272
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    .line 277
    .local v7, "size":I
    iget v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v7, v8, :cond_0

    .line 278
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 282
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    .line 283
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 284
    iget v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    filled-new-array {v7, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    iput-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    .line 285
    iget v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    filled-new-array {v7, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 288
    .local v5, "oldMatrix":[[D
    if-nez v7, :cond_1

    .line 289
    iget-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 311
    :goto_0
    return-object v8

    .line 292
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->initializeMembershipMatrix()V

    .line 295
    iget-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v8}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v8

    array-length v6, v8

    .line 296
    .local v6, "pointDimension":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v2, v8, :cond_2

    .line 297
    iget-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    new-instance v9, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    new-instance v10, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    new-array v11, v6, [D

    invoke-direct {v10, v11}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    :cond_2
    const/4 v3, 0x0

    .line 301
    .local v3, "iteration":I
    iget v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    if-gez v8, :cond_5

    const v4, 0x7fffffff

    .line 302
    .local v4, "max":I
    :goto_2
    const-wide/16 v0, 0x0

    .line 305
    .local v0, "difference":D
    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->saveMembershipMatrix([[D)V

    .line 306
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->updateClusterCenters()V

    .line 307
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->updateMembershipMatrix()V

    .line 308
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->calculateMaxMembershipChange([[D)D

    move-result-wide v0

    .line 309
    iget-wide v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    cmpl-double v8, v0, v8

    if-lez v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_3

    .line 311
    :cond_4
    iget-object v8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    goto :goto_0

    .line 301
    .end local v0    # "difference":D
    .end local v4    # "max":I
    :cond_5
    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    goto :goto_2
.end method

.method public getClusters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object v0
.end method

.method public getDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    return-object v0
.end method

.method public getEpsilon()D
    .locals 2

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    return-wide v0
.end method

.method public getFuzziness()D
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    return-wide v0
.end method

.method public getK()I
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    return v0
.end method

.method public getMembershipMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getObjectiveFunctionValue()D
    .locals 18

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    if-nez v12, :cond_1

    .line 242
    :cond_0
    new-instance v12, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v12}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v12

    .line 245
    :cond_1
    const/4 v3, 0x0

    .line 246
    .local v3, "i":I
    const-wide/16 v10, 0x0

    .line 247
    .local v10, "objFunction":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 248
    .local v9, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    const/4 v8, 0x0

    .line 249
    .local v8, "j":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 250
    .local v2, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v4

    .line 251
    .local v4, "dist":D
    mul-double v12, v4, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v14, v14, v3

    aget-wide v14, v14, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 253
    goto :goto_1

    .line 254
    .end local v2    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v4    # "dist":D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 255
    goto :goto_0

    .line 256
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "j":I
    .end local v9    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_3
    return-wide v10
.end method

.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method
