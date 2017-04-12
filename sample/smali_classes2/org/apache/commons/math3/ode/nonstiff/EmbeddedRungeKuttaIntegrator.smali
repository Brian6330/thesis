.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "EmbeddedRungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final exp:D

.field private final fsal:Z

.field private maxGrowth:D

.field private minReduction:D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private safety:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fsal"    # Z
    .param p3, "c"    # [D
    .param p4, "a"    # [[D
    .param p5, "b"    # [D
    .param p6, "prototype"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p7, "minStep"    # D
    .param p9, "maxStep"    # D
    .param p11, "scalAbsoluteTolerance"    # D
    .param p13, "scalRelativeTolerance"    # D

    .prologue
    .line 116
    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-wide/from16 v10, p13

    invoke-direct/range {v2 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 118
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 119
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 120
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 121
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 122
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 124
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 127
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    .line 128
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    .line 129
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fsal"    # Z
    .param p3, "c"    # [D
    .param p4, "a"    # [[D
    .param p5, "b"    # [D
    .param p6, "prototype"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p7, "minStep"    # D
    .param p9, "maxStep"    # D
    .param p11, "vecAbsoluteTolerance"    # [D
    .param p12, "vecRelativeTolerance"    # [D

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 156
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 157
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 158
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 159
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 160
    iput-object p6, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 162
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 165
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    .line 166
    const-wide v0, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    .line 167
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    .line 169
    return-void
.end method


# virtual methods
.method protected abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 48
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
    .line 196
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 197
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v10

    cmpl-double v5, p2, v10

    if-lez v5, :cond_4

    const/4 v8, 0x1

    .line 201
    .local v8, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v13

    .line 202
    .local v13, "y0":[D
    invoke-virtual {v13}, [D->clone()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [D

    .line 203
    .local v20, "y":[D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    array-length v5, v5

    add-int/lit8 v39, v5, 0x1

    .line 204
    .local v39, "stages":I
    move-object/from16 v0, v20

    array-length v5, v0

    move/from16 v0, v39

    filled-new-array {v0, v5}, [I

    move-result-object v5

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 205
    .local v7, "yDotK":[[D
    invoke-virtual {v13}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 206
    .local v6, "yTmp":[D
    move-object/from16 v0, v20

    array-length v5, v0

    new-array v0, v5, [D

    move-object/from16 v46, v0

    .line 209
    .local v46, "yDotTmp":[D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 210
    .local v4, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v10

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 216
    const-wide/16 v32, 0x0

    .line 217
    .local v32, "hNew":D
    const/16 v29, 0x1

    .line 218
    .local v29, "firstTime":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 221
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    .line 224
    :cond_0
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    .line 227
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    .line 228
    .local v24, "error":D
    :cond_1
    :goto_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v24, v10

    if-ltz v5, :cond_f

    .line 230
    if-nez v29, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-nez v5, :cond_3

    .line 232
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    const/4 v5, 0x0

    aget-object v5, v7, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v11, v1, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 235
    :cond_3
    if-eqz v29, :cond_7

    .line 236
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->mainSetDimension:I

    new-array v0, v5, [D

    move-object/from16 v17, v0

    .line 237
    .local v17, "scale":[D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_5

    .line 238
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v5, v0

    move/from16 v0, v34

    if-ge v0, v5, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalAbsoluteTolerance:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalRelativeTolerance:D

    aget-wide v18, v20, v34

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    mul-double v14, v14, v18

    add-double/2addr v10, v14

    aput-wide v10, v17, v34

    .line 238
    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    .line 198
    .end local v4    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .end local v6    # "yTmp":[D
    .end local v7    # "yDotK":[[D
    .end local v8    # "forward":Z
    .end local v13    # "y0":[D
    .end local v17    # "scale":[D
    .end local v20    # "y":[D
    .end local v24    # "error":D
    .end local v29    # "firstTime":Z
    .end local v32    # "hNew":D
    .end local v34    # "i":I
    .end local v39    # "stages":I
    .end local v46    # "yDotTmp":[D
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v4    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .restart local v6    # "yTmp":[D
    .restart local v7    # "yDotK":[[D
    .restart local v8    # "forward":Z
    .restart local v13    # "y0":[D
    .restart local v17    # "scale":[D
    .restart local v20    # "y":[D
    .restart local v24    # "error":D
    .restart local v29    # "firstTime":Z
    .restart local v32    # "hNew":D
    .restart local v39    # "stages":I
    .restart local v46    # "yDotTmp":[D
    :cond_5
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v5, v0

    move/from16 v0, v34

    if-ge v0, v5, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v10, v5, v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecRelativeTolerance:[D

    aget-wide v14, v5, v34

    aget-wide v18, v20, v34

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    mul-double v14, v14, v18

    add-double/2addr v10, v14

    aput-wide v10, v17, v34

    .line 242
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 246
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-wide/from16 v18, v0

    const/4 v5, 0x0

    aget-object v21, v7, v5

    const/4 v5, 0x1

    aget-object v23, v7, v5

    move-object/from16 v14, p0

    move v15, v8

    move-object/from16 v22, v6

    invoke-virtual/range {v14 .. v23}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v32

    .line 248
    const/16 v29, 0x0

    .line 251
    .end local v17    # "scale":[D
    .end local v34    # "i":I
    :cond_7
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    .line 252
    if-eqz v8, :cond_9

    .line 253
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v10, v14

    cmpl-double v5, v10, p2

    if-ltz v5, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v10, p2, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    .line 263
    :cond_8
    :goto_4
    const/16 v36, 0x1

    .local v36, "k":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 265
    const/16 v35, 0x0

    .local v35, "j":I
    :goto_6
    array-length v5, v13

    move/from16 v0, v35

    if-ge v0, v5, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v9, v36, -0x1

    aget-object v5, v5, v9

    const/4 v9, 0x0

    aget-wide v10, v5, v9

    const/4 v5, 0x0

    aget-object v5, v7, v5

    aget-wide v14, v5, v35

    mul-double v44, v10, v14

    .line 267
    .local v44, "sum":D
    const/16 v37, 0x1

    .local v37, "l":I
    :goto_7
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v9, v36, -0x1

    aget-object v5, v5, v9

    aget-wide v10, v5, v37

    aget-object v5, v7, v37

    aget-wide v14, v5, v35

    mul-double/2addr v10, v14

    add-double v44, v44, v10

    .line 267
    add-int/lit8 v37, v37, 0x1

    goto :goto_7

    .line 257
    .end local v35    # "j":I
    .end local v36    # "k":I
    .end local v37    # "l":I
    .end local v44    # "sum":D
    :cond_9
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v10, v14

    cmpg-double v5, v10, p2

    if-gtz v5, :cond_8

    .line 258
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v10, p2, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    goto :goto_4

    .line 270
    .restart local v35    # "j":I
    .restart local v36    # "k":I
    .restart local v37    # "l":I
    .restart local v44    # "sum":D
    :cond_a
    aget-wide v10, v20, v35

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v14, v14, v44

    add-double/2addr v10, v14

    aput-wide v10, v6, v35

    .line 265
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 273
    .end local v37    # "l":I
    .end local v44    # "sum":D
    :cond_b
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    add-int/lit8 v9, v36, -0x1

    aget-wide v14, v5, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    move-wide/from16 v18, v0

    mul-double v14, v14, v18

    add-double/2addr v10, v14

    aget-object v5, v7, v36

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v6, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 263
    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    .line 278
    .end local v35    # "j":I
    :cond_c
    const/16 v35, 0x0

    .restart local v35    # "j":I
    :goto_8
    array-length v5, v13

    move/from16 v0, v35

    if-ge v0, v5, :cond_e

    .line 279
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    const/4 v9, 0x0

    aget-wide v10, v5, v9

    const/4 v5, 0x0

    aget-object v5, v7, v5

    aget-wide v14, v5, v35

    mul-double v44, v10, v14

    .line 280
    .restart local v44    # "sum":D
    const/16 v37, 0x1

    .restart local v37    # "l":I
    :goto_9
    move/from16 v0, v37

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v10, v5, v37

    aget-object v5, v7, v37

    aget-wide v14, v5, v35

    mul-double/2addr v10, v14

    add-double v44, v44, v10

    .line 280
    add-int/lit8 v37, v37, 0x1

    goto :goto_9

    .line 283
    :cond_d
    aget-wide v10, v20, v35

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v14, v14, v44

    add-double/2addr v10, v14

    aput-wide v10, v6, v35

    .line 278
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 287
    .end local v37    # "l":I
    .end local v44    # "sum":D
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    move-wide/from16 v22, v0

    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v21, v6

    invoke-virtual/range {v18 .. v23}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v24

    .line 288
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v24, v10

    if-ltz v5, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v22

    mul-double v18, v18, v22

    move-wide/from16 v0, v18

    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v26

    .line 293
    .local v26, "factor":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v10, v10, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v8, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v32

    .line 294
    goto/16 :goto_1

    .line 299
    .end local v26    # "factor":D
    .end local v35    # "j":I
    .end local v36    # "k":I
    :cond_f
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v10, v14

    invoke-virtual {v4, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 300
    const/4 v5, 0x0

    const/4 v9, 0x0

    array-length v10, v13

    move-object/from16 v0, v20

    invoke-static {v6, v5, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    add-int/lit8 v5, v39, -0x1

    aget-object v5, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v13

    move-object/from16 v0, v46

    invoke-static {v5, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v21, v46

    move-wide/from16 v22, p2

    .line 302
    invoke-virtual/range {v18 .. v23}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 303
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    array-length v10, v0

    move-object/from16 v0, v20

    invoke-static {v0, v5, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-nez v5, :cond_11

    .line 308
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v4, v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 310
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-eqz v5, :cond_10

    .line 312
    const/4 v5, 0x0

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const/4 v10, 0x0

    array-length v11, v13

    move-object/from16 v0, v46

    invoke-static {v0, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_10
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v22

    mul-double v18, v18, v22

    move-wide/from16 v0, v18

    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v26

    .line 318
    .restart local v26    # "factor":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v42, v10, v26

    .line 319
    .local v42, "scaledH":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double v40, v10, v42

    .line 320
    .local v40, "nextT":D
    if-eqz v8, :cond_13

    cmpl-double v5, v40, p2

    if-ltz v5, :cond_12

    const/16 v38, 0x1

    .line 321
    .local v38, "nextIsLast":Z
    :goto_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v32

    .line 323
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double v30, v10, v32

    .line 324
    .local v30, "filteredNextT":D
    if-eqz v8, :cond_16

    cmpl-double v5, v30, p2

    if-ltz v5, :cond_15

    const/16 v28, 0x1

    .line 325
    .local v28, "filteredNextIsLast":Z
    :goto_b
    if-eqz v28, :cond_11

    .line 326
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v32, p2, v10

    .line 331
    .end local v26    # "factor":D
    .end local v28    # "filteredNextIsLast":Z
    .end local v30    # "filteredNextT":D
    .end local v38    # "nextIsLast":Z
    .end local v40    # "nextT":D
    .end local v42    # "scaledH":D
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-eqz v5, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 335
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->resetInternalState()V

    .line 339
    return-void

    .line 320
    .restart local v26    # "factor":D
    .restart local v40    # "nextT":D
    .restart local v42    # "scaledH":D
    :cond_12
    const/16 v38, 0x0

    goto :goto_a

    :cond_13
    cmpg-double v5, v40, p2

    if-gtz v5, :cond_14

    const/16 v38, 0x1

    goto :goto_a

    :cond_14
    const/16 v38, 0x0

    goto :goto_a

    .line 324
    .restart local v30    # "filteredNextT":D
    .restart local v38    # "nextIsLast":Z
    :cond_15
    const/16 v28, 0x0

    goto :goto_b

    :cond_16
    cmpg-double v5, v30, p2

    if-gtz v5, :cond_17

    const/16 v28, 0x1

    goto :goto_b

    :cond_17
    const/16 v28, 0x0

    goto :goto_b
.end method

.method public setMaxGrowth(D)V
    .locals 1
    .param p1, "maxGrowth"    # D

    .prologue
    .line 366
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    .line 367
    return-void
.end method

.method public setMinReduction(D)V
    .locals 1
    .param p1, "minReduction"    # D

    .prologue
    .line 352
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    .line 353
    return-void
.end method

.method public setSafety(D)V
    .locals 1
    .param p1, "safety"    # D

    .prologue
    .line 187
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    .line 188
    return-void
.end method
