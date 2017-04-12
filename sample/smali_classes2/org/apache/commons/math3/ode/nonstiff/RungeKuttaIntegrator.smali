.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "RungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private final step:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # [D
    .param p3, "a"    # [[D
    .param p4, "b"    # [D
    .param p5, "prototype"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p6, "step"    # D

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    .line 87
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    .line 88
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    .line 89
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 90
    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    .line 91
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 28
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
    .line 99
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 100
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v8

    cmpl-double v3, p2, v8

    if-lez v3, :cond_0

    const/4 v6, 0x1

    .line 104
    .local v6, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v11

    .line 105
    .local v11, "y0":[D
    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    .line 106
    .local v14, "y":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v3, v3

    add-int/lit8 v23, v3, 0x1

    .line 107
    .local v23, "stages":I
    move/from16 v0, v23

    new-array v5, v0, [[D

    .line 108
    .local v5, "yDotK":[[D
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 109
    array-length v3, v11

    new-array v3, v3, [D

    aput-object v3, v5, v18

    .line 108
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 101
    .end local v5    # "yDotK":[[D
    .end local v6    # "forward":Z
    .end local v11    # "y0":[D
    .end local v14    # "y":[D
    .end local v18    # "i":I
    .end local v23    # "stages":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 111
    .restart local v5    # "yDotK":[[D
    .restart local v6    # "forward":Z
    .restart local v11    # "y0":[D
    .restart local v14    # "y":[D
    .restart local v18    # "i":I
    .restart local v23    # "stages":I
    :cond_1
    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 112
    .local v4, "yTmp":[D
    array-length v3, v11

    new-array v15, v3, [D

    .line 115
    .local v15, "yDotTmp":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 116
    .local v2, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 122
    if-eqz v6, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    add-double/2addr v8, v12

    cmpl-double v3, v8, p2

    if-ltz v3, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v8, p2, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 135
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v9

    move-object/from16 v8, p0

    move-wide/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 138
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    .line 141
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    .line 144
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    const/4 v3, 0x0

    aget-object v3, v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v14, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 147
    const/16 v20, 0x1

    .local v20, "k":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 149
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_4
    array-length v3, v11

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v7, v20, -0x1

    aget-object v3, v3, v7

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    const/4 v3, 0x0

    aget-object v3, v5, v3

    aget-wide v12, v3, v19

    mul-double v26, v8, v12

    .line 151
    .local v26, "sum":D
    const/16 v21, 0x1

    .local v21, "l":I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v7, v20, -0x1

    aget-object v3, v3, v7

    aget-wide v8, v3, v21

    aget-object v3, v5, v21

    aget-wide v12, v3, v19

    mul-double/2addr v8, v12

    add-double v26, v26, v8

    .line 151
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 126
    .end local v19    # "j":I
    .end local v20    # "k":I
    .end local v21    # "l":I
    .end local v26    # "sum":D
    :cond_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    sub-double/2addr v8, v12

    cmpg-double v3, v8, p2

    if-gtz v3, :cond_5

    .line 130
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v8, p2, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 132
    :cond_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    neg-double v8, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto/16 :goto_2

    .line 154
    .restart local v19    # "j":I
    .restart local v20    # "k":I
    .restart local v21    # "l":I
    .restart local v26    # "sum":D
    :cond_6
    aget-wide v8, v14, v19

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double v12, v12, v26

    add-double/2addr v8, v12

    aput-wide v8, v4, v19

    .line 149
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 157
    .end local v21    # "l":I
    .end local v26    # "sum":D
    :cond_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v7, v20, -0x1

    aget-wide v12, v3, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    aget-object v3, v5, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 147
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 162
    .end local v19    # "j":I
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_6
    array-length v3, v11

    move/from16 v0, v19

    if-ge v0, v3, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    const/4 v3, 0x0

    aget-object v3, v5, v3

    aget-wide v12, v3, v19

    mul-double v26, v8, v12

    .line 164
    .restart local v26    # "sum":D
    const/16 v21, 0x1

    .restart local v21    # "l":I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v8, v3, v21

    aget-object v3, v5, v21

    aget-wide v12, v3, v19

    mul-double/2addr v8, v12

    add-double v26, v26, v8

    .line 164
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 167
    :cond_9
    aget-wide v8, v14, v19

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double v12, v12, v26

    add-double/2addr v8, v12

    aput-wide v8, v4, v19

    .line 162
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 171
    .end local v21    # "l":I
    .end local v26    # "sum":D
    :cond_a
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v8, v12

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 172
    const/4 v3, 0x0

    const/4 v7, 0x0

    array-length v8, v11

    invoke-static {v4, v3, v14, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int/lit8 v3, v23, -0x1

    aget-object v3, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v11

    invoke-static {v3, v7, v15, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v12, p0

    move-object v13, v2

    move-wide/from16 v16, p2

    .line 174
    invoke-virtual/range {v12 .. v17}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 176
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-nez v3, :cond_b

    .line 179
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 182
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double v24, v8, v12

    .line 183
    .local v24, "nextT":D
    if-eqz v6, :cond_d

    cmpl-double v3, v24, p2

    if-ltz v3, :cond_c

    const/16 v22, 0x1

    .line 184
    .local v22, "nextIsLast":Z
    :goto_8
    if-eqz v22, :cond_b

    .line 185
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v8, p2, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 189
    .end local v22    # "nextIsLast":Z
    .end local v24    # "nextT":D
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-eqz v3, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 195
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 196
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 198
    return-void

    .line 183
    .restart local v24    # "nextT":D
    :cond_c
    const/16 v22, 0x0

    goto :goto_8

    :cond_d
    cmpg-double v3, v24, p2

    if-gtz v3, :cond_e

    const/16 v22, 0x1

    goto :goto_8

    :cond_e
    const/16 v22, 0x0

    goto :goto_8
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD)[D
    .locals 20
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "t0"    # D
    .param p4, "y0"    # [D
    .param p5, "t"    # D

    .prologue
    .line 229
    invoke-virtual/range {p4 .. p4}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 230
    .local v11, "y":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v10, v16, 0x1

    .line 231
    .local v10, "stages":I
    new-array v14, v10, [[D

    .line 232
    .local v14, "yDotK":[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 233
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v16, v0

    aput-object v16, v14, v6

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual/range {p4 .. p4}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    .line 238
    .local v15, "yTmp":[D
    sub-double v4, p5, p2

    .line 239
    .local v4, "h":D
    const/16 v16, 0x0

    aget-object v16, v14, v16

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v11, v3}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 242
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 244
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, -0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    const/16 v18, 0x0

    aget-object v18, v14, v18

    aget-wide v18, v18, v7

    mul-double v12, v16, v18

    .line 246
    .local v12, "sum":D
    const/4 v9, 0x1

    .local v9, "l":I
    :goto_3
    if-ge v9, v8, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, -0x1

    aget-object v16, v16, v17

    aget-wide v16, v16, v9

    aget-object v18, v14, v9

    aget-wide v18, v18, v7

    mul-double v16, v16, v18

    add-double v12, v12, v16

    .line 246
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 249
    :cond_1
    aget-wide v16, v11, v7

    mul-double v18, v4, v12

    add-double v16, v16, v18

    aput-wide v16, v15, v7

    .line 244
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 252
    .end local v9    # "l":I
    .end local v12    # "sum":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, -0x1

    aget-wide v16, v16, v17

    mul-double v16, v16, v4

    add-double v16, v16, p2

    aget-object v18, v14, v8

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v15, v3}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 242
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 257
    .end local v7    # "j":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    const/16 v18, 0x0

    aget-object v18, v14, v18

    aget-wide v18, v18, v7

    mul-double v12, v16, v18

    .line 259
    .restart local v12    # "sum":D
    const/4 v9, 0x1

    .restart local v9    # "l":I
    :goto_5
    if-ge v9, v10, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v9

    aget-object v18, v14, v9

    aget-wide v18, v18, v7

    mul-double v16, v16, v18

    add-double v12, v12, v16

    .line 259
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 262
    :cond_4
    aget-wide v16, v11, v7

    mul-double v18, v4, v12

    add-double v16, v16, v18

    aput-wide v16, v11, v7

    .line 257
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 265
    .end local v9    # "l":I
    .end local v12    # "sum":D
    :cond_5
    return-object v11
.end method
