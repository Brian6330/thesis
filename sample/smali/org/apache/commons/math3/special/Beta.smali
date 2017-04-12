.class public Lorg/apache/commons/math3/special/Beta;
.super Ljava/lang/Object;
.source "Beta.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-14

.field private static final DELTA:[D

.field private static final HALF_LOG_TWO_PI:D = 0.9189385332046727


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    return-void

    :array_0
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        -0x4102df75a56ed1ceL    # -2.777777777777778E-5
        0x3e754ded3ddad442L    # 7.936507936507937E-8
        -0x41fb8c3af7d1c398L    # -5.952380952380953E-10
        0x3da282a2cf083a98L
        -0x42b5036195bc49f6L    # -1.917526917518546E-13
        0x3cfcde85bfe7ab89L    # 6.410256405103255E-15
        -0x434ab4ddf135a5f4L
        0x3c74b6258b42ee9bL    # 1.7964371635940225E-17
        -0x43c65119190af537L    # -1.3922896466162779E-18
        0x3c03beedcf2f631eL    # 1.338028550140209E-19
        -0x442dca334d9339b1L    # -1.542460098679661E-20
        0x3ba2ac241095f5ffL    # 1.9770199298095743E-21
        -0x448e5082f787f436L
        0x3b34b6f6d66e9efaL    # 1.713480149663986E-23
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deltaMinusDeltaSum(DD)D
    .locals 24
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 345
    const-wide/16 v18, 0x0

    cmpg-double v18, p0, v18

    if-ltz v18, :cond_0

    cmpl-double v18, p0, p2

    if-lez v18, :cond_1

    .line 346
    :cond_0
    new-instance v18, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v18

    .line 348
    :cond_1
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    cmpg-double v18, p2, v18

    if-gez v18, :cond_2

    .line 349
    new-instance v18, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    invoke-direct/range {v18 .. v21}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v18

    .line 352
    :cond_2
    div-double v2, p0, p2

    .line 353
    .local v2, "h":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v2

    div-double v6, v2, v18

    .line 354
    .local v6, "p":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v20, v20, v2

    div-double v8, v18, v20

    .line 355
    .local v8, "q":D
    mul-double v10, v8, v8

    .line 359
    .local v10, "q2":D
    sget-object v18, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v5, v0, [D

    .line 360
    .local v5, "s":[D
    const/16 v18, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    aput-wide v20, v5, v18

    .line 361
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_3

    .line 362
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v20, v4, -0x1

    aget-wide v20, v5, v20

    mul-double v20, v20, v10

    add-double v20, v20, v8

    add-double v18, v18, v20

    aput-wide v18, v5, v4

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_3
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    div-double v12, v18, p2

    .line 368
    .local v12, "sqrtT":D
    mul-double v14, v12, v12

    .line 369
    .local v14, "t":D
    sget-object v18, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    sget-object v19, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-wide v18, v18, v19

    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-wide v20, v5, v20

    mul-double v16, v18, v20

    .line 370
    .local v16, "w":D
    sget-object v18, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v4, v18, -0x2

    :goto_1
    if-ltz v4, :cond_4

    .line 371
    mul-double v18, v14, v16

    sget-object v20, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    aget-wide v20, v20, v4

    aget-wide v22, v5, v4

    mul-double v20, v20, v22

    add-double v16, v18, v20

    .line 370
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 373
    :cond_4
    mul-double v18, v16, v6

    div-double v18, v18, p2

    return-wide v18
.end method

.method public static logBeta(DD)D
    .locals 36
    .param p0, "p"    # D
    .param p2, "q"    # D

    .prologue
    .line 420
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-nez v28, :cond_0

    const-wide/16 v28, 0x0

    cmpg-double v28, p0, v28

    if-lez v28, :cond_0

    const-wide/16 v28, 0x0

    cmpg-double v28, p2, v28

    if-gtz v28, :cond_1

    .line 421
    :cond_0
    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    .line 506
    :goto_0
    return-wide v28

    .line 424
    :cond_1
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    .line 425
    .local v2, "a":D
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 426
    .local v6, "b":D
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpl-double v28, v2, v28

    if-ltz v28, :cond_3

    .line 427
    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/special/Beta;->sumDeltaMinusDeltaSum(DD)D

    move-result-wide v26

    .line 428
    .local v26, "w":D
    div-double v12, v2, v6

    .line 429
    .local v12, "h":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v28, v28, v12

    div-double v10, v12, v28

    .line 430
    .local v10, "c":D
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    sub-double v28, v2, v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v30

    mul-double v22, v28, v30

    .line 431
    .local v22, "u":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v28

    mul-double v24, v6, v28

    .line 432
    .local v24, "v":D
    cmpg-double v28, v22, v24

    if-gtz v28, :cond_2

    .line 433
    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    const-wide v30, 0x3fed67f1c864beb4L    # 0.9189385332046727

    add-double v28, v28, v30

    add-double v28, v28, v26

    sub-double v28, v28, v22

    sub-double v28, v28, v24

    goto :goto_0

    .line 435
    :cond_2
    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    const-wide v30, 0x3fed67f1c864beb4L    # 0.9189385332046727

    add-double v28, v28, v30

    add-double v28, v28, v26

    sub-double v28, v28, v24

    sub-double v28, v28, v22

    goto :goto_0

    .line 437
    .end local v10    # "c":D
    .end local v12    # "h":D
    .end local v22    # "u":D
    .end local v24    # "v":D
    .end local v26    # "w":D
    :cond_3
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    cmpl-double v28, v2, v28

    if-lez v28, :cond_9

    .line 438
    const-wide v28, 0x408f400000000000L    # 1000.0

    cmpl-double v28, v6, v28

    if-lez v28, :cond_5

    .line 439
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v28, v2, v28

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v15, v0

    .line 440
    .local v15, "n":I
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 441
    .local v16, "prod":D
    move-wide v4, v2

    .line 442
    .local v4, "ared":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v15, :cond_4

    .line 443
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, v28

    .line 444
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v30, v4, v6

    add-double v28, v28, v30

    div-double v28, v4, v28

    mul-double v16, v16, v28

    .line 442
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 446
    :cond_4
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    int-to-double v0, v15

    move-wide/from16 v30, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v30

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v32

    add-double v30, v30, v32

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 450
    .end local v4    # "ared":D
    .end local v14    # "i":I
    .end local v15    # "n":I
    .end local v16    # "prod":D
    :cond_5
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 451
    .local v18, "prod1":D
    move-wide v4, v2

    .line 452
    .restart local v4    # "ared":D
    :goto_2
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    cmpl-double v28, v4, v28

    if-lez v28, :cond_6

    .line 453
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, v28

    .line 454
    div-double v12, v4, v6

    .line 455
    .restart local v12    # "h":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v28, v28, v12

    div-double v28, v12, v28

    mul-double v18, v18, v28

    .line 456
    goto :goto_2

    .line 457
    .end local v12    # "h":D
    :cond_6
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v28, v6, v28

    if-gez v28, :cond_8

    .line 458
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 459
    .local v20, "prod2":D
    move-wide v8, v6

    .line 460
    .local v8, "bred":D
    :goto_3
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    cmpl-double v28, v8, v28

    if-lez v28, :cond_7

    .line 461
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, v28

    .line 462
    add-double v28, v4, v8

    div-double v28, v8, v28

    mul-double v20, v20, v28

    goto :goto_3

    .line 464
    :cond_7
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v30

    invoke-static {v8, v9}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v32

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide v34

    sub-double v32, v32, v34

    add-double v30, v30, v32

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 470
    .end local v8    # "bred":D
    .end local v20    # "prod2":D
    :cond_8
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v30

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 475
    .end local v4    # "ared":D
    .end local v18    # "prod1":D
    :cond_9
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v2, v28

    if-ltz v28, :cond_d

    .line 476
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    cmpl-double v28, v6, v28

    if-lez v28, :cond_c

    .line 477
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v28, v6, v28

    if-gez v28, :cond_b

    .line 478
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 479
    .restart local v16    # "prod":D
    move-wide v8, v6

    .line 480
    .restart local v8    # "bred":D
    :goto_4
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    cmpl-double v28, v8, v28

    if-lez v28, :cond_a

    .line 481
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, v28

    .line 482
    add-double v28, v2, v8

    div-double v28, v8, v28

    mul-double v16, v16, v28

    goto :goto_4

    .line 484
    :cond_a
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v30

    invoke-static {v8, v9}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v32

    invoke-static {v2, v3, v8, v9}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide v34

    sub-double v32, v32, v34

    add-double v30, v30, v32

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 489
    .end local v8    # "bred":D
    .end local v16    # "prod":D
    :cond_b
    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v28

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v30

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 493
    :cond_c
    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v28

    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide v30

    sub-double v28, v28, v30

    goto/16 :goto_0

    .line 498
    :cond_d
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpl-double v28, v6, v28

    if-ltz v28, :cond_e

    .line 499
    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v28

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v30

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 506
    :cond_e
    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v28

    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v30, v2, v6

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    goto/16 :goto_0
.end method

.method public static logBeta(DDDI)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "epsilon"    # D
    .param p6, "maxIterations"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static logGammaMinusLogGammaSum(DD)D
    .locals 12
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 305
    const-wide/16 v8, 0x0

    cmpg-double v8, p0, v8

    if-gez v8, :cond_0

    .line 306
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 308
    :cond_0
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double v8, p2, v8

    if-gez v8, :cond_1

    .line 309
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 317
    :cond_1
    cmpg-double v8, p0, p2

    if-gtz v8, :cond_2

    .line 318
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double v8, p0, v8

    add-double v0, p2, v8

    .line 319
    .local v0, "d":D
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v6

    .line 325
    .local v6, "w":D
    :goto_0
    div-double v8, p0, p2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v8

    mul-double v2, v0, v8

    .line 326
    .local v2, "u":D
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    mul-double v4, p0, v8

    .line 328
    .local v4, "v":D
    cmpg-double v8, v2, v4

    if-gtz v8, :cond_3

    sub-double v8, v6, v2

    sub-double/2addr v8, v4

    :goto_1
    return-wide v8

    .line 321
    .end local v0    # "d":D
    .end local v2    # "u":D
    .end local v4    # "v":D
    .end local v6    # "w":D
    :cond_2
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double v8, p2, v8

    add-double v0, p0, v8

    .line 322
    .restart local v0    # "d":D
    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v6

    .restart local v6    # "w":D
    goto :goto_0

    .line 328
    .restart local v2    # "u":D
    .restart local v4    # "v":D
    :cond_3
    sub-double v8, v6, v4

    sub-double/2addr v8, v2

    goto :goto_1
.end method

.method private static logGammaSum(DD)D
    .locals 10
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 272
    cmpg-double v2, p0, v6

    if-ltz v2, :cond_0

    cmpl-double v2, p0, v8

    if-lez v2, :cond_1

    .line 273
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 275
    :cond_1
    cmpg-double v2, p2, v6

    if-ltz v2, :cond_2

    cmpl-double v2, p2, v8

    if-lez v2, :cond_3

    .line 276
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 279
    :cond_3
    sub-double v2, p0, v6

    sub-double v4, p2, v6

    add-double v0, v2, v4

    .line 280
    .local v0, "x":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_4

    .line 281
    add-double v2, v6, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v2

    .line 285
    :goto_0
    return-wide v2

    .line 282
    :cond_4
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_5

    .line 283
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 285
    :cond_5
    sub-double v2, v0, v6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v2

    add-double v4, v6, v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0
.end method

.method public static regularizedBeta(DDD)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .prologue
    .line 116
    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static regularizedBeta(DDDD)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "epsilon"    # D

    .prologue
    .line 137
    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static regularizedBeta(DDDDI)D
    .locals 18
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "epsilon"    # D
    .param p8, "maxIterations"    # I

    .prologue
    .line 186
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v6, 0x0

    cmpg-double v4, p0, v6

    if-ltz v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p0, v6

    if-gtz v4, :cond_0

    const-wide/16 v6, 0x0

    cmpg-double v4, p2, v6

    if-lez v4, :cond_0

    const-wide/16 v6, 0x0

    cmpg-double v4, p4, v6

    if-gtz v4, :cond_1

    .line 193
    :cond_0
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    .line 226
    .local v14, "ret":D
    :goto_0
    return-wide v14

    .line 194
    .end local v14    # "ret":D
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, p2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v8, v8, p4

    add-double v8, v8, p2

    div-double/2addr v6, v8

    cmpl-double v4, p0, v6

    if-lez v4, :cond_2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, p0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, p4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double v10, v10, p4

    add-double v10, v10, p2

    div-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_2

    .line 196
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, p0

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-static/range {v4 .. v12}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide v6

    sub-double v14, v16, v6

    .restart local v14    # "ret":D
    goto :goto_0

    .line 198
    .end local v14    # "ret":D
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/special/Beta$1;

    move-wide/from16 v0, p4

    move-wide/from16 v2, p2

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Beta$1;-><init>(DD)V

    .line 221
    .local v5, "fraction":Lorg/apache/commons/math3/util/ContinuedFraction;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double v6, v6, p2

    move-wide/from16 v0, p0

    neg-double v8, v0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v8

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static/range {p2 .. p5}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v12, v6, v8

    move-wide/from16 v6, p0

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v5 .. v10}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide v6

    div-double v14, v12, v6

    .restart local v14    # "ret":D
    goto :goto_0
.end method

.method public static regularizedBeta(DDDI)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "maxIterations"    # I

    .prologue
    .line 154
    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static sumDeltaMinusDeltaSum(DD)D
    .locals 16
    .param p0, "p"    # D
    .param p2, "q"    # D

    .prologue
    .line 391
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpg-double v5, p0, v12

    if-gez v5, :cond_0

    .line 392
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct {v5, v12, v13, v14}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 394
    :cond_0
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpg-double v5, p2, v12

    if-gez v5, :cond_1

    .line 395
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct {v5, v12, v13, v14}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 398
    :cond_1
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 399
    .local v0, "a":D
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 400
    .local v2, "b":D
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double v6, v12, v0

    .line 401
    .local v6, "sqrtT":D
    mul-double v8, v6, v6

    .line 402
    .local v8, "t":D
    sget-object v5, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    sget-object v12, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-wide v10, v5, v12

    .line 403
    .local v10, "z":D
    sget-object v5, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v5, v5

    add-int/lit8 v4, v5, -0x2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 404
    mul-double v12, v8, v10

    sget-object v5, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    aget-wide v14, v5, v4

    add-double v10, v12, v14

    .line 403
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 406
    :cond_2
    div-double v12, v10, v0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    return-wide v12
.end method
