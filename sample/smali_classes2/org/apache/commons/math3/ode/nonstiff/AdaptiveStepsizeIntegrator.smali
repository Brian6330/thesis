.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "AdaptiveStepsizeIntegrator.java"


# instance fields
.field private initialStep:D

.field protected mainSetDimension:I

.field private maxStep:D

.field private minStep:D

.field protected scalAbsoluteTolerance:D

.field protected scalRelativeTolerance:D

.field protected vecAbsoluteTolerance:[D

.field protected vecRelativeTolerance:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDD)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 110
    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DDDD)V

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD[D[D)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 133
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DD[D[D)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 136
    return-void
.end method


# virtual methods
.method protected filterStep(DZZ)D
    .locals 9
    .param p1, "h"    # D
    .param p3, "forward"    # Z
    .param p4, "acceptSmall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 323
    move-wide v0, p1

    .line 324
    .local v0, "filteredH":D
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 325
    if-eqz p4, :cond_3

    .line 326
    if-eqz p3, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 333
    :cond_0
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    .line 334
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    .line 339
    :cond_1
    :goto_1
    return-wide v0

    .line 326
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    neg-double v0, v2

    goto :goto_0

    .line 328
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 335
    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    neg-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 336
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    neg-double v0, v2

    goto :goto_1
.end method

.method public getCurrentStepStart()D
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getMaxStep()D
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    return-wide v0
.end method

.method public getMinStep()D
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    return-wide v0
.end method

.method public initializeStep(ZI[DD[D[D[D[D)D
    .locals 28
    .param p1, "forward"    # Z
    .param p2, "order"    # I
    .param p3, "scale"    # [D
    .param p4, "t0"    # D
    .param p6, "y0"    # [D
    .param p7, "yDot0"    # [D
    .param p8, "y1"    # [D
    .param p9, "yDot1"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v11, v22, v24

    if-lez v11, :cond_1

    .line 254
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    move-wide/from16 v22, v0

    .line 307
    :goto_0
    return-wide v22

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    goto :goto_0

    .line 260
    :cond_1
    const-wide/16 v20, 0x0

    .line 261
    .local v20, "yOnScale2":D
    const-wide/16 v18, 0x0

    .line 262
    .local v18, "yDotOnScale2":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v10, v11, :cond_2

    .line 263
    aget-wide v22, p6, v10

    aget-wide v24, p3, v10

    div-double v14, v22, v24

    .line 264
    .local v14, "ratio":D
    mul-double v22, v14, v14

    add-double v20, v20, v22

    .line 265
    aget-wide v22, p7, v10

    aget-wide v24, p3, v10

    div-double v14, v22, v24

    .line 266
    mul-double v22, v14, v14

    add-double v18, v18, v22

    .line 262
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 269
    .end local v14    # "ratio":D
    :cond_2
    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v11, v20, v22

    if-ltz v11, :cond_3

    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v11, v18, v22

    if-gez v11, :cond_5

    :cond_3
    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 271
    .local v6, "h":D
    :goto_2
    if-nez p1, :cond_4

    .line 272
    neg-double v6, v6

    .line 276
    :cond_4
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p6

    array-length v11, v0

    if-ge v10, v11, :cond_6

    .line 277
    aget-wide v22, p6, v10

    aget-wide v24, p7, v10

    mul-double v24, v24, v6

    add-double v22, v22, v24

    aput-wide v22, p8, v10

    .line 276
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 269
    .end local v6    # "h":D
    :cond_5
    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    div-double v24, v20, v18

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    mul-double v6, v22, v24

    goto :goto_2

    .line 279
    .restart local v6    # "h":D
    :cond_6
    add-double v22, p4, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->computeDerivatives(D[D[D)V

    .line 282
    const-wide/16 v16, 0x0

    .line 283
    .local v16, "yDDotOnScale":D
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v10, v11, :cond_7

    .line 284
    aget-wide v22, p9, v10

    aget-wide v24, p7, v10

    sub-double v22, v22, v24

    aget-wide v24, p3, v10

    div-double v14, v22, v24

    .line 285
    .restart local v14    # "ratio":D
    mul-double v22, v14, v14

    add-double v16, v16, v22

    .line 283
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 287
    .end local v14    # "ratio":D
    :cond_7
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    div-double v16, v22, v6

    .line 291
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    .line 292
    .local v12, "maxInv2":D
    const-wide v22, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v11, v12, v22

    if-gez v11, :cond_b

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    .line 295
    .local v8, "h1":D
    :goto_5
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 296
    const-wide v22, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 297
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v22

    cmpg-double v11, v6, v22

    if-gez v11, :cond_8

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v6

    .line 300
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v22

    cmpl-double v11, v6, v22

    if-lez v11, :cond_9

    .line 301
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v6

    .line 303
    :cond_9
    if-nez p1, :cond_a

    .line 304
    neg-double v6, v6

    :cond_a
    move-wide/from16 v22, v6

    .line 307
    goto/16 :goto_0

    .line 292
    .end local v8    # "h1":D
    :cond_b
    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    div-double v22, v22, v12

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v8

    goto :goto_5
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected resetInternalState()V
    .locals 4

    .prologue
    .line 357
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepStart:D

    .line 358
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepSize:D

    .line 359
    return-void
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 4
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 222
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-eq v0, v1, :cond_1

    .line 229
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 232
    :cond_1
    return-void
.end method

.method public setInitialStepSize(D)V
    .locals 3
    .param p1, "initialStepSize"    # D

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 209
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    goto :goto_0
.end method

.method public setStepSizeControl(DDDD)V
    .locals 3
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "relativeTolerance"    # D

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 157
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    .line 158
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 160
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 161
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    .line 162
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 163
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    .line 165
    return-void
.end method

.method public setStepSizeControl(DD[D[D)V
    .locals 5
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # [D
    .param p6, "relativeTolerance"    # [D

    .prologue
    const-wide/16 v2, 0x0

    .line 185
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 186
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    .line 187
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 189
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 190
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    .line 191
    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 192
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    .line 194
    return-void
.end method
