.class public Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "GaussianFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/GaussianFitter;
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
.method public constructor <init>([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 7
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 150
    :cond_0
    array-length v2, p1

    if-ge v2, v6, :cond_1

    .line 151
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 154
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v1

    .line 155
    .local v1, "sorted":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->basicGuess([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v0

    .line 157
    .local v0, "params":[D
    aget-wide v2, v0, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->norm:D

    .line 158
    aget-wide v2, v0, v5

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->mean:D

    .line 159
    const/4 v2, 0x2

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->sigma:D

    .line 160
    return-void
.end method

.method private basicGuess([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 26
    .param p1, "points"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 231
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->findMaxY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

    move-result v4

    .line 232
    .local v4, "maxYIdx":I
    aget-object v2, p1, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v18

    .line 233
    .local v18, "n":D
    aget-object v2, p1, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v16

    .line 237
    .local v16, "m":D
    sub-double v2, v16, v18

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v2, v2, v22

    add-double v6, v18, v2

    .line 238
    .local v6, "halfY":D
    const/4 v5, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D

    move-result-wide v12

    .line 239
    .local v12, "fwhmX1":D
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)D
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/OutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 240
    .local v14, "fwhmX2":D
    sub-double v10, v14, v12

    .line 245
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

    .line 247
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

    .line 241
    .end local v10    # "fwhmApprox":D
    .end local v20    # "s":D
    :catch_0
    move-exception v8

    .line 243
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
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "maxYIdx":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 259
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 260
    move v1, v0

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
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
    .line 322
    if-nez p3, :cond_0

    .line 323
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v1

    .line 325
    :cond_0
    move v0, p2

    .line 326
    .local v0, "i":I
    :goto_0
    if-gez p3, :cond_2

    add-int v1, v0, p3

    if-ltz v1, :cond_3

    .line 328
    :cond_1
    aget-object v8, p1, v0

    .line 329
    .local v8, "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int v1, v0, p3

    aget-object v9, p1, v1

    .line 330
    .local v9, "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v8}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->isBetween(DDD)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    if-gez p3, :cond_4

    .line 332
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    .line 334
    :goto_1
    return-object v1

    .line 326
    .end local v8    # "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v9    # "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_2
    add-int v1, v0, p3

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 342
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

    .line 334
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

    .line 327
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
    .line 285
    if-nez p3, :cond_0

    .line 286
    new-instance v3, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v3

    .line 288
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->getInterpolationPointsForY([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v2

    .line 290
    .local v2, "twoPoints":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 291
    .local v0, "p1":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 292
    .local v1, "p2":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v3, v4, p4

    if-nez v3, :cond_1

    .line 293
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    .line 298
    :goto_0
    return-wide v4

    .line 295
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v3, v4, p4

    if-nez v3, :cond_2

    .line 296
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    goto :goto_0

    .line 298
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
    .line 360
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

.method private sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 2
    .param p1, "unsorted"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 183
    invoke-virtual {p1}, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 184
    .local v1, "observations":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    new-instance v0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;-><init>(Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;)V

    .line 219
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 220
    return-object v1
.end method


# virtual methods
.method public guess()[D
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->norm:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->mean:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->sigma:D

    aput-wide v2, v0, v1

    return-object v0
.end method
