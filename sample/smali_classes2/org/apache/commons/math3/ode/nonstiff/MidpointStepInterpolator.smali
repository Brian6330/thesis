.class Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "MidpointStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 21
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 88
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v8, v16, p1

    .line 89
    .local v8, "coeffDot2":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v6, v16, v8

    .line 91
    .local v6, "coeffDot1":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->previousState:[D

    if-eqz v11, :cond_0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, p1, v16

    if-gtz v11, :cond_0

    .line 92
    mul-double v2, p1, p3

    .line 93
    .local v2, "coeff1":D
    mul-double v16, p1, p1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->h:D

    move-wide/from16 v18, v0

    mul-double v4, v16, v18

    .line 94
    .local v4, "coeff2":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v10, v11, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    const/16 v16, 0x0

    aget-object v11, v11, v16

    aget-wide v12, v11, v10

    .line 96
    .local v12, "yDot1":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    const/16 v16, 0x1

    aget-object v11, v11, v16

    aget-wide v14, v11, v10

    .line 97
    .local v14, "yDot2":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->previousState:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v10

    mul-double v18, v2, v12

    add-double v16, v16, v18

    mul-double v18, v4, v14

    add-double v16, v16, v18

    aput-wide v16, v11, v10

    .line 98
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedDerivatives:[D

    mul-double v16, v6, v12

    mul-double v18, v8, v14

    add-double v16, v16, v18

    aput-wide v16, v11, v10

    .line 94
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "coeff1":D
    .end local v4    # "coeff2":D
    .end local v10    # "i":I
    .end local v12    # "yDot1":D
    .end local v14    # "yDot2":D
    :cond_0
    mul-double v2, p3, p1

    .line 102
    .restart local v2    # "coeff1":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, p1

    mul-double v4, p3, v16

    .line 103
    .restart local v4    # "coeff2":D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v10, v11, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    const/16 v16, 0x0

    aget-object v11, v11, v16

    aget-wide v12, v11, v10

    .line 105
    .restart local v12    # "yDot1":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    const/16 v16, 0x1

    aget-object v11, v11, v16

    aget-wide v14, v11, v10

    .line 106
    .restart local v14    # "yDot2":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->currentState:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v10

    mul-double v18, v2, v12

    add-double v16, v16, v18

    mul-double v18, v4, v14

    sub-double v16, v16, v18

    aput-wide v16, v11, v10

    .line 107
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedDerivatives:[D

    mul-double v16, v6, v12

    mul-double v18, v8, v14

    add-double v16, v16, v18

    aput-wide v16, v11, v10

    .line 103
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 111
    .end local v12    # "yDot1":D
    .end local v14    # "yDot2":D
    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V

    return-object v0
.end method
