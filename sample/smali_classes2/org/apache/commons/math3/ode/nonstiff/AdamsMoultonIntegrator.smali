.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsMoultonIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


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
    .line 181
    const-string v1, "Adams-Moulton"

    add-int/lit8 v3, p1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 183
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
    .line 203
    const-string v1, "Adams-Moulton"

    add-int/lit8 v3, p1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 205
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 60
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
    .line 214
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 215
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v6

    cmpl-double v6, p2, v6

    if-lez v6, :cond_2

    const/16 v41, 0x1

    .line 219
    .local v41, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v9

    .line 220
    .local v9, "y0":[D
    invoke-virtual {v9}, [D->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    .line 221
    .local v13, "y":[D
    array-length v6, v13

    new-array v0, v6, [D

    move-object/from16 v25, v0

    .line 222
    .local v25, "yDot":[D
    array-length v6, v13

    new-array v0, v6, [D

    move-object/from16 v59, v0

    .line 223
    .local v59, "yTmp":[D
    array-length v6, v13

    new-array v0, v6, [D

    move-object/from16 v54, v0

    .line 224
    .local v54, "predictedScaled":[D
    const/16 v51, 0x0

    .line 227
    .local v51, "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    new-instance v23, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct/range {v23 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 228
    .local v23, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v7

    move-object/from16 v0, v23

    move/from16 v1, v41

    invoke-virtual {v0, v13, v1, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v7

    move-object/from16 v6, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->initIntegration(D[DD)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 236
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v21, v0

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 237
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 239
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-wide/from16 v44, v0

    .line 240
    .local v44, "hNew":D
    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 242
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    move-object/from16 v21, v51

    .line 245
    .end local v51    # "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v21, "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    :cond_0
    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    .line 246
    .local v36, "error":D
    :cond_1
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v36, v6

    if-ltz v6, :cond_5

    .line 248
    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 251
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double v16, v6, v10

    .line 252
    .local v16, "stepEnd":D
    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v35

    .line 254
    .local v35, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual/range {v35 .. v35}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v55

    .line 255
    .local v55, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v6

    move-object/from16 v0, v55

    move-object/from16 v1, v59

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 256
    const/16 v47, 0x0

    .line 257
    .local v47, "index":I
    invoke-virtual/range {v35 .. v35}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v34

    .local v34, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v49, v0

    .local v49, "len$":I
    const/16 v46, 0x0

    .local v46, "i$":I
    :goto_2
    move/from16 v0, v46

    move/from16 v1, v49

    if-ge v0, v1, :cond_3

    aget-object v58, v34, v46

    .line 258
    .local v58, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v6

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 259
    add-int/lit8 v47, v47, 0x1

    .line 257
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 216
    .end local v9    # "y0":[D
    .end local v13    # "y":[D
    .end local v16    # "stepEnd":D
    .end local v21    # "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .end local v23    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v25    # "yDot":[D
    .end local v34    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v35    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v36    # "error":D
    .end local v41    # "forward":Z
    .end local v44    # "hNew":D
    .end local v46    # "i$":I
    .end local v47    # "index":I
    .end local v49    # "len$":I
    .end local v54    # "predictedScaled":[D
    .end local v55    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v58    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v59    # "yTmp":[D
    :cond_2
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 263
    .restart local v9    # "y0":[D
    .restart local v13    # "y":[D
    .restart local v16    # "stepEnd":D
    .restart local v21    # "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .restart local v23    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .restart local v25    # "yDot":[D
    .restart local v34    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .restart local v35    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .restart local v36    # "error":D
    .restart local v41    # "forward":Z
    .restart local v44    # "hNew":D
    .restart local v46    # "i$":I
    .restart local v47    # "index":I
    .restart local v49    # "len$":I
    .restart local v54    # "predictedScaled":[D
    .restart local v55    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .restart local v59    # "yTmp":[D
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v59

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    .line 266
    const/16 v48, 0x0

    .local v48, "j":I
    :goto_3
    array-length v6, v9

    move/from16 v0, v48

    if-ge v0, v6, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v10, v25, v48

    mul-double/2addr v6, v10

    aput-wide v6, v54, v48

    .line 266
    add-int/lit8 v48, v48, 0x1

    goto :goto_3

    .line 269
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v21

    .line 270
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 273
    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v59

    invoke-direct {v6, v0, v13, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v36

    .line 275
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v36, v6

    if-ltz v6, :cond_1

    .line 277
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v38

    .line 278
    .local v38, "factor":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double v6, v6, v38

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v6, v7, v1, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v44

    .line 279
    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto/16 :goto_1

    .line 284
    .end local v16    # "stepEnd":D
    .end local v34    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v35    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v38    # "factor":D
    .end local v46    # "i$":I
    .end local v47    # "index":I
    .end local v48    # "j":I
    .end local v49    # "len$":I
    .end local v55    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double v16, v6, v10

    .line 285
    .restart local v16    # "stepEnd":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v59

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    .line 288
    array-length v6, v9

    new-array v0, v6, [D

    move-object/from16 v20, v0

    .line 289
    .local v20, "correctedScaled":[D
    const/16 v48, 0x0

    .restart local v48    # "j":I
    :goto_4
    array-length v6, v9

    move/from16 v0, v48

    if-ge v0, v6, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v10, v25, v48

    mul-double/2addr v6, v10

    aput-wide v6, v20, v48

    .line 289
    add-int/lit8 v48, v48, 0x1

    goto :goto_4

    .line 292
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 295
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v13

    move-object/from16 v0, v59

    invoke-static {v0, v6, v13, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-wide/from16 v18, v0

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 297
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 298
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 299
    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    move-object/from16 v22, p0

    move-object/from16 v24, v13

    move-wide/from16 v26, p2

    .line 300
    invoke-virtual/range {v22 .. v27}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    .line 301
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    .line 302
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 304
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-nez v6, :cond_9

    .line 307
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 309
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetOccurred:Z

    if-eqz v6, :cond_7

    .line 312
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v10, p0

    move-wide/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 313
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v33, v0

    move-object/from16 v27, v23

    invoke-virtual/range {v27 .. v33}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 318
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v38

    .line 319
    .restart local v38    # "factor":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double v56, v6, v38

    .line 320
    .local v56, "scaledH":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double v52, v6, v56

    .line 321
    .local v52, "nextT":D
    if-eqz v41, :cond_b

    cmpl-double v6, v52, p2

    if-ltz v6, :cond_a

    const/16 v50, 0x1

    .line 322
    .local v50, "nextIsLast":Z
    :goto_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move/from16 v3, v41

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v44

    .line 324
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double v42, v6, v44

    .line 325
    .local v42, "filteredNextT":D
    if-eqz v41, :cond_e

    cmpl-double v6, v42, p2

    if-ltz v6, :cond_d

    const/16 v40, 0x1

    .line 326
    .local v40, "filteredNextIsLast":Z
    :goto_6
    if-eqz v40, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    sub-double v44, p2, v6

    .line 330
    :cond_8
    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 333
    .end local v38    # "factor":D
    .end local v40    # "filteredNextIsLast":Z
    .end local v42    # "filteredNextT":D
    .end local v50    # "nextIsLast":Z
    .end local v52    # "nextT":D
    .end local v56    # "scaledH":D
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-eqz v6, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetInternalState()V

    .line 341
    return-void

    .line 321
    .restart local v38    # "factor":D
    .restart local v52    # "nextT":D
    .restart local v56    # "scaledH":D
    :cond_a
    const/16 v50, 0x0

    goto :goto_5

    :cond_b
    cmpg-double v6, v52, p2

    if-gtz v6, :cond_c

    const/16 v50, 0x1

    goto :goto_5

    :cond_c
    const/16 v50, 0x0

    goto :goto_5

    .line 325
    .restart local v42    # "filteredNextT":D
    .restart local v50    # "nextIsLast":Z
    :cond_d
    const/16 v40, 0x0

    goto :goto_6

    :cond_e
    cmpg-double v6, v42, p2

    if-gtz v6, :cond_f

    const/16 v40, 0x1

    goto :goto_6

    :cond_f
    const/16 v40, 0x0

    goto :goto_6
.end method
