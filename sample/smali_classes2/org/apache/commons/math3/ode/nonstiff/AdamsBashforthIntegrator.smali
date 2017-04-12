.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsBashforthIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 167
    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 189
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 66
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
    .line 197
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 198
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v6

    cmpl-double v6, p2, v6

    if-lez v6, :cond_2

    const/16 v41, 0x1

    .line 202
    .local v41, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v9

    .line 203
    .local v9, "y0":[D
    invoke-virtual {v9}, [D->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    .line 204
    .local v13, "y":[D
    array-length v6, v13

    new-array v0, v6, [D

    move-object/from16 v25, v0

    .line 207
    .local v25, "yDot":[D
    new-instance v23, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct/range {v23 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 208
    .local v23, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v7

    move-object/from16 v0, v23

    move/from16 v1, v41

    invoke-virtual {v0, v13, v1, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v7

    move-object/from16 v6, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->initIntegration(D[DD)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 216
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v21, v0

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 217
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 218
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v6

    add-int/lit8 v50, v6, -0x1

    .line 221
    .local v50, "lastRow":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v44, v0

    .line 222
    .local v44, "hNew":D
    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 225
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    .line 228
    :cond_0
    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    .line 229
    .local v36, "error":D
    :cond_1
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v36, v6

    if-ltz v6, :cond_5

    .line 231
    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    .line 234
    const-wide/16 v36, 0x0

    .line 235
    const/16 v46, 0x0

    .local v46, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    move/from16 v0, v46

    if-ge v0, v6, :cond_4

    .line 236
    aget-wide v6, v13, v46

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v64

    .line 237
    .local v64, "yScale":D
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalAbsoluteTolerance:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalRelativeTolerance:D

    mul-double v10, v10, v64

    add-double v62, v6, v10

    .line 240
    .local v62, "tol":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v50

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    div-double v56, v6, v62

    .line 241
    .local v56, "ratio":D
    mul-double v6, v56, v56

    add-double v36, v36, v6

    .line 235
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 199
    .end local v9    # "y0":[D
    .end local v13    # "y":[D
    .end local v23    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v25    # "yDot":[D
    .end local v36    # "error":D
    .end local v41    # "forward":Z
    .end local v44    # "hNew":D
    .end local v46    # "i":I
    .end local v50    # "lastRow":I
    .end local v56    # "ratio":D
    .end local v62    # "tol":D
    .end local v64    # "yScale":D
    :cond_2
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v9    # "y0":[D
    .restart local v13    # "y":[D
    .restart local v23    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .restart local v25    # "yDot":[D
    .restart local v36    # "error":D
    .restart local v41    # "forward":Z
    .restart local v44    # "hNew":D
    .restart local v46    # "i":I
    .restart local v50    # "lastRow":I
    .restart local v64    # "yScale":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v6, v6, v46

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecRelativeTolerance:[D

    aget-wide v10, v8, v46

    mul-double v10, v10, v64

    add-double v62, v6, v10

    goto :goto_3

    .line 243
    .end local v64    # "yScale":D
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    int-to-double v6, v6

    div-double v6, v36, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    .line 245
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v36, v6

    if-ltz v6, :cond_1

    .line 247
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v38

    .line 248
    .local v38, "factor":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double v6, v6, v38

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v6, v7, v1, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v44

    .line 249
    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto/16 :goto_1

    .line 255
    .end local v38    # "factor":D
    .end local v46    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    add-double v16, v6, v10

    .line 256
    .local v16, "stepEnd":D
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 257
    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v35

    .line 259
    .local v35, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual/range {v35 .. v35}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v53

    .line 260
    .local v53, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v13}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 261
    const/16 v48, 0x0

    .line 262
    .local v48, "index":I
    invoke-virtual/range {v35 .. v35}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v34

    .local v34, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v51, v0

    .local v51, "len$":I
    const/16 v47, 0x0

    .local v47, "i$":I
    :goto_4
    move/from16 v0, v47

    move/from16 v1, v51

    if-ge v0, v1, :cond_6

    aget-object v60, v34, v47

    .line 263
    .local v60, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, v23

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v0, v6, v13}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 264
    add-int/lit8 v48, v48, 0x1

    .line 262
    add-int/lit8 v47, v47, 0x1

    goto :goto_4

    .line 268
    .end local v60    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeDerivatives(D[D[D)V

    .line 271
    array-length v6, v9

    new-array v0, v6, [D

    move-object/from16 v20, v0

    .line 272
    .local v20, "predictedScaled":[D
    const/16 v49, 0x0

    .local v49, "j":I
    :goto_5
    array-length v6, v9

    move/from16 v0, v49

    if-ge v0, v6, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    aget-wide v10, v25, v49

    mul-double/2addr v6, v10

    aput-wide v6, v20, v49

    .line 272
    add-int/lit8 v49, v49, 0x1

    goto :goto_5

    .line 275
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v21

    .line 276
    .local v21, "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 277
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v18, v0

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 280
    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    move-object/from16 v22, p0

    move-object/from16 v24, v13

    move-wide/from16 v26, p2

    .line 281
    invoke-virtual/range {v22 .. v27}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    .line 282
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    .line 283
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 284
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v33, v0

    move-object/from16 v27, v23

    move-wide/from16 v28, v16

    invoke-virtual/range {v27 .. v33}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 286
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-nez v6, :cond_a

    .line 289
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 291
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetOccurred:Z

    if-eqz v6, :cond_8

    .line 294
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v10, p0

    move-wide/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 295
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v33, v0

    move-object/from16 v27, v23

    invoke-virtual/range {v27 .. v33}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 299
    :cond_8
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v38

    .line 300
    .restart local v38    # "factor":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double v58, v6, v38

    .line 301
    .local v58, "scaledH":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double v54, v6, v58

    .line 302
    .local v54, "nextT":D
    if-eqz v41, :cond_c

    cmpl-double v6, v54, p2

    if-ltz v6, :cond_b

    const/16 v52, 0x1

    .line 303
    .local v52, "nextIsLast":Z
    :goto_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    move/from16 v3, v41

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v44

    .line 305
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double v42, v6, v44

    .line 306
    .local v42, "filteredNextT":D
    if-eqz v41, :cond_f

    cmpl-double v6, v42, p2

    if-ltz v6, :cond_e

    const/16 v40, 0x1

    .line 307
    .local v40, "filteredNextIsLast":Z
    :goto_7
    if-eqz v40, :cond_9

    .line 308
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    sub-double v44, p2, v6

    .line 311
    :cond_9
    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 315
    .end local v38    # "factor":D
    .end local v40    # "filteredNextIsLast":Z
    .end local v42    # "filteredNextT":D
    .end local v52    # "nextIsLast":Z
    .end local v54    # "nextT":D
    .end local v58    # "scaledH":D
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-eqz v6, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetInternalState()V

    .line 323
    return-void

    .line 302
    .restart local v38    # "factor":D
    .restart local v54    # "nextT":D
    .restart local v58    # "scaledH":D
    :cond_b
    const/16 v52, 0x0

    goto :goto_6

    :cond_c
    cmpg-double v6, v54, p2

    if-gtz v6, :cond_d

    const/16 v52, 0x1

    goto :goto_6

    :cond_d
    const/16 v52, 0x0

    goto :goto_6

    .line 306
    .restart local v42    # "filteredNextT":D
    .restart local v52    # "nextIsLast":Z
    :cond_e
    const/16 v40, 0x0

    goto :goto_7

    :cond_f
    cmpg-double v6, v42, p2

    if-gtz v6, :cond_10

    const/16 v40, 0x1

    goto :goto_7

    :cond_10
    const/16 v40, 0x0

    goto :goto_7
.end method
