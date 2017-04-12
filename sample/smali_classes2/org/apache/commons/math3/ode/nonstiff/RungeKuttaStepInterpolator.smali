.class abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "RungeKuttaStepInterpolator.java"


# instance fields
.field protected integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

.field protected previousState:[D

.field protected yDotK:[[D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    .line 60
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    move-object v0, v1

    .line 61
    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 62
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V
    .locals 4
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 86
    iget-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 90
    iget-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v1, v1

    new-array v1, v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 91
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    iget-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v0

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aput-object v1, v3, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "k":I
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    move-object v1, v2

    .line 97
    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 102
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 104
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 10
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v4

    .line 181
    .local v4, "t":D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-nez v6, :cond_1

    const/4 v3, -0x1

    .line 182
    .local v3, "n":I
    :goto_0
    if-gez v3, :cond_2

    .line 183
    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 191
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 192
    .local v2, "kMax":I
    if-gez v2, :cond_3

    move-object v6, v7

    check-cast v6, [[D

    :goto_1
    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 193
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 194
    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    if-gez v3, :cond_4

    move-object v6, v7

    :goto_3
    aput-object v6, v8, v1

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v3, :cond_5

    .line 196
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 181
    .end local v0    # "i":I
    .end local v1    # "k":I
    .end local v2    # "kMax":I
    .end local v3    # "n":I
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    array-length v3, v6

    goto :goto_0

    .line 185
    .restart local v3    # "n":I
    :cond_2
    new-array v6, v3, [D

    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 186
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v3, :cond_0

    .line 187
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 192
    .end local v0    # "i":I
    .restart local v2    # "kMax":I
    :cond_3
    new-array v6, v2, [[D

    goto :goto_1

    .line 194
    .restart local v1    # "k":I
    :cond_4
    new-array v6, v3, [D

    goto :goto_3

    .line 193
    .restart local v0    # "i":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 200
    .end local v0    # "i":I
    :cond_6
    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 202
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-eqz v6, :cond_7

    .line 204
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->setInterpolatedTime(D)V

    .line 209
    :goto_6
    return-void

    .line 206
    :cond_7
    iput-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->interpolatedTime:D

    goto :goto_6
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 1
    .param p1, "rkIntegrator"    # Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .param p2, "y"    # [D
    .param p3, "yDotArray"    # [[D
    .param p4, "forward"    # Z
    .param p5, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p6, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    .line 133
    invoke-virtual {p0, p2, p4, p5, p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 135
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 136
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 137
    return-void
.end method

.method public shift()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 143
    invoke-super {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 144
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 155
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-nez v5, :cond_0

    move v3, v4

    .line 156
    .local v3, "n":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 157
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v6, v5, v0

    invoke-interface {p1, v6, v7}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    .end local v3    # "n":I
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    array-length v3, v5

    goto :goto_0

    .line 160
    .restart local v0    # "i":I
    .restart local v3    # "n":I
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    if-nez v5, :cond_2

    move v2, v4

    .line 161
    .local v2, "kMax":I
    :goto_2
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 162
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_3
    if-ge v1, v2, :cond_4

    .line 163
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_3

    .line 164
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v0

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 160
    .end local v1    # "k":I
    .end local v2    # "kMax":I
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v2, v4

    goto :goto_2

    .line 162
    .restart local v1    # "k":I
    .restart local v2    # "kMax":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 170
    :cond_4
    return-void
.end method
