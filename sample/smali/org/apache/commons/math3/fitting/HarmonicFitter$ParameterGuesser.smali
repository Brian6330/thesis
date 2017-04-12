.class public Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "HarmonicFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/HarmonicFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field private final a:D

.field private final omega:D

.field private final phi:D


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 7
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    array-length v2, p1

    if-ge v2, v5, :cond_0

    .line 199
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v1

    .line 205
    .local v1, "sorted":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v0

    .line 206
    .local v0, "aOmega":[D
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    .line 207
    aget-wide v2, v0, v6

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    .line 209
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->phi:D

    .line 210
    return-void
.end method

.method private guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 60
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 273
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [D

    .line 276
    .local v4, "aOmega":[D
    const-wide/16 v36, 0x0

    .line 277
    .local v36, "sx2":D
    const-wide/16 v42, 0x0

    .line 278
    .local v42, "sy2":D
    const-wide/16 v38, 0x0

    .line 279
    .local v38, "sxy":D
    const-wide/16 v40, 0x0

    .line 280
    .local v40, "sxz":D
    const-wide/16 v44, 0x0

    .line 282
    .local v44, "syz":D
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v12

    .line 283
    .local v12, "currentX":D
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v14

    .line 284
    .local v14, "currentY":D
    const-wide/16 v20, 0x0

    .line 285
    .local v20, "f2Integral":D
    const-wide/16 v24, 0x0

    .line 286
    .local v24, "fPrime2Integral":D
    move-wide/from16 v34, v12

    .line 287
    .local v34, "startX":D
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v5, v0, :cond_0

    .line 289
    move-wide/from16 v30, v12

    .line 290
    .local v30, "previousX":D
    move-wide/from16 v32, v14

    .line 291
    .local v32, "previousY":D
    aget-object v29, p1, v5

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v12

    .line 292
    aget-object v29, p1, v5

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v14

    .line 296
    sub-double v16, v12, v30

    .line 297
    .local v16, "dx":D
    sub-double v18, v14, v32

    .line 298
    .local v18, "dy":D
    mul-double v56, v32, v32

    mul-double v58, v32, v14

    add-double v56, v56, v58

    mul-double v58, v14, v14

    add-double v56, v56, v58

    mul-double v56, v56, v16

    const-wide/high16 v58, 0x4008000000000000L    # 3.0

    div-double v22, v56, v58

    .line 300
    .local v22, "f2StepIntegral":D
    mul-double v56, v18, v18

    div-double v26, v56, v16

    .line 302
    .local v26, "fPrime2StepIntegral":D
    sub-double v46, v12, v34

    .line 303
    .local v46, "x":D
    add-double v20, v20, v22

    .line 304
    add-double v24, v24, v26

    .line 306
    mul-double v56, v46, v46

    add-double v36, v36, v56

    .line 307
    mul-double v56, v20, v20

    add-double v42, v42, v56

    .line 308
    mul-double v56, v46, v20

    add-double v38, v38, v56

    .line 309
    mul-double v56, v46, v24

    add-double v40, v40, v56

    .line 310
    mul-double v56, v20, v24

    add-double v44, v44, v56

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    .end local v16    # "dx":D
    .end local v18    # "dy":D
    .end local v22    # "f2StepIntegral":D
    .end local v26    # "fPrime2StepIntegral":D
    .end local v30    # "previousX":D
    .end local v32    # "previousY":D
    .end local v46    # "x":D
    :cond_0
    mul-double v56, v42, v40

    mul-double v58, v38, v44

    sub-double v6, v56, v58

    .line 315
    .local v6, "c1":D
    mul-double v56, v38, v40

    mul-double v58, v36, v44

    sub-double v8, v56, v58

    .line 316
    .local v8, "c2":D
    mul-double v56, v36, v42

    mul-double v58, v38, v38

    sub-double v10, v56, v58

    .line 317
    .local v10, "c3":D
    div-double v56, v6, v8

    const-wide/16 v58, 0x0

    cmpg-double v29, v56, v58

    if-ltz v29, :cond_1

    div-double v56, v8, v10

    const-wide/16 v58, 0x0

    cmpg-double v29, v56, v58

    if-gez v29, :cond_6

    .line 318
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v28, v29, -0x1

    .line 321
    .local v28, "last":I
    aget-object v29, p1, v28

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v56

    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v58

    sub-double v48, v56, v58

    .line 322
    .local v48, "xRange":D
    const-wide/16 v56, 0x0

    cmpl-double v29, v48, v56

    if-nez v29, :cond_2

    .line 323
    new-instance v29, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v29

    .line 325
    :cond_2
    const/16 v29, 0x1

    const-wide v56, 0x401921fb54442d18L    # 6.283185307179586

    div-double v56, v56, v48

    aput-wide v56, v4, v29

    .line 327
    const-wide/high16 v54, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 328
    .local v54, "yMin":D
    const-wide/high16 v52, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 329
    .local v52, "yMax":D
    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v5, v0, :cond_5

    .line 330
    aget-object v29, p1, v5

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v50

    .line 331
    .local v50, "y":D
    cmpg-double v29, v50, v54

    if-gez v29, :cond_3

    .line 332
    move-wide/from16 v54, v50

    .line 334
    :cond_3
    cmpl-double v29, v50, v52

    if-lez v29, :cond_4

    .line 335
    move-wide/from16 v52, v50

    .line 329
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 338
    .end local v50    # "y":D
    :cond_5
    const/16 v29, 0x0

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    sub-double v58, v52, v54

    mul-double v56, v56, v58

    aput-wide v56, v4, v29

    .line 350
    .end local v28    # "last":I
    .end local v48    # "xRange":D
    .end local v52    # "yMax":D
    .end local v54    # "yMin":D
    :goto_2
    return-object v4

    .line 340
    :cond_6
    const-wide/16 v56, 0x0

    cmpl-double v29, v8, v56

    if-nez v29, :cond_7

    .line 343
    new-instance v29, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v56, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v29

    .line 346
    :cond_7
    const/16 v29, 0x0

    div-double v56, v6, v8

    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v56

    aput-wide v56, v4, v29

    .line 347
    const/16 v29, 0x1

    div-double v56, v8, v10

    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v56

    aput-wide v56, v4, v29

    goto :goto_2
.end method

.method private guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D
    .locals 28
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 361
    const-wide/16 v10, 0x0

    .line 362
    .local v10, "fcMean":D
    const-wide/16 v12, 0x0

    .line 364
    .local v12, "fsMean":D
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    .line 365
    .local v4, "currentX":D
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    .line 366
    .local v6, "currentY":D
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v14, v15, :cond_0

    .line 368
    move-wide/from16 v18, v4

    .line 369
    .local v18, "previousX":D
    move-wide/from16 v20, v6

    .line 370
    .local v20, "previousY":D
    aget-object v15, p1, v14

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    .line 371
    aget-object v15, p1, v14

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    .line 372
    sub-double v24, v6, v20

    sub-double v26, v4, v18

    div-double v8, v24, v26

    .line 374
    .local v8, "currentYPrime":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    move-wide/from16 v24, v0

    mul-double v16, v24, v4

    .line 375
    .local v16, "omegaX":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    .line 376
    .local v2, "cosine":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v22

    .line 377
    .local v22, "sine":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    mul-double v24, v24, v2

    mul-double v26, v8, v22

    sub-double v24, v24, v26

    add-double v10, v10, v24

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    mul-double v24, v24, v22

    mul-double v26, v8, v2

    add-double v24, v24, v26

    add-double v12, v12, v24

    .line 366
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "cosine":D
    .end local v8    # "currentYPrime":D
    .end local v16    # "omegaX":D
    .end local v18    # "previousX":D
    .end local v20    # "previousY":D
    .end local v22    # "sine":D
    :cond_0
    neg-double v0, v12

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v24

    return-wide v24
.end method

.method private sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 12
    .param p1, "unsorted"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 233
    invoke-virtual {p1}, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 238
    .local v5, "observations":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v7, 0x0

    aget-object v0, v5, v7

    .line 239
    .local v0, "curr":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 240
    move-object v6, v0

    .line 241
    .local v6, "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    aget-object v0, v5, v3

    .line 242
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_1

    .line 244
    add-int/lit8 v1, v3, -0x1

    .line 245
    .local v1, "i":I
    aget-object v4, v5, v1

    .local v4, "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    move v2, v1

    .line 246
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    .line 247
    add-int/lit8 v7, v2, 0x1

    aput-object v4, v5, v7

    .line 248
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-eqz v2, :cond_3

    .line 249
    aget-object v4, v5, v1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 252
    :cond_0
    add-int/lit8 v7, v2, 0x1

    aput-object v0, v5, v7

    .line 253
    aget-object v0, v5, v3

    .line 239
    .end local v2    # "i":I
    .end local v4    # "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .end local v6    # "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_2
    return-object v5

    .restart local v1    # "i":I
    .restart local v4    # "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .restart local v6    # "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_3
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method


# virtual methods
.method public guess()[D
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->phi:D

    aput-wide v2, v0, v1

    return-object v0
.end method
