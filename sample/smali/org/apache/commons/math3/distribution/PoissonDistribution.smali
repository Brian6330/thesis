.class public Lorg/apache/commons/math3/distribution/PoissonDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "PoissonDistribution.java"


# static fields
.field public static final DEFAULT_EPSILON:D = 1.0E-12

.field public static final DEFAULT_MAX_ITERATIONS:I = 0x989680

.field private static final serialVersionUID:J = -0x2e7d5c3e7619058dL


# instance fields
.field private final epsilon:D

.field private final exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

.field private final maxIterations:I

.field private final mean:D

.field private final normal:Lorg/apache/commons/math3/distribution/NormalDistribution;


# direct methods
.method public constructor <init>(D)V
    .locals 7
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 80
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    const v6, 0x989680

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    .line 81
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "p"    # D
    .param p3, "epsilon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 150
    const v6, 0x989680

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    .line 151
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 7
    .param p1, "p"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V

    .line 104
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .param p1, "p"    # D
    .param p3, "maxIterations"    # I

    .prologue
    .line 163
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "p"    # D
    .param p4, "epsilon"    # D
    .param p6, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 125
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 126
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MEAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 128
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    .line 129
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    .line 130
    iput p6, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    .line 133
    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    .line 135
    new-instance v2, Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    iput-object v2, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    .line 137
    return-void
.end method

.method private nextPoisson(D)J
    .locals 69
    .param p1, "meanPoisson"    # D

    .prologue
    .line 311
    const-wide/high16 v36, 0x4044000000000000L    # 40.0

    .line 312
    .local v36, "pivot":D
    const-wide/high16 v60, 0x4044000000000000L    # 40.0

    cmpg-double v5, p1, v60

    if-gez v5, :cond_0

    .line 313
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 v60, v0

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v30

    .line 314
    .local v30, "p":D
    const-wide/16 v28, 0x0

    .line 315
    .local v28, "n":J
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    .line 316
    .local v42, "r":D
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    .line 318
    .local v44, "rnd":D
    :goto_0
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0x408f400000000000L    # 1000.0

    mul-double v62, v62, p1

    cmpg-double v5, v60, v62

    if-gez v5, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v44

    .line 320
    mul-double v42, v42, v44

    .line 321
    cmpl-double v5, v42, v30

    if-ltz v5, :cond_2

    .line 322
    const-wide/16 v60, 0x1

    add-long v28, v28, v60

    goto :goto_0

    .line 329
    .end local v28    # "n":J
    .end local v30    # "p":D
    .end local v42    # "r":D
    .end local v44    # "rnd":D
    :cond_0
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v20

    .line 330
    .local v20, "lambda":D
    sub-double v22, p1, v20

    .line 331
    .local v22, "lambdaFractional":D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v24

    .line 332
    .local v24, "logLambda":D
    move-wide/from16 v0, v20

    double-to-int v5, v0

    invoke-static {v5}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v26

    .line 333
    .local v26, "logLambdaFactorial":D
    const-wide/16 v60, 0x1

    cmpg-double v5, v22, v60

    if-gez v5, :cond_3

    const-wide/16 v58, 0x0

    .line 334
    .local v58, "y2":J
    :goto_1
    const-wide/high16 v60, 0x4040000000000000L    # 32.0

    mul-double v60, v60, v20

    const-wide v62, 0x400921fb54442d18L    # Math.PI

    div-double v60, v60, v62

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v60, v60, v62

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v60

    mul-double v60, v60, v20

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 335
    .local v14, "delta":D
    const-wide/high16 v60, 0x4000000000000000L    # 2.0

    div-double v18, v14, v60

    .line 336
    .local v18, "halfDelta":D
    const-wide/high16 v60, 0x4000000000000000L    # 2.0

    mul-double v60, v60, v20

    add-double v48, v60, v14

    .line 337
    .local v48, "twolpd":D
    const-wide v60, 0x400921fb54442d18L    # Math.PI

    mul-double v60, v60, v48

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v60

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v64, 0x4020000000000000L    # 8.0

    mul-double v64, v64, v20

    div-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v62

    mul-double v6, v60, v62

    .line 338
    .local v6, "a1":D
    div-double v60, v48, v14

    neg-double v0, v14

    move-wide/from16 v62, v0

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    add-double v64, v64, v14

    mul-double v62, v62, v64

    div-double v62, v62, v48

    invoke-static/range {v62 .. v63}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v62

    mul-double v8, v60, v62

    .line 339
    .local v8, "a2":D
    add-double v60, v6, v8

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v10, v60, v62

    .line 340
    .local v10, "aSum":D
    div-double v32, v6, v10

    .line 341
    .local v32, "p1":D
    div-double v34, v8, v10

    .line 342
    .local v34, "p2":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v62, 0x4020000000000000L    # 8.0

    mul-double v62, v62, v20

    div-double v12, v60, v62

    .line 344
    .local v12, "c1":D
    const-wide/16 v54, 0x0

    .line 345
    .local v54, "x":D
    const-wide/16 v56, 0x0

    .line 346
    .local v56, "y":D
    const-wide/16 v52, 0x0

    .line 347
    .local v52, "v":D
    const/4 v4, 0x0

    .line 348
    .local v4, "a":I
    const-wide/16 v46, 0x0

    .line 349
    .local v46, "t":D
    const-wide/16 v40, 0x0

    .line 350
    .local v40, "qr":D
    const-wide/16 v38, 0x0

    .line 352
    .local v38, "qa":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v50

    .line 353
    .local v50, "u":D
    cmpg-double v5, v50, v32

    if-gtz v5, :cond_5

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v28

    .line 355
    .local v28, "n":D
    add-double v60, v20, v18

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v60

    mul-double v60, v60, v28

    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    sub-double v54, v60, v62

    .line 356
    cmpl-double v5, v54, v14

    if-gtz v5, :cond_1

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v60, v0

    cmpg-double v5, v54, v60

    if-ltz v5, :cond_1

    .line 359
    const-wide/16 v60, 0x0

    cmpg-double v5, v54, v60

    if-gez v5, :cond_4

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v56

    .line 360
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v16

    .line 361
    .local v16, "e":D
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v60, v0

    mul-double v62, v28, v28

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    div-double v62, v62, v64

    sub-double v60, v60, v62

    add-double v52, v60, v12

    .line 372
    .end local v16    # "e":D
    .end local v28    # "n":D
    :goto_3
    const-wide/16 v60, 0x0

    cmpg-double v5, v54, v60

    if-gez v5, :cond_7

    const/4 v4, 0x1

    .line 373
    :goto_4
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    add-double v60, v60, v56

    mul-double v60, v60, v56

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    mul-double v62, v62, v20

    div-double v46, v60, v62

    .line 374
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v60, v0

    cmpg-double v5, v52, v60

    if-gez v5, :cond_8

    if-nez v4, :cond_8

    .line 375
    add-double v56, v56, v20

    .line 392
    :goto_5
    move-wide/from16 v0, v56

    double-to-long v0, v0

    move-wide/from16 v60, v0

    add-long v28, v58, v60

    .end local v4    # "a":I
    .end local v6    # "a1":D
    .end local v8    # "a2":D
    .end local v10    # "aSum":D
    .end local v12    # "c1":D
    .end local v14    # "delta":D
    .end local v18    # "halfDelta":D
    .end local v20    # "lambda":D
    .end local v22    # "lambdaFractional":D
    .end local v24    # "logLambda":D
    .end local v26    # "logLambdaFactorial":D
    .end local v32    # "p1":D
    .end local v34    # "p2":D
    .end local v38    # "qa":D
    .end local v40    # "qr":D
    .end local v46    # "t":D
    .end local v48    # "twolpd":D
    .end local v50    # "u":D
    .end local v52    # "v":D
    .end local v54    # "x":D
    .end local v56    # "y":D
    .end local v58    # "y2":J
    :cond_2
    return-wide v28

    .line 333
    .restart local v20    # "lambda":D
    .restart local v22    # "lambdaFractional":D
    .restart local v24    # "logLambda":D
    .restart local v26    # "logLambdaFactorial":D
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v58

    goto/16 :goto_1

    .line 359
    .restart local v4    # "a":I
    .restart local v6    # "a1":D
    .restart local v8    # "a2":D
    .restart local v10    # "aSum":D
    .restart local v12    # "c1":D
    .restart local v14    # "delta":D
    .restart local v18    # "halfDelta":D
    .restart local v28    # "n":D
    .restart local v32    # "p1":D
    .restart local v34    # "p2":D
    .restart local v38    # "qa":D
    .restart local v40    # "qr":D
    .restart local v46    # "t":D
    .restart local v48    # "twolpd":D
    .restart local v50    # "u":D
    .restart local v52    # "v":D
    .restart local v54    # "x":D
    .restart local v56    # "y":D
    .restart local v58    # "y2":J
    :cond_4
    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v56

    goto :goto_2

    .line 363
    .end local v28    # "n":D
    :cond_5
    add-double v60, v32, v34

    cmpl-double v5, v50, v60

    if-lez v5, :cond_6

    .line 364
    move-wide/from16 v56, v20

    .line 365
    goto :goto_5

    .line 367
    :cond_6
    div-double v60, v48, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v62

    mul-double v60, v60, v62

    add-double v54, v14, v60

    .line 368
    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v56

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v60

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v60, v0

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v62, v62, v54

    mul-double v62, v62, v14

    div-double v62, v62, v48

    sub-double v52, v60, v62

    goto :goto_3

    .line 372
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 378
    :cond_8
    const-wide/high16 v60, 0x4000000000000000L    # 2.0

    mul-double v60, v60, v56

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v60, v60, v62

    const-wide/high16 v62, 0x4018000000000000L    # 6.0

    mul-double v62, v62, v20

    div-double v60, v60, v62

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v60, v60, v62

    mul-double v40, v46, v60

    .line 379
    mul-double v60, v46, v46

    const-wide/high16 v62, 0x4008000000000000L    # 3.0

    int-to-double v0, v4

    move-wide/from16 v64, v0

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v56

    mul-double v64, v64, v66

    add-double v64, v64, v20

    mul-double v62, v62, v64

    div-double v60, v60, v62

    sub-double v38, v40, v60

    .line 380
    cmpg-double v5, v52, v38

    if-gez v5, :cond_9

    .line 381
    add-double v56, v56, v20

    .line 382
    goto :goto_5

    .line 384
    :cond_9
    cmpl-double v5, v52, v40

    if-gtz v5, :cond_1

    .line 387
    mul-double v60, v56, v24

    add-double v62, v56, v20

    move-wide/from16 v0, v62

    double-to-int v5, v0

    invoke-static {v5}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v62

    sub-double v60, v60, v62

    add-double v60, v60, v26

    cmpg-double v5, v52, v60

    if-gez v5, :cond_1

    .line 388
    add-double v56, v56, v20

    .line 389
    goto/16 :goto_5
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 7
    .param p1, "x"    # I

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 199
    if-gez p1, :cond_1

    .line 200
    const-wide/16 v0, 0x0

    .line 205
    :cond_0
    :goto_0
    return-wide v0

    .line 202
    :cond_1
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_0

    .line 205
    int-to-double v2, p1

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    iget v6, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getMean()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .prologue
    .line 265
    const v0, 0x7fffffff

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 10
    .param p1, "x"    # I

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 185
    if-ltz p1, :cond_0

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_1

    .line 186
    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 194
    .local v0, "ret":D
    :goto_0
    return-wide v0

    .line 187
    .end local v0    # "ret":D
    :cond_1
    if-nez p1, :cond_2

    .line 188
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    neg-double v0, v2

    .restart local v0    # "ret":D
    goto :goto_0

    .line 190
    .end local v0    # "ret":D
    :cond_2
    int-to-double v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->getStirlingError(D)D

    move-result-wide v2

    neg-double v2, v2

    int-to-double v4, p1

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->getDeviancePart(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    int-to-double v4, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0
.end method

.method public normalApproximateProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    int-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->logProbability(I)D

    move-result-wide v0

    .line 178
    .local v0, "logProbability":D
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public sample()I
    .locals 4

    .prologue
    .line 303
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
