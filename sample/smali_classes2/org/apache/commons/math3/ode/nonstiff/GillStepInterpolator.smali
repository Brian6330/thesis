.class Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "GillStepInterpolator.java"


# static fields
.field private static final ONE_MINUS_INV_SQRT_2:D

.field private static final ONE_PLUS_INV_SQRT_2:D

.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 59
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    .line 62
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 43
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 102
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v28, v38, p1

    .line 103
    .local v28, "twoTheta":D
    mul-double v22, v28, v28

    .line 104
    .local v22, "fourTheta2":D
    const-wide/high16 v38, 0x4008000000000000L    # 3.0

    sub-double v38, v28, v38

    mul-double v38, v38, p1

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v14, v38, v40

    .line 105
    .local v14, "coeffDot1":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, p1

    mul-double v4, v28, v38

    .line 106
    .local v4, "cDot23":D
    sget-wide v38, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v16, v4, v38

    .line 107
    .local v16, "coeffDot2":D
    sget-wide v38, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v18, v4, v38

    .line 108
    .local v18, "coeffDot3":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v38, v28, v38

    mul-double v20, p1, v38

    .line 110
    .local v20, "coeffDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->previousState:[D

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    cmpg-double v25, p1, v38

    if-gtz v25, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->h:D

    move-wide/from16 v38, v0

    mul-double v38, v38, p1

    const-wide/high16 v40, 0x4018000000000000L    # 6.0

    div-double v26, v38, v40

    .line 112
    .local v26, "s":D
    const-wide/high16 v38, 0x4018000000000000L    # 6.0

    mul-double v38, v38, p1

    sub-double v38, v38, v22

    mul-double v2, v26, v38

    .line 113
    .local v2, "c23":D
    const-wide/high16 v38, 0x4018000000000000L    # 6.0

    const-wide/high16 v40, 0x4022000000000000L    # 9.0

    mul-double v40, v40, p1

    sub-double v38, v38, v40

    add-double v38, v38, v22

    mul-double v6, v26, v38

    .line 114
    .local v6, "coeff1":D
    sget-wide v38, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v8, v2, v38

    .line 115
    .local v8, "coeff2":D
    sget-wide v38, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v10, v2, v38

    .line 116
    .local v10, "coeff3":D
    const-wide/high16 v38, -0x3ff8000000000000L    # -3.0

    mul-double v38, v38, p1

    add-double v38, v38, v22

    mul-double v12, v26, v38

    .line 117
    .local v12, "coeff4":D
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x0

    aget-object v25, v25, v38

    aget-wide v30, v25, v24

    .line 119
    .local v30, "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x1

    aget-object v25, v25, v38

    aget-wide v32, v25, v24

    .line 120
    .local v32, "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x2

    aget-object v25, v25, v38

    aget-wide v34, v25, v24

    .line 121
    .local v34, "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x3

    aget-object v25, v25, v38

    aget-wide v36, v25, v24

    .line 122
    .local v36, "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->previousState:[D

    move-object/from16 v38, v0

    aget-wide v38, v38, v24

    mul-double v40, v6, v30

    add-double v38, v38, v40

    mul-double v40, v8, v32

    add-double v38, v38, v40

    mul-double v40, v10, v34

    add-double v38, v38, v40

    mul-double v40, v12, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v25, v0

    mul-double v38, v14, v30

    mul-double v40, v16, v32

    add-double v38, v38, v40

    mul-double v40, v18, v34

    add-double v38, v38, v40

    mul-double v40, v20, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 117
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "c23":D
    .end local v6    # "coeff1":D
    .end local v8    # "coeff2":D
    .end local v10    # "coeff3":D
    .end local v12    # "coeff4":D
    .end local v24    # "i":I
    .end local v26    # "s":D
    .end local v30    # "yDot1":D
    .end local v32    # "yDot2":D
    .end local v34    # "yDot3":D
    .end local v36    # "yDot4":D
    :cond_0
    const-wide/high16 v38, 0x4018000000000000L    # 6.0

    div-double v26, p3, v38

    .line 129
    .restart local v26    # "s":D
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    add-double v38, v38, v28

    sub-double v38, v38, v22

    mul-double v2, v26, v38

    .line 130
    .restart local v2    # "c23":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v40, 0x4014000000000000L    # 5.0

    mul-double v40, v40, p1

    sub-double v38, v38, v40

    add-double v38, v38, v22

    mul-double v6, v26, v38

    .line 131
    .restart local v6    # "coeff1":D
    sget-wide v38, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v8, v2, v38

    .line 132
    .restart local v8    # "coeff2":D
    sget-wide v38, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v10, v2, v38

    .line 133
    .restart local v10    # "coeff3":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, p1

    add-double v38, v38, v22

    mul-double v12, v26, v38

    .line 134
    .restart local v12    # "coeff4":D
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x0

    aget-object v25, v25, v38

    aget-wide v30, v25, v24

    .line 136
    .restart local v30    # "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x1

    aget-object v25, v25, v38

    aget-wide v32, v25, v24

    .line 137
    .restart local v32    # "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x2

    aget-object v25, v25, v38

    aget-wide v34, v25, v24

    .line 138
    .restart local v34    # "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    move-object/from16 v25, v0

    const/16 v38, 0x3

    aget-object v25, v25, v38

    aget-wide v36, v25, v24

    .line 139
    .restart local v36    # "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->currentState:[D

    move-object/from16 v38, v0

    aget-wide v38, v38, v24

    mul-double v40, v6, v30

    sub-double v38, v38, v40

    mul-double v40, v8, v32

    sub-double v38, v38, v40

    mul-double v40, v10, v34

    sub-double v38, v38, v40

    mul-double v40, v12, v36

    sub-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v25, v0

    mul-double v38, v14, v30

    mul-double v40, v16, v32

    add-double v38, v38, v40

    mul-double v40, v18, v34

    add-double v38, v38, v40

    mul-double v40, v20, v36

    add-double v38, v38, v40

    aput-wide v38, v25, v24

    .line 134
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 146
    .end local v30    # "yDot1":D
    .end local v32    # "yDot2":D
    .end local v34    # "yDot3":D
    .end local v36    # "yDot4":D
    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V

    return-object v0
.end method
