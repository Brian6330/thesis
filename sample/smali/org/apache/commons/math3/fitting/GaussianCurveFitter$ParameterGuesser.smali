.class public Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "GaussianCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/GaussianCurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field private final mean:D

.field private final norm:D

.field private final sigma:D


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v2, v6, :cond_1

    .line 217
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sortObservations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-array v2, v4, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->basicGuess([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v0

    .line 223
    .local v0, "params":[D
    aget-wide v2, v0, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->norm:D

    .line 224
    aget-wide v2, v0, v5

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->mean:D

    .line 225
    const/4 v2, 0x2

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sigma:D

    .line 226
    return-void
.end method

.method private basicGuess([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 26
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 297
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->findMaxY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

    move-result v4

    .line 298
    .local v4, "maxYIdx":I
    aget-object v2, p1, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v18

    .line 299
    .local v18, "n":D
    aget-object v2, p1, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v16

    .line 303
    .local v16, "m":D
    sub-double v2, v16, v18

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v2, v2, v22

    add-double v6, v18, v2

    .line 304
    .local v6, "halfY":D
    const/4 v5, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D

    move-result-wide v12

    .line 305
    .local v12, "fwhmX1":D
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/OutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 306
    .local v14, "fwhmX2":D
    sub-double v10, v14, v12

    .line 311
    .end local v12    # "fwhmX1":D
    .end local v14    # "fwhmX2":D
    .local v10, "fwhmApprox":D
    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v2, v2, v22

    div-double v20, v10, v2

    .line 313
    .local v20, "s":D
    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v18, v2, v3

    const/4 v3, 0x1

    aput-wide v16, v2, v3

    const/4 v3, 0x2

    aput-wide v20, v2, v3

    return-object v2

    .line 307
    .end local v10    # "fwhmApprox":D
    .end local v20    # "s":D
    :catch_0
    move-exception v8

    .line 309
    .local v8, "e":Lorg/apache/commons/math3/exception/OutOfRangeException;
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v22

    sub-double v10, v2, v22

    .restart local v10    # "fwhmApprox":D
    goto :goto_0
.end method

.method private findMaxY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I
    .locals 6
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "maxYIdx":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 325
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 326
    move v1, v0

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    return v1
.end method

.method private getInterpolationPointsForY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 10
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "startIdx"    # I
    .param p3, "idxStep"    # I
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 388
    if-nez p3, :cond_0

    .line 389
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v1

    .line 391
    :cond_0
    move v0, p2

    .line 392
    .local v0, "i":I
    :goto_0
    if-gez p3, :cond_2

    add-int v1, v0, p3

    if-ltz v1, :cond_3

    .line 394
    :cond_1
    aget-object v8, p1, v0

    .line 395
    .local v8, "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int v1, v0, p3

    aget-object v9, p1, v1

    .line 396
    .local v9, "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v8}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->isBetween(DDD)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    if-gez p3, :cond_4

    .line 398
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    .line 400
    :goto_1
    return-object v1

    .line 392
    .end local v8    # "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v9    # "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_2
    add-int v1, v0, p3

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 408
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 400
    .restart local v8    # "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .restart local v9    # "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    goto :goto_1

    .line 393
    :cond_5
    add-int/2addr v0, p3

    goto :goto_0
.end method

.method private interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D
    .locals 12
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "startIdx"    # I
    .param p3, "idxStep"    # I
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 351
    if-nez p3, :cond_0

    .line 352
    new-instance v3, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v3

    .line 354
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->getInterpolationPointsForY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v2

    .line 356
    .local v2, "twoPoints":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 357
    .local v0, "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 358
    .local v1, "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v3, v4, p4

    if-nez v3, :cond_1

    .line 359
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    .line 364
    :goto_0
    return-wide v4

    .line 361
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v3, v4, p4

    if-nez v3, :cond_2

    .line 362
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    sub-double v6, p4, v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    goto :goto_0
.end method

.method private isBetween(DDD)Z
    .locals 1
    .param p1, "value"    # D
    .param p3, "boundary1"    # D
    .param p5, "boundary2"    # D

    .prologue
    .line 426
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    cmpg-double v0, p1, p5

    if-lez v0, :cond_1

    :cond_0
    cmpl-double v0, p1, p5

    if-ltz v0, :cond_2

    cmpg-double v0, p1, p3

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sortObservations(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "unsorted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v1, "observations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-instance v0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;-><init>(Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;)V

    .line 285
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 286
    return-object v1
.end method


# virtual methods
.method public guess()[D
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->norm:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->mean:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sigma:D

    aput-wide v2, v0, v1

    return-object v0
.end method
