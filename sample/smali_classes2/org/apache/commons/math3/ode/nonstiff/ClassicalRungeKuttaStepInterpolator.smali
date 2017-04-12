.class Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "ClassicalRungeKuttaStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 37
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 94
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v22, v32, p1

    .line 95
    .local v22, "oneMinusTheta":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, p1

    sub-double v20, v32, v34

    .line 96
    .local v20, "oneMinus2Theta":D
    mul-double v8, v22, v20

    .line 97
    .local v8, "coeffDot1":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, p1

    mul-double v10, v32, v22

    .line 98
    .local v10, "coeffDot23":D
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 v32, v0

    mul-double v12, v32, v20

    .line 99
    .local v12, "coeffDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->previousState:[D

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    cmpg-double v19, p1, v32

    if-gtz v19, :cond_0

    .line 100
    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, p1

    mul-double v16, v32, p1

    .line 101
    .local v16, "fourTheta2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->h:D

    move-wide/from16 v32, v0

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v24, v32, v34

    .line 102
    .local v24, "s":D
    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    const-wide/high16 v34, 0x4022000000000000L    # 9.0

    mul-double v34, v34, p1

    sub-double v32, v32, v34

    add-double v32, v32, v16

    mul-double v2, v24, v32

    .line 103
    .local v2, "coeff1":D
    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    mul-double v32, v32, p1

    sub-double v32, v32, v16

    mul-double v4, v24, v32

    .line 104
    .local v4, "coeff23":D
    const-wide/high16 v32, -0x3ff8000000000000L    # -3.0

    mul-double v32, v32, p1

    add-double v32, v32, v16

    mul-double v6, v24, v32

    .line 105
    .local v6, "coeff4":D
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v32, 0x0

    aget-object v19, v19, v32

    aget-wide v26, v19, v18

    .line 107
    .local v26, "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v32, 0x1

    aget-object v19, v19, v32

    aget-wide v32, v19, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v34, 0x2

    aget-object v19, v19, v34

    aget-wide v34, v19, v18

    add-double v28, v32, v34

    .line 108
    .local v28, "yDot23":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v32, 0x3

    aget-object v19, v19, v32

    aget-wide v30, v19, v18

    .line 109
    .local v30, "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->previousState:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v18

    mul-double v34, v2, v26

    add-double v32, v32, v34

    mul-double v34, v4, v28

    add-double v32, v32, v34

    mul-double v34, v6, v30

    add-double v32, v32, v34

    aput-wide v32, v19, v18

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v19, v0

    mul-double v32, v8, v26

    mul-double v34, v10, v28

    add-double v32, v32, v34

    mul-double v34, v12, v30

    add-double v32, v32, v34

    aput-wide v32, v19, v18

    .line 105
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "coeff1":D
    .end local v4    # "coeff23":D
    .end local v6    # "coeff4":D
    .end local v16    # "fourTheta2":D
    .end local v18    # "i":I
    .end local v24    # "s":D
    .end local v26    # "yDot1":D
    .end local v28    # "yDot23":D
    .end local v30    # "yDot4":D
    :cond_0
    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v14, v32, p1

    .line 116
    .local v14, "fourTheta":D
    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    div-double v24, p3, v32

    .line 117
    .restart local v24    # "s":D
    neg-double v0, v14

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    add-double v32, v32, v34

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v32, v32, v34

    mul-double v2, v24, v32

    .line 118
    .restart local v2    # "coeff1":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    sub-double v32, v14, v32

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    sub-double v32, v32, v34

    mul-double v4, v24, v32

    .line 119
    .restart local v4    # "coeff23":D
    neg-double v0, v14

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v32, v32, v34

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v32, v32, v34

    mul-double v6, v24, v32

    .line 120
    .restart local v6    # "coeff4":D
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v32, 0x0

    aget-object v19, v19, v32

    aget-wide v26, v19, v18

    .line 122
    .restart local v26    # "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v32, 0x1

    aget-object v19, v19, v32

    aget-wide v32, v19, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v34, 0x2

    aget-object v19, v19, v34

    aget-wide v34, v19, v18

    add-double v28, v32, v34

    .line 123
    .restart local v28    # "yDot23":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    move-object/from16 v19, v0

    const/16 v32, 0x3

    aget-object v19, v19, v32

    aget-wide v30, v19, v18

    .line 124
    .restart local v30    # "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->currentState:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v18

    mul-double v34, v2, v26

    add-double v32, v32, v34

    mul-double v34, v4, v28

    add-double v32, v32, v34

    mul-double v34, v6, v30

    add-double v32, v32, v34

    aput-wide v32, v19, v18

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v19, v0

    mul-double v32, v8, v26

    mul-double v34, v10, v28

    add-double v32, v32, v34

    mul-double v34, v12, v30

    add-double v32, v32, v34

    aput-wide v32, v19, v18

    .line 120
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 131
    .end local v14    # "fourTheta":D
    .end local v26    # "yDot1":D
    .end local v28    # "yDot23":D
    .end local v30    # "yDot4":D
    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;)V

    return-object v0
.end method
