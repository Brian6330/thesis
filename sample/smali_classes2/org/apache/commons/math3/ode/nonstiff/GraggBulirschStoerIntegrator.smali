.class public Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "GraggBulirschStoerIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field private coeff:[[D

.field private costPerStep:[I

.field private costPerTimeUnit:[D

.field private maxChecks:I

.field private maxIter:I

.field private maxOrder:I

.field private mudif:I

.field private optimalStep:[D

.field private orderControl1:D

.field private orderControl2:D

.field private performTest:Z

.field private sequence:[I

.field private stabilityReduction:D

.field private stepControl1:D

.field private stepControl2:D

.field private stepControl3:D

.field private stepControl4:D

.field private useInterpolationError:Z


# direct methods
.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .prologue
    .line 171
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 173
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    .line 174
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    .line 175
    const/4 v1, -0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    .line 176
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    .line 177
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 11
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .prologue
    .line 193
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 195
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    .line 196
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    .line 197
    const/4 v1, -0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    .line 198
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    .line 199
    return-void
.end method

.method private extrapolate(II[[D[D)V
    .locals 14
    .param p1, "offset"    # I
    .param p2, "k"    # I
    .param p3, "diag"    # [[D
    .param p4, "last"    # [D

    .prologue
    .line 531
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    move/from16 v0, p2

    if-ge v3, v0, :cond_1

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 534
    sub-int v4, p2, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p3, v4

    sub-int v5, p2, v3

    aget-object v5, p3, v5

    aget-wide v6, v5, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v8, p2, p1

    aget-object v5, v5, v8

    add-int/lit8 v8, v3, -0x1

    aget-wide v8, v5, v8

    sub-int v5, p2, v3

    aget-object v5, p3, v5

    aget-wide v10, v5, v2

    sub-int v5, p2, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p3, v5

    aget-wide v12, v5, v2

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 531
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 542
    const/4 v4, 0x0

    aget-object v4, p3, v4

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v7, p2, p1

    aget-object v6, v6, v7

    add-int/lit8 v7, p2, -0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, p3, v8

    aget-wide v8, v8, v2

    aget-wide v10, p4, v2

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p4, v2

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 544
    :cond_2
    return-void
.end method

.method private initializeArrays()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 364
    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    div-int/lit8 v4, v5, 0x2

    .line 366
    .local v4, "size":I
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v5, v5

    if-eq v5, v4, :cond_1

    .line 368
    :cond_0
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    .line 369
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    .line 370
    new-array v5, v4, [[D

    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    .line 371
    new-array v5, v4, [D

    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    .line 372
    new-array v5, v4, [D

    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    .line 376
    :cond_1
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 377
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    aput v6, v5, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v7

    .line 383
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_3

    .line 384
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    aput v6, v5, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    .line 389
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    if-lez v0, :cond_4

    new-array v5, v0, [D

    :goto_3
    aput-object v5, v6, v0

    .line 390
    const/4 v1, 0x0

    .local v1, "l":I
    :goto_4
    if-ge v1, v0, :cond_5

    .line 391
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v0

    int-to-double v6, v5

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    aget v5, v5, v8

    int-to-double v8, v5

    div-double v2, v6, v8

    .line 392
    .local v2, "ratio":D
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    aget-object v5, v5, v0

    mul-double v6, v2, v2

    sub-double/2addr v6, v10

    div-double v6, v10, v6

    aput-wide v6, v5, v1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 389
    .end local v1    # "l":I
    .end local v2    # "ratio":D
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 388
    .restart local v1    # "l":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 396
    .end local v1    # "l":I
    :cond_6
    return-void
.end method

.method private rescale([D[D[D)V
    .locals 8
    .param p1, "y1"    # [D
    .param p2, "y2"    # [D
    .param p3, "scale"    # [D

    .prologue
    .line 427
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    if-nez v1, :cond_0

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 429
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aget-wide v6, p2, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 430
    .local v2, "yi":D
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalAbsoluteTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "i":I
    .end local v2    # "yi":D
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 434
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aget-wide v6, p2, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 435
    .restart local v2    # "yi":D
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v1, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v0

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .end local v2    # "yi":D
    :cond_1
    return-void
.end method

.method private tryStep(D[DDI[D[[D[D[D[D)Z
    .locals 30
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "step"    # D
    .param p6, "k"    # I
    .param p7, "scale"    # [D
    .param p8, "f"    # [[D
    .param p9, "yMiddle"    # [D
    .param p10, "yEnd"    # [D
    .param p11, "yTmp"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    move-object/from16 v24, v0

    aget v13, v24, p6

    .line 464
    .local v13, "n":I
    int-to-double v0, v13

    move-wide/from16 v24, v0

    div-double v18, p4, v24

    .line 465
    .local v18, "subStep":D
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v20, v24, v18

    .line 468
    .local v20, "subStep2":D
    add-double v22, p1, v18

    .line 469
    .local v22, "t":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    .line 470
    aget-wide v24, p3, v8

    aput-wide v24, p11, v8

    .line 471
    aget-wide v24, p3, v8

    const/16 v26, 0x0

    aget-object v26, p8, v26

    aget-wide v26, v26, v8

    mul-double v26, v26, v18

    add-double v24, v24, v26

    aput-wide v24, p10, v8

    .line 469
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 473
    :cond_0
    const/16 v24, 0x1

    aget-object v24, p8, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, p10

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 476
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_1
    if-ge v9, v13, :cond_6

    .line 478
    mul-int/lit8 v24, v9, 0x2

    move/from16 v0, v24

    if-ne v0, v13, :cond_1

    .line 480
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p10

    move/from16 v1, v24

    move-object/from16 v2, p9

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    :cond_1
    add-double v22, v22, v18

    .line 484
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_2

    .line 485
    aget-wide v14, p10, v8

    .line 486
    .local v14, "middle":D
    aget-wide v24, p11, v8

    aget-object v26, p8, v9

    aget-wide v26, v26, v8

    mul-double v26, v26, v20

    add-double v24, v24, v26

    aput-wide v24, p10, v8

    .line 487
    aput-wide v14, p11, v8

    .line 484
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 490
    .end local v14    # "middle":D
    :cond_2
    add-int/lit8 v24, v9, 0x1

    aget-object v24, p8, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, p10

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v9, v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    move/from16 v24, v0

    move/from16 v0, p6

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 494
    const-wide/16 v10, 0x0

    .line 495
    .local v10, "initialNorm":D
    const/4 v12, 0x0

    .local v12, "l":I
    :goto_3
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_3

    .line 496
    const/16 v24, 0x0

    aget-object v24, p8, v24

    aget-wide v24, v24, v12

    aget-wide v26, p7, v12

    div-double v16, v24, v26

    .line 497
    .local v16, "ratio":D
    mul-double v24, v16, v16

    add-double v10, v10, v24

    .line 495
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 499
    .end local v16    # "ratio":D
    :cond_3
    const-wide/16 v6, 0x0

    .line 500
    .local v6, "deltaNorm":D
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_4

    .line 501
    add-int/lit8 v24, v9, 0x1

    aget-object v24, p8, v24

    aget-wide v24, v24, v12

    const/16 v26, 0x0

    aget-object v26, p8, v26

    aget-wide v26, v26, v12

    sub-double v24, v24, v26

    aget-wide v26, p7, v12

    div-double v16, v24, v26

    .line 502
    .restart local v16    # "ratio":D
    mul-double v24, v16, v16

    add-double v6, v6, v24

    .line 500
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 504
    .end local v16    # "ratio":D
    :cond_4
    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    const-wide v26, 0x3cd203af9ee75616L    # 1.0E-15

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v26

    mul-double v24, v24, v26

    cmpl-double v24, v6, v24

    if-lez v24, :cond_5

    .line 505
    const/16 v24, 0x0

    .line 516
    .end local v6    # "deltaNorm":D
    .end local v10    # "initialNorm":D
    .end local v12    # "l":I
    :goto_5
    return v24

    .line 476
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 512
    :cond_6
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_7

    .line 513
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    aget-wide v26, p11, v8

    aget-wide v28, p10, v8

    add-double v26, v26, v28

    aget-object v28, p8, v13

    aget-wide v28, v28, v8

    mul-double v28, v28, v18

    add-double v26, v26, v28

    mul-double v24, v24, v26

    aput-wide v24, p10, v8

    .line 512
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 516
    :cond_7
    const/16 v24, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0
    .param p1, "function"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .prologue
    .line 353
    invoke-super/range {p0 .. p7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 359
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .prologue
    .line 339
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 342
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 344
    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 86
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 553
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v12

    cmpl-double v11, p2, v12

    if-lez v11, :cond_0

    const/4 v10, 0x1

    .line 557
    .local v10, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v15

    .line 558
    .local v15, "y0":[D
    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 559
    .local v5, "y":[D
    array-length v11, v5

    new-array v6, v11, [D

    .line 560
    .local v6, "yDot0":[D
    array-length v11, v5

    new-array v7, v11, [D

    .line 561
    .local v7, "y1":[D
    array-length v11, v5

    new-array v0, v11, [D

    move-object/from16 v24, v0

    .line 562
    .local v24, "yTmp":[D
    array-length v11, v5

    new-array v0, v11, [D

    move-object/from16 v25, v0

    .line 564
    .local v25, "yTmpDot":[D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    new-array v0, v11, [[D

    move-object/from16 v38, v0

    .line 565
    .local v38, "diagonal":[[D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    new-array v0, v11, [[D

    move-object/from16 v84, v0

    .line 566
    .local v84, "y1Diag":[[D
    const/16 v32, 0x0

    .local v32, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, v32

    if-ge v0, v11, :cond_1

    .line 567
    array-length v11, v5

    new-array v11, v11, [D

    aput-object v11, v38, v32

    .line 568
    array-length v11, v5

    new-array v11, v11, [D

    aput-object v11, v84, v32

    .line 566
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 554
    .end local v5    # "y":[D
    .end local v6    # "yDot0":[D
    .end local v7    # "y1":[D
    .end local v10    # "forward":Z
    .end local v15    # "y0":[D
    .end local v24    # "yTmp":[D
    .end local v25    # "yTmpDot":[D
    .end local v32    # "k":I
    .end local v38    # "diagonal":[[D
    .end local v84    # "y1Diag":[[D
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 571
    .restart local v5    # "y":[D
    .restart local v6    # "yDot0":[D
    .restart local v7    # "y1":[D
    .restart local v10    # "forward":Z
    .restart local v15    # "y0":[D
    .restart local v24    # "yTmp":[D
    .restart local v25    # "yTmpDot":[D
    .restart local v32    # "k":I
    .restart local v38    # "diagonal":[[D
    .restart local v84    # "y1Diag":[[D
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    new-array v0, v11, [[[D

    move-object/from16 v51, v0

    .line 572
    .local v51, "fk":[[[D
    const/16 v32, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    move/from16 v0, v32

    if-ge v0, v11, :cond_3

    .line 574
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v11, v11, v32

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [[D

    aput-object v11, v51, v32

    .line 577
    aget-object v11, v51, v32

    const/4 v12, 0x0

    aput-object v6, v11, v12

    .line 579
    const/16 v61, 0x0

    .local v61, "l":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v11, v11, v32

    move/from16 v0, v61

    if-ge v0, v11, :cond_2

    .line 580
    aget-object v11, v51, v32

    add-int/lit8 v12, v61, 0x1

    array-length v13, v15

    new-array v13, v13, [D

    aput-object v13, v11, v12

    .line 579
    add-int/lit8 v61, v61, 0x1

    goto :goto_3

    .line 572
    :cond_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 585
    .end local v61    # "l":I
    :cond_3
    if-eq v5, v15, :cond_4

    .line 586
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v15

    invoke-static {v15, v11, v5, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    :cond_4
    array-length v11, v15

    new-array v8, v11, [D

    .line 590
    .local v8, "yDot1":[D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    array-length v12, v15

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 593
    .local v9, "yMidDots":[[D
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    new-array v0, v11, [D

    move-object/from16 v19, v0

    .line 594
    .local v19, "scale":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v5, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 597
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    move-wide/from16 v82, v0

    .line 599
    .local v82, "tol":D
    :goto_4
    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-wide/from16 v0, v82

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v64

    .line 600
    .local v64, "log10R":D
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const-wide v20, 0x3fe3333333333333L    # 0.6

    mul-double v20, v20, v64

    sub-double v16, v16, v20

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v13, v0

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v81

    .line 605
    .local v81, "targetIter":I
    new-instance v4, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 611
    .local v4, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 614
    const-wide/16 v56, 0x0

    .line 615
    .local v56, "hNew":D
    const-wide v68, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 616
    .local v68, "maxError":D
    const/16 v75, 0x0

    .line 617
    .local v75, "previousRejected":Z
    const/16 v50, 0x1

    .line 618
    .local v50, "firstTime":Z
    const/16 v71, 0x1

    .line 619
    .local v71, "newStep":Z
    const/16 v39, 0x0

    .line 620
    .local v39, "firstStepAlreadyComputed":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v13

    move-object/from16 v12, p0

    move-wide/from16 v16, p2

    invoke-virtual/range {v12 .. v17}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initIntegration(D[DD)V

    .line 621
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    aput-wide v16, v11, v12

    .line 622
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    .line 626
    :cond_5
    const/16 v80, 0x0

    .line 628
    .local v80, "reject":Z
    if-eqz v71, :cond_8

    .line 630
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 633
    if-nez v39, :cond_6

    .line 634
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 637
    :cond_6
    if-eqz v50, :cond_7

    .line 638
    mul-int/lit8 v11, v81, 0x2

    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v20, v0

    move-object/from16 v16, p0

    move/from16 v17, v10

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    invoke-virtual/range {v16 .. v25}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v56

    .line 642
    :cond_7
    const/16 v71, 0x0

    .line 646
    :cond_8
    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    .line 649
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    cmpl-double v11, v12, p2

    if-gtz v11, :cond_a

    :cond_9
    if-nez v10, :cond_b

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    cmpg-double v11, v12, p2

    if-gez v11, :cond_b

    .line 651
    :cond_a
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    sub-double v12, p2, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    .line 653
    :cond_b
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    add-double v72, v12, v16

    .line 654
    .local v72, "nextT":D
    if-eqz v10, :cond_f

    cmpl-double v11, v72, p2

    if-ltz v11, :cond_e

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    .line 657
    const/16 v32, -0x1

    .line 658
    const/16 v63, 0x1

    .local v63, "loop":Z
    :cond_c
    :goto_6
    if-eqz v63, :cond_1e

    .line 660
    add-int/lit8 v32, v32, 0x1

    .line 663
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v30, v0

    aget-object v34, v51, v32

    if-nez v32, :cond_11

    const/4 v11, 0x0

    aget-object v35, v9, v11

    :goto_7
    if-nez v32, :cond_12

    move-object/from16 v36, v7

    :goto_8
    move-object/from16 v26, p0

    move-object/from16 v29, v5

    move-object/from16 v33, v19

    move-object/from16 v37, v24

    invoke-direct/range {v26 .. v37}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->tryStep(D[DDI[D[[D[D[D[D)Z

    move-result v11

    if-nez v11, :cond_13

    .line 669
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v56

    .line 670
    const/16 v80, 0x1

    .line 671
    const/16 v63, 0x0

    goto :goto_6

    .line 597
    .end local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .end local v39    # "firstStepAlreadyComputed":Z
    .end local v50    # "firstTime":Z
    .end local v56    # "hNew":D
    .end local v63    # "loop":Z
    .end local v64    # "log10R":D
    .end local v68    # "maxError":D
    .end local v71    # "newStep":Z
    .end local v72    # "nextT":D
    .end local v75    # "previousRejected":Z
    .end local v80    # "reject":Z
    .end local v81    # "targetIter":I
    .end local v82    # "tol":D
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    const/4 v12, 0x0

    aget-wide v82, v11, v12

    goto/16 :goto_4

    .line 654
    .restart local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .restart local v39    # "firstStepAlreadyComputed":Z
    .restart local v50    # "firstTime":Z
    .restart local v56    # "hNew":D
    .restart local v64    # "log10R":D
    .restart local v68    # "maxError":D
    .restart local v71    # "newStep":Z
    .restart local v72    # "nextT":D
    .restart local v75    # "previousRejected":Z
    .restart local v80    # "reject":Z
    .restart local v81    # "targetIter":I
    .restart local v82    # "tol":D
    :cond_e
    const/4 v11, 0x0

    goto :goto_5

    :cond_f
    cmpg-double v11, v72, p2

    if-gtz v11, :cond_10

    const/4 v11, 0x1

    goto :goto_5

    :cond_10
    const/4 v11, 0x0

    goto :goto_5

    .line 663
    .restart local v63    # "loop":Z
    :cond_11
    add-int/lit8 v11, v32, -0x1

    aget-object v35, v38, v11

    goto :goto_7

    :cond_12
    add-int/lit8 v11, v32, -0x1

    aget-object v36, v84, v11

    goto :goto_8

    .line 676
    :cond_13
    if-lez v32, :cond_c

    .line 680
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v84

    invoke-direct {v0, v11, v1, v2, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v7, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 684
    const-wide/16 v42, 0x0

    .line 685
    .local v42, "error":D
    const/16 v60, 0x0

    .local v60, "j":I
    :goto_9
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    move/from16 v0, v60

    if-ge v0, v11, :cond_14

    .line 686
    aget-wide v12, v7, v60

    const/4 v11, 0x0

    aget-object v11, v84, v11

    aget-wide v16, v11, v60

    sub-double v12, v12, v16

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    aget-wide v16, v19, v60

    div-double v40, v12, v16

    .line 687
    .local v40, "e":D
    mul-double v12, v40, v40

    add-double v42, v42, v12

    .line 685
    add-int/lit8 v60, v60, 0x1

    goto :goto_9

    .line 689
    .end local v40    # "e":D
    :cond_14
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    int-to-double v12, v11

    div-double v12, v42, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v42

    .line 691
    const-wide v12, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v11, v42, v12

    if-gtz v11, :cond_15

    const/4 v11, 0x1

    move/from16 v0, v32

    if-le v0, v11, :cond_16

    cmpl-double v11, v42, v68

    if-lez v11, :cond_16

    .line 693
    :cond_15
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v56

    .line 694
    const/16 v80, 0x1

    .line 695
    const/16 v63, 0x0

    goto/16 :goto_6

    .line 698
    :cond_16
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v42

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v68

    .line 701
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-int/lit8 v11, v32, 0x2

    add-int/lit8 v11, v11, 0x1

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v44, v12, v16

    .line 702
    .local v44, "exp":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    move-wide/from16 v16, v0

    div-double v16, v42, v16

    move-wide/from16 v0, v16

    move-wide/from16 v2, v44

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    div-double v46, v12, v16

    .line 703
    .local v46, "fac":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    move-wide/from16 v0, v44

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v76

    .line 704
    .local v76, "pow":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    div-double v12, v76, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v76

    move-wide/from16 v0, v16

    move-wide/from16 v2, v46

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v46

    .line 705
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double v12, v12, v46

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    aput-wide v12, v11, v32

    .line 706
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v12, v12, v32

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v16, v14, v32

    div-double v12, v12, v16

    aput-wide v12, v11, v32

    .line 709
    sub-int v11, v32, v81

    packed-switch v11, :pswitch_data_0

    .line 779
    if-nez v50, :cond_17

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v11, :cond_c

    :cond_17
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v42, v12

    if-gtz v11, :cond_c

    .line 780
    const/16 v63, 0x0

    goto/16 :goto_6

    .line 712
    :pswitch_0
    const/4 v11, 0x1

    move/from16 v0, v81

    if-le v0, v11, :cond_c

    if-nez v75, :cond_c

    .line 715
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v42, v12

    if-gtz v11, :cond_18

    .line 717
    const/16 v63, 0x0

    goto/16 :goto_6

    .line 722
    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v11, v11, v81

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v14, v81, 0x1

    aget v11, v11, v14

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/4 v14, 0x0

    aget v11, v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/16 v16, 0x0

    aget v14, v14, v16

    mul-int/2addr v11, v14

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v78, v12, v16

    .line 724
    .local v78, "ratio":D
    mul-double v12, v78, v78

    cmpl-double v11, v42, v12

    if-lez v11, :cond_c

    .line 727
    const/16 v80, 0x1

    .line 728
    const/16 v63, 0x0

    .line 729
    move/from16 v81, v32

    .line 730
    const/4 v11, 0x1

    move/from16 v0, v81

    if-le v0, v11, :cond_19

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v12, v81, -0x1

    aget-wide v12, v11, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v20, v11, v81

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_19

    .line 733
    add-int/lit8 v81, v81, -0x1

    .line 735
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v56, v11, v81

    goto/16 :goto_6

    .line 742
    .end local v78    # "ratio":D
    :pswitch_1
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v42, v12

    if-gtz v11, :cond_1a

    .line 744
    const/16 v63, 0x0

    goto/16 :goto_6

    .line 749
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v12, v32, 0x1

    aget v11, v11, v12

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/4 v14, 0x0

    aget v11, v11, v14

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v78, v12, v16

    .line 750
    .restart local v78    # "ratio":D
    mul-double v12, v78, v78

    cmpl-double v11, v42, v12

    if-lez v11, :cond_c

    .line 753
    const/16 v80, 0x1

    .line 754
    const/16 v63, 0x0

    .line 755
    const/4 v11, 0x1

    move/from16 v0, v81

    if-le v0, v11, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v12, v81, -0x1

    aget-wide v12, v11, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v20, v11, v81

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_1b

    .line 758
    add-int/lit8 v81, v81, -0x1

    .line 760
    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v56, v11, v81

    goto/16 :goto_6

    .line 766
    .end local v78    # "ratio":D
    :pswitch_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v42, v12

    if-lez v11, :cond_1d

    .line 767
    const/16 v80, 0x1

    .line 768
    const/4 v11, 0x1

    move/from16 v0, v81

    if-le v0, v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v12, v81, -0x1

    aget-wide v12, v11, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v20, v11, v81

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_1c

    .line 771
    add-int/lit8 v81, v81, -0x1

    .line 773
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v56, v11, v81

    .line 775
    :cond_1d
    const/16 v63, 0x0

    .line 776
    goto/16 :goto_6

    .line 791
    .end local v42    # "error":D
    .end local v44    # "exp":D
    .end local v46    # "fac":D
    .end local v60    # "j":I
    .end local v76    # "pow":D
    :cond_1e
    if-nez v80, :cond_1f

    .line 793
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 797
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->getMaxStep()D

    move-result-wide v54

    .line 798
    .local v54, "hInt":D
    if-nez v80, :cond_29

    .line 801
    const/16 v60, 0x1

    .restart local v60    # "j":I
    :goto_a
    move/from16 v0, v60

    move/from16 v1, v32

    if-gt v0, v1, :cond_20

    .line 802
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v9, v12

    move-object/from16 v0, p0

    move/from16 v1, v60

    move-object/from16 v2, v38

    invoke-direct {v0, v11, v1, v2, v12}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 801
    add-int/lit8 v60, v60, 0x1

    goto :goto_a

    .line 805
    :cond_20
    mul-int/lit8 v11, v32, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    sub-int/2addr v11, v12

    add-int/lit8 v70, v11, 0x3

    .line 807
    .local v70, "mu":I
    const/16 v61, 0x0

    .restart local v61    # "l":I
    :goto_b
    move/from16 v0, v61

    move/from16 v1, v70

    if-ge v0, v1, :cond_28

    .line 810
    div-int/lit8 v62, v61, 0x2

    .line 811
    .local v62, "l2":I
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v11, v11, v62

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    move/from16 v0, v61

    invoke-static {v12, v13, v0}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v48

    .line 812
    .local v48, "factor":D
    aget-object v11, v51, v62

    array-length v11, v11

    div-int/lit8 v67, v11, 0x2

    .line 813
    .local v67, "middleIndex":I
    const/16 v53, 0x0

    .local v53, "i":I
    :goto_c
    array-length v11, v15

    move/from16 v0, v53

    if-ge v0, v11, :cond_21

    .line 814
    add-int/lit8 v11, v61, 0x1

    aget-object v11, v9, v11

    aget-object v12, v51, v62

    add-int v13, v67, v61

    aget-object v12, v12, v13

    aget-wide v12, v12, v53

    mul-double v12, v12, v48

    aput-wide v12, v11, v53

    .line 813
    add-int/lit8 v53, v53, 0x1

    goto :goto_c

    .line 816
    :cond_21
    const/16 v60, 0x1

    :goto_d
    sub-int v11, v32, v62

    move/from16 v0, v60

    if-gt v0, v11, :cond_23

    .line 817
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int v14, v60, v62

    aget v11, v11, v14

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    move/from16 v0, v61

    invoke-static {v12, v13, v0}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v48

    .line 818
    add-int v11, v62, v60

    aget-object v11, v51, v11

    array-length v11, v11

    div-int/lit8 v67, v11, 0x2

    .line 819
    const/16 v53, 0x0

    :goto_e
    array-length v11, v15

    move/from16 v0, v53

    if-ge v0, v11, :cond_22

    .line 820
    add-int/lit8 v11, v60, -0x1

    aget-object v11, v38, v11

    add-int v12, v62, v60

    aget-object v12, v51, v12

    add-int v13, v67, v61

    aget-object v12, v12, v13

    aget-wide v12, v12, v53

    mul-double v12, v12, v48

    aput-wide v12, v11, v53

    .line 819
    add-int/lit8 v53, v53, 0x1

    goto :goto_e

    .line 822
    :cond_22
    add-int/lit8 v11, v61, 0x1

    aget-object v11, v9, v11

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v60

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 816
    add-int/lit8 v60, v60, 0x1

    goto :goto_d

    .line 824
    :cond_23
    const/16 v53, 0x0

    :goto_f
    array-length v11, v15

    move/from16 v0, v53

    if-ge v0, v11, :cond_24

    .line 825
    add-int/lit8 v11, v61, 0x1

    aget-object v11, v9, v11

    aget-wide v12, v11, v53

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    aput-wide v12, v11, v53

    .line 824
    add-int/lit8 v53, v53, 0x1

    goto :goto_f

    .line 829
    :cond_24
    add-int/lit8 v11, v61, 0x1

    div-int/lit8 v60, v11, 0x2

    :goto_10
    move/from16 v0, v60

    move/from16 v1, v32

    if-gt v0, v1, :cond_27

    .line 830
    aget-object v11, v51, v60

    array-length v11, v11

    add-int/lit8 v66, v11, -0x1

    .local v66, "m":I
    :goto_11
    add-int/lit8 v11, v61, 0x1

    mul-int/lit8 v11, v11, 0x2

    move/from16 v0, v66

    if-lt v0, v11, :cond_26

    .line 831
    const/16 v53, 0x0

    :goto_12
    array-length v11, v15

    move/from16 v0, v53

    if-ge v0, v11, :cond_25

    .line 832
    aget-object v11, v51, v60

    aget-object v11, v11, v66

    aget-wide v12, v11, v53

    aget-object v14, v51, v60

    add-int/lit8 v16, v66, -0x2

    aget-object v14, v14, v16

    aget-wide v16, v14, v53

    sub-double v12, v12, v16

    aput-wide v12, v11, v53

    .line 831
    add-int/lit8 v53, v53, 0x1

    goto :goto_12

    .line 830
    :cond_25
    add-int/lit8 v66, v66, -0x1

    goto :goto_11

    .line 829
    :cond_26
    add-int/lit8 v60, v60, 0x1

    goto :goto_10

    .line 807
    .end local v66    # "m":I
    :cond_27
    add-int/lit8 v61, v61, 0x1

    goto/16 :goto_b

    .line 839
    .end local v48    # "factor":D
    .end local v53    # "i":I
    .end local v62    # "l2":I
    .end local v67    # "middleIndex":I
    :cond_28
    if-ltz v70, :cond_29

    move-object/from16 v52, v4

    .line 842
    check-cast v52, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .line 844
    .local v52, "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-object/from16 v0, v52

    move/from16 v1, v70

    invoke-virtual {v0, v1, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    .line 846
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-eqz v11, :cond_29

    .line 848
    move-object/from16 v0, v52

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v58

    .line 849
    .local v58, "interpError":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v11, v70, 0x4

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v16, v16, v20

    move-wide/from16 v0, v58

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v16

    div-double v12, v12, v16

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    .line 851
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v11, v58, v12

    if-lez v11, :cond_29

    .line 852
    move-wide/from16 v56, v54

    .line 853
    const/16 v80, 0x1

    .line 861
    .end local v52    # "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .end local v58    # "interpError":D
    .end local v60    # "j":I
    .end local v61    # "l":I
    .end local v70    # "mu":I
    :cond_29
    if-nez v80, :cond_2b

    .line 864
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    invoke-virtual {v4, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    move-object/from16 v26, p0

    move-object/from16 v27, v4

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-wide/from16 v30, p2

    .line 865
    invoke-virtual/range {v26 .. v31}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 868
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v4, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 869
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v15

    invoke-static {v7, v11, v5, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v15

    invoke-static {v8, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    const/16 v39, 0x1

    .line 874
    const/4 v11, 0x1

    move/from16 v0, v32

    if-ne v0, v11, :cond_2d

    .line 875
    const/16 v74, 0x2

    .line 876
    .local v74, "optimalIter":I
    if-eqz v75, :cond_2a

    .line 877
    const/16 v74, 0x1

    .line 897
    :cond_2a
    :goto_13
    if-eqz v75, :cond_31

    .line 900
    move/from16 v0, v74

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v81

    .line 901
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v16, v11, v81

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v56

    .line 921
    :goto_14
    const/16 v71, 0x1

    .line 925
    .end local v74    # "optimalIter":I
    :cond_2b
    move-wide/from16 v0, v56

    move-wide/from16 v2, v54

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v56

    .line 926
    if-nez v10, :cond_2c

    .line 927
    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v56, v0

    .line 930
    :cond_2c
    const/16 v50, 0x0

    .line 932
    if-eqz v80, :cond_34

    .line 933
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    .line 934
    const/16 v75, 0x1

    .line 939
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v11, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 943
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->resetInternalState()V

    .line 947
    return-void

    .line 879
    :cond_2d
    move/from16 v0, v32

    move/from16 v1, v81

    if-gt v0, v1, :cond_2f

    .line 880
    move/from16 v74, v32

    .line 881
    .restart local v74    # "optimalIter":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v12, v32, -0x1

    aget-wide v12, v11, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v20, v11, v32

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_2e

    .line 882
    add-int/lit8 v74, v32, -0x1

    goto :goto_13

    .line 883
    :cond_2e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v12, v11, v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v14, v32, -0x1

    aget-wide v20, v11, v14

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_2a

    .line 884
    add-int/lit8 v11, v32, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v74

    goto/16 :goto_13

    .line 887
    .end local v74    # "optimalIter":I
    :cond_2f
    add-int/lit8 v74, v32, -0x1

    .line 888
    .restart local v74    # "optimalIter":I
    const/4 v11, 0x2

    move/from16 v0, v32

    if-le v0, v11, :cond_30

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v12, v32, -0x2

    aget-wide v12, v11, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v14, v32, -0x1

    aget-wide v20, v11, v14

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_30

    .line 890
    add-int/lit8 v74, v32, -0x2

    .line 892
    :cond_30
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v12, v11, v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v20, v11, v74

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_2a

    .line 893
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, v32

    invoke-static {v0, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v74

    goto/16 :goto_13

    .line 904
    :cond_31
    move/from16 v0, v74

    move/from16 v1, v32

    if-gt v0, v1, :cond_32

    .line 905
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v56, v11, v74

    .line 917
    :goto_16
    move/from16 v81, v74

    goto/16 :goto_14

    .line 907
    :cond_32
    move/from16 v0, v32

    move/from16 v1, v81

    if-ge v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v12, v11, v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v14, v32, -0x1

    aget-wide v20, v11, v14

    mul-double v16, v16, v20

    cmpg-double v11, v12, v16

    if-gez v11, :cond_33

    .line 909
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v12, v11, v32

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v14, v74, 0x1

    aget v11, v11, v14

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v11, v11, v32

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v12, v12, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v56

    goto :goto_16

    .line 912
    :cond_33
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v12, v11, v32

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v11, v11, v74

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v11, v11, v32

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v12, v12, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v56

    goto :goto_16

    .line 936
    .end local v74    # "optimalIter":I
    :cond_34
    const/16 v75, 0x0

    goto/16 :goto_15

    .line 709
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setControlFactors(DDDD)V
    .locals 7
    .param p1, "control1"    # D
    .param p3, "control2"    # D
    .param p5, "control3"    # D
    .param p7, "control4"    # D

    .prologue
    const-wide v4, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 262
    cmpg-double v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v4

    if-lez v0, :cond_4

    .line 263
    :cond_0
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    .line 268
    :goto_0
    cmpg-double v0, p3, v2

    if-ltz v0, :cond_1

    cmpl-double v0, p3, v4

    if-lez v0, :cond_5

    .line 269
    :cond_1
    const-wide v0, 0x3fee147ae147ae14L    # 0.94

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    .line 274
    :goto_1
    cmpg-double v0, p5, v2

    if-ltz v0, :cond_2

    cmpl-double v0, p5, v4

    if-lez v0, :cond_6

    .line 275
    :cond_2
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    .line 280
    :goto_2
    const-wide v0, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double v0, p7, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x408f3f3333333333L    # 999.9

    cmpl-double v0, p7, v0

    if-lez v0, :cond_7

    .line 281
    :cond_3
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    .line 286
    :goto_3
    return-void

    .line 265
    :cond_4
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    goto :goto_0

    .line 271
    :cond_5
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    goto :goto_1

    .line 277
    :cond_6
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    goto :goto_2

    .line 283
    :cond_7
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    goto :goto_3
.end method

.method public setInterpolationControl(ZI)V
    .locals 1
    .param p1, "useInterpolationErrorForControl"    # Z
    .param p2, "mudifControlParameter"    # I

    .prologue
    .line 411
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    .line 413
    if-lez p2, :cond_0

    const/4 v0, 0x7

    if-lt p2, v0, :cond_1

    .line 414
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    .line 419
    :goto_0
    return-void

    .line 416
    :cond_1
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    goto :goto_0
.end method

.method public setOrderControl(IDD)V
    .locals 6
    .param p1, "maximalOrder"    # I
    .param p2, "control1"    # D
    .param p4, "control2"    # D

    .prologue
    const-wide v4, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 314
    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    const/16 v0, 0x12

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    .line 318
    :cond_1
    cmpg-double v0, p2, v2

    if-ltz v0, :cond_2

    cmpl-double v0, p2, v4

    if-lez v0, :cond_4

    .line 319
    :cond_2
    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    .line 324
    :goto_0
    cmpg-double v0, p4, v2

    if-ltz v0, :cond_3

    cmpl-double v0, p4, v4

    if-lez v0, :cond_5

    .line 325
    :cond_3
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    .line 331
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 333
    return-void

    .line 321
    :cond_4
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    goto :goto_0

    .line 327
    :cond_5
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    goto :goto_1
.end method

.method public setStabilityCheck(ZIID)V
    .locals 2
    .param p1, "performStabilityCheck"    # Z
    .param p2, "maxNumIter"    # I
    .param p3, "maxNumChecks"    # I
    .param p4, "stepsizeReductionFactor"    # D

    .prologue
    .line 223
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    .line 224
    if-gtz p2, :cond_0

    const/4 p2, 0x2

    .end local p2    # "maxNumIter":I
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    .line 225
    if-gtz p3, :cond_1

    const/4 p3, 0x1

    .end local p3    # "maxNumChecks":I
    :cond_1
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    .line 227
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, p4, v0

    if-lez v0, :cond_3

    .line 228
    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_3
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    goto :goto_0
.end method
