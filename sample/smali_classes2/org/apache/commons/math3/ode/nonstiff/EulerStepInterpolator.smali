.class Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "EulerStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 9
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    const/4 v8, 0x0

    .line 85
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->previousState:[D

    if-eqz v1, :cond_1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_1

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->previousState:[D

    aget-wide v2, v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->h:D

    mul-double/2addr v4, p1

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v8

    aget-wide v6, v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v8

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    array-length v3, v3

    invoke-static {v1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    :goto_1
    return-void

    .line 91
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 92
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->currentState:[D

    aget-wide v2, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v8

    aget-wide v4, v4, v0

    mul-double/2addr v4, p3

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v8

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    array-length v3, v3

    invoke-static {v1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;)V

    return-object v0
.end method
