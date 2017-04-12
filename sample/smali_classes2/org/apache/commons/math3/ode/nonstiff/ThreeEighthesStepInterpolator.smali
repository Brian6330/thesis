.class Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "ThreeEighthesStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 37
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 98
    const-wide/high16 v32, 0x3fe8000000000000L    # 0.75

    mul-double v14, v32, p1

    .line 99
    .local v14, "coeffDot3":D
    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    sub-double v32, v32, v34

    mul-double v32, v32, v14

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v10, v32, v34

    .line 100
    .local v10, "coeffDot1":D
    const-wide/high16 v32, 0x4014000000000000L    # 5.0

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    mul-double v34, v34, p1

    sub-double v32, v32, v34

    mul-double v12, v14, v32

    .line 101
    .local v12, "coeffDot2":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v32, v32, v34

    mul-double v16, v14, v32

    .line 103
    .local v16, "coeffDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->previousState:[D

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    cmpg-double v21, p1, v32

    if-gtz v21, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->h:D

    move-wide/from16 v32, v0

    mul-double v32, v32, p1

    const-wide/high16 v34, 0x4020000000000000L    # 8.0

    div-double v22, v32, v34

    .line 105
    .local v22, "s":D
    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, p1

    mul-double v18, v32, p1

    .line 106
    .local v18, "fourTheta2":D
    const-wide/high16 v32, 0x4020000000000000L    # 8.0

    const-wide/high16 v34, 0x402e000000000000L    # 15.0

    mul-double v34, v34, p1

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v18

    add-double v32, v32, v34

    mul-double v2, v22, v32

    .line 107
    .local v2, "coeff1":D
    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v32, v32, v22

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    mul-double v34, v34, p1

    sub-double v34, v34, v18

    mul-double v4, v32, v34

    .line 108
    .local v4, "coeff2":D
    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v32, v32, v22

    mul-double v6, v32, p1

    .line 109
    .local v6, "coeff3":D
    const-wide/high16 v32, -0x3ff8000000000000L    # -3.0

    mul-double v32, v32, p1

    add-double v32, v32, v18

    mul-double v8, v22, v32

    .line 110
    .local v8, "coeff4":D
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x0

    aget-object v21, v21, v32

    aget-wide v24, v21, v20

    .line 112
    .local v24, "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x1

    aget-object v21, v21, v32

    aget-wide v26, v21, v20

    .line 113
    .local v26, "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x2

    aget-object v21, v21, v32

    aget-wide v28, v21, v20

    .line 114
    .local v28, "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x3

    aget-object v21, v21, v32

    aget-wide v30, v21, v20

    .line 115
    .local v30, "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->previousState:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v20

    mul-double v34, v2, v24

    add-double v32, v32, v34

    mul-double v34, v4, v26

    add-double v32, v32, v34

    mul-double v34, v6, v28

    add-double v32, v32, v34

    mul-double v34, v8, v30

    add-double v32, v32, v34

    aput-wide v32, v21, v20

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v21, v0

    mul-double v32, v10, v24

    mul-double v34, v12, v26

    add-double v32, v32, v34

    mul-double v34, v14, v28

    add-double v32, v32, v34

    mul-double v34, v16, v30

    add-double v32, v32, v34

    aput-wide v32, v21, v20

    .line 110
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "coeff1":D
    .end local v4    # "coeff2":D
    .end local v6    # "coeff3":D
    .end local v8    # "coeff4":D
    .end local v18    # "fourTheta2":D
    .end local v20    # "i":I
    .end local v22    # "s":D
    .end local v24    # "yDot1":D
    .end local v26    # "yDot2":D
    .end local v28    # "yDot3":D
    .end local v30    # "yDot4":D
    :cond_0
    const-wide/high16 v32, 0x4020000000000000L    # 8.0

    div-double v22, p3, v32

    .line 123
    .restart local v22    # "s":D
    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, p1

    mul-double v18, v32, p1

    .line 124
    .restart local v18    # "fourTheta2":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v34, 0x401c000000000000L    # 7.0

    mul-double v34, v34, p1

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v18

    add-double v32, v32, v34

    mul-double v2, v22, v32

    .line 125
    .restart local v2    # "coeff1":D
    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v32, v32, v22

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v34, v34, p1

    sub-double v34, v34, v18

    mul-double v4, v32, v34

    .line 126
    .restart local v4    # "coeff2":D
    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v32, v32, v22

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v34, v34, p1

    mul-double v6, v32, v34

    .line 127
    .restart local v6    # "coeff3":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v32, v32, p1

    add-double v32, v32, v18

    mul-double v8, v22, v32

    .line 128
    .restart local v8    # "coeff4":D
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x0

    aget-object v21, v21, v32

    aget-wide v24, v21, v20

    .line 130
    .restart local v24    # "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x1

    aget-object v21, v21, v32

    aget-wide v26, v21, v20

    .line 131
    .restart local v26    # "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x2

    aget-object v21, v21, v32

    aget-wide v28, v21, v20

    .line 132
    .restart local v28    # "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    move-object/from16 v21, v0

    const/16 v32, 0x3

    aget-object v21, v21, v32

    aget-wide v30, v21, v20

    .line 133
    .restart local v30    # "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->currentState:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v20

    mul-double v34, v2, v24

    sub-double v32, v32, v34

    mul-double v34, v4, v26

    sub-double v32, v32, v34

    mul-double v34, v6, v28

    sub-double v32, v32, v34

    mul-double v34, v8, v30

    sub-double v32, v32, v34

    aput-wide v32, v21, v20

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v21, v0

    mul-double v32, v10, v24

    mul-double v34, v12, v26

    add-double v32, v32, v34

    mul-double v34, v14, v28

    add-double v32, v32, v34

    mul-double v34, v16, v30

    add-double v32, v32, v34

    aput-wide v32, v21, v20

    .line 128
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 141
    .end local v24    # "yDot1":D
    .end local v26    # "yDot2":D
    .end local v28    # "yDot3":D
    .end local v30    # "yDot4":D
    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;)V

    return-object v0
.end method
