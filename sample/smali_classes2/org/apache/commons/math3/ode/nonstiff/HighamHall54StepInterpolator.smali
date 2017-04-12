.class Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "HighamHall54StepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 53
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 73
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v40, -0x3fe2000000000000L    # -7.5

    const-wide/high16 v42, 0x4030000000000000L    # 16.0

    const-wide/high16 v44, 0x4024000000000000L    # 10.0

    mul-double v44, v44, p1

    sub-double v42, v42, v44

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v12, v38, v40

    .line 74
    .local v12, "bDot0":D
    const-wide v38, 0x403cb00000000000L    # 28.6875

    const-wide v40, -0x3fa9380000000000L    # -91.125

    const-wide v42, 0x4050e00000000000L    # 67.5

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v14, p1, v38

    .line 75
    .local v14, "bDot2":D
    const-wide/high16 v38, -0x3fba000000000000L    # -44.0

    const-wide/high16 v40, 0x4063000000000000L    # 152.0

    const-wide/high16 v42, 0x405e000000000000L    # 120.0

    mul-double v42, v42, p1

    sub-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v16, p1, v38

    .line 76
    .local v16, "bDot3":D
    const-wide v38, 0x4037700000000000L    # 23.4375

    const-wide v40, -0x3fac780000000000L    # -78.125

    const-wide v42, 0x404f400000000000L    # 62.5

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v18, p1, v38

    .line 77
    .local v18, "bDot4":D
    const-wide/high16 v38, 0x4014000000000000L    # 5.0

    mul-double v38, v38, p1

    const-wide/high16 v40, 0x4020000000000000L    # 8.0

    div-double v38, v38, v40

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v40, v40, p1

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v40, v40, v42

    mul-double v20, v38, v40

    .line 79
    .local v20, "bDot5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->previousState:[D

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    cmpg-double v25, p1, v38

    if-gtz v25, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    move-wide/from16 v38, v0

    mul-double v22, v38, p1

    .line 81
    .local v22, "hTheta":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v40, -0x3ff2000000000000L    # -3.75

    const-wide v42, 0x4015555555555555L    # 5.333333333333333

    const-wide/high16 v44, 0x4004000000000000L    # 2.5

    mul-double v44, v44, p1

    sub-double v42, v42, v44

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v2, v22, v38

    .line 82
    .local v2, "b0":D
    const-wide v38, 0x402cb00000000000L    # 14.34375

    const-wide v40, -0x3fc1a00000000000L    # -30.375

    const-wide v42, 0x4060e00000000000L    # 135.0

    mul-double v42, v42, p1

    const-wide/high16 v44, 0x4020000000000000L    # 8.0

    div-double v42, v42, v44

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v38, v38, p1

    mul-double v4, v22, v38

    .line 83
    .local v4, "b2":D
    const-wide/high16 v38, -0x3fca000000000000L    # -22.0

    const-wide v40, 0x4049555555555555L    # 50.666666666666664

    const-wide/high16 v42, -0x3fc2000000000000L    # -30.0

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v38, v38, p1

    mul-double v6, v22, v38

    .line 84
    .local v6, "b3":D
    const-wide v38, 0x4027700000000000L    # 11.71875

    const-wide v40, -0x3fc5f55555555555L    # -26.041666666666668

    const-wide v42, 0x405f400000000000L    # 125.0

    mul-double v42, v42, p1

    const-wide/high16 v44, 0x4020000000000000L    # 8.0

    div-double v42, v42, v44

    add-double v40, v40, v42

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v38, v38, p1

    mul-double v8, v22, v38

    .line 85
    .local v8, "b4":D
    const-wide/high16 v38, -0x402c000000000000L    # -0.3125

    const-wide/high16 v40, 0x4014000000000000L    # 5.0

    mul-double v40, v40, p1

    const-wide/high16 v42, 0x4028000000000000L    # 12.0

    div-double v40, v40, v42

    add-double v38, v38, v40

    mul-double v38, v38, p1

    mul-double v10, v22, v38

    .line 86
    .local v10, "b5":D
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x0

    aget-object v25, v25, v38

    aget-wide v28, v25, v24

    .line 88
    .local v28, "yDot0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x2

    aget-object v25, v25, v38

    aget-wide v30, v25, v24

    .line 89
    .local v30, "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x3

    aget-object v25, v25, v38

    aget-wide v32, v25, v24

    .line 90
    .local v32, "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x4

    aget-object v25, v25, v38

    aget-wide v34, v25, v24

    .line 91
    .local v34, "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x5

    aget-object v25, v25, v38

    aget-wide v36, v25, v24

    .line 92
    .local v36, "yDot5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->previousState:[D

    move-object/from16 v38, v0

    aget-wide v38, v38, v24

    mul-double v40, v2, v28

    add-double v38, v38, v40

    mul-double v40, v4, v30

    add-double v38, v38, v40

    mul-double v40, v6, v32

    add-double v38, v38, v40

    mul-double v40, v8, v34

    add-double v38, v38, v40

    mul-double v40, v10, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v25, v0

    mul-double v38, v12, v28

    mul-double v40, v14, v30

    add-double v38, v38, v40

    mul-double v40, v16, v32

    add-double v38, v38, v40

    mul-double v40, v18, v34

    add-double v38, v38, v40

    mul-double v40, v20, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 86
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 98
    .end local v2    # "b0":D
    .end local v4    # "b2":D
    .end local v6    # "b3":D
    .end local v8    # "b4":D
    .end local v10    # "b5":D
    .end local v22    # "hTheta":D
    .end local v24    # "i":I
    .end local v28    # "yDot0":D
    .end local v30    # "yDot2":D
    .end local v32    # "yDot3":D
    .end local v34    # "yDot4":D
    .end local v36    # "yDot5":D
    :cond_0
    mul-double v26, p1, p1

    .line 99
    .local v26, "theta2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    move-wide/from16 v38, v0

    const-wide v40, -0x404aaaaaaaaaaaabL    # -0.08333333333333333

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v44, -0x3ff2000000000000L    # -3.75

    const-wide v46, 0x4015555555555555L    # 5.333333333333333

    const-wide/high16 v48, -0x3fec000000000000L    # -5.0

    mul-double v48, v48, p1

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    div-double v48, v48, v50

    add-double v46, v46, v48

    mul-double v46, v46, p1

    add-double v44, v44, v46

    mul-double v44, v44, p1

    add-double v42, v42, v44

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v2, v38, v40

    .line 100
    .restart local v2    # "b0":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    move-wide/from16 v38, v0

    const-wide/high16 v40, -0x4015000000000000L    # -0.84375

    const-wide v42, 0x402cb00000000000L    # 14.34375

    const-wide v44, -0x3fc1a00000000000L    # -30.375

    const-wide v46, 0x4060e00000000000L    # 135.0

    mul-double v46, v46, p1

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    div-double v46, v46, v48

    add-double v44, v44, v46

    mul-double v44, v44, p1

    add-double v42, v42, v44

    mul-double v42, v42, v26

    add-double v40, v40, v42

    mul-double v4, v38, v40

    .line 101
    .restart local v4    # "b2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    move-wide/from16 v38, v0

    const-wide v40, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v42, -0x3fca000000000000L    # -22.0

    const-wide v44, 0x4049555555555555L    # 50.666666666666664

    const-wide/high16 v46, -0x3fc2000000000000L    # -30.0

    mul-double v46, v46, p1

    add-double v44, v44, v46

    mul-double v44, v44, p1

    add-double v42, v42, v44

    mul-double v42, v42, v26

    add-double v40, v40, v42

    mul-double v6, v38, v40

    .line 102
    .restart local v6    # "b3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    move-wide/from16 v38, v0

    const-wide v40, -0x400b2aaaaaaaaaabL    # -1.3020833333333333

    const-wide v42, 0x4027700000000000L    # 11.71875

    const-wide v44, -0x3fc5f55555555555L    # -26.041666666666668

    const-wide v46, 0x405f400000000000L    # 125.0

    mul-double v46, v46, p1

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    div-double v46, v46, v48

    add-double v44, v44, v46

    mul-double v44, v44, p1

    add-double v42, v42, v44

    mul-double v42, v42, v26

    add-double v40, v40, v42

    mul-double v8, v38, v40

    .line 103
    .restart local v8    # "b4":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    move-wide/from16 v38, v0

    const-wide v40, -0x4045555555555555L    # -0.10416666666666667

    const-wide/high16 v42, -0x402c000000000000L    # -0.3125

    const-wide/high16 v44, 0x4014000000000000L    # 5.0

    mul-double v44, v44, p1

    const-wide/high16 v46, 0x4028000000000000L    # 12.0

    div-double v44, v44, v46

    add-double v42, v42, v44

    mul-double v42, v42, v26

    add-double v40, v40, v42

    mul-double v10, v38, v40

    .line 104
    .restart local v10    # "b5":D
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x0

    aget-object v25, v25, v38

    aget-wide v28, v25, v24

    .line 106
    .restart local v28    # "yDot0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x2

    aget-object v25, v25, v38

    aget-wide v30, v25, v24

    .line 107
    .restart local v30    # "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x3

    aget-object v25, v25, v38

    aget-wide v32, v25, v24

    .line 108
    .restart local v32    # "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x4

    aget-object v25, v25, v38

    aget-wide v34, v25, v24

    .line 109
    .restart local v34    # "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x5

    aget-object v25, v25, v38

    aget-wide v36, v25, v24

    .line 110
    .restart local v36    # "yDot5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->currentState:[D

    move-object/from16 v38, v0

    aget-wide v38, v38, v24

    mul-double v40, v2, v28

    add-double v38, v38, v40

    mul-double v40, v4, v30

    add-double v38, v38, v40

    mul-double v40, v6, v32

    add-double v38, v38, v40

    mul-double v40, v8, v34

    add-double v38, v38, v40

    mul-double v40, v10, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v25, v0

    mul-double v38, v12, v28

    mul-double v40, v14, v30

    add-double v38, v38, v40

    mul-double v40, v16, v32

    add-double v38, v38, v40

    mul-double v40, v18, v34

    add-double v38, v38, v40

    mul-double v40, v20, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 104
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 117
    .end local v26    # "theta2":D
    .end local v28    # "yDot0":D
    .end local v30    # "yDot2":D
    .end local v32    # "yDot3":D
    .end local v34    # "yDot4":D
    .end local v36    # "yDot5":D
    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;)V

    return-object v0
.end method
