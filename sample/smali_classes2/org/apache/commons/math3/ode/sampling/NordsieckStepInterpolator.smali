.class public Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "NordsieckStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = -0x63a3fe2e1c0e0830L


# instance fields
.field private nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private referenceTime:D

.field private scaled:[D

.field private scalingH:D

.field protected stateVariation:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;)V
    .locals 3
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 83
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 84
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 85
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 88
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 91
    :cond_1
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 20
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedTime:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    move-wide/from16 v18, v0

    sub-double v14, v16, v18

    .line 192
    .local v14, "x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 194
    .local v8, "normalizedAbscissa":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v6

    .line 200
    .local v6, "nData":[[D
    array-length v11, v6

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 201
    add-int/lit8 v10, v4, 0x2

    .line 202
    .local v10, "order":I
    aget-object v7, v6, v4

    .line 203
    .local v7, "nDataI":[D
    invoke-static {v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v12

    .line 204
    .local v12, "power":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v11, v7

    if-ge v5, v11, :cond_0

    .line 205
    aget-wide v16, v7, v5

    mul-double v2, v16, v12

    .line 206
    .local v2, "d":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v16, v11, v5

    add-double v16, v16, v2

    aput-wide v16, v11, v5

    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v16, v11, v5

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v18, v18, v2

    add-double v16, v16, v18

    aput-wide v16, v11, v5

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "d":D
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 211
    .end local v5    # "j":I
    .end local v7    # "nDataI":[D
    .end local v10    # "order":I
    .end local v12    # "power":D
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    array-length v11, v11

    if-ge v5, v11, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v16, v11, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v5

    mul-double v18, v18, v8

    add-double v16, v16, v18

    aput-wide v16, v11, v5

    .line 213
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedState:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v5

    add-double v16, v16, v18

    aput-wide v16, v11, v5

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v5

    mul-double v18, v18, v8

    add-double v16, v16, v18

    div-double v16, v16, v14

    aput-wide v16, v11, v5

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 218
    :cond_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;)V

    return-object v0
.end method

.method public getInterpolatedStateVariation()[D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 11
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v4

    .line 262
    .local v4, "t":D
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 263
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 265
    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    if-nez v6, :cond_0

    const/4 v3, -0x1

    .line 266
    .local v3, "n":I
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 267
    .local v1, "hasScaled":Z
    if-eqz v1, :cond_1

    .line 268
    new-array v6, v3, [D

    iput-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 269
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 270
    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v1    # "hasScaled":Z
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    array-length v3, v6

    goto :goto_0

    .line 273
    .restart local v1    # "hasScaled":Z
    .restart local v3    # "n":I
    :cond_1
    iput-object v10, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 276
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 277
    .local v0, "hasNordsieck":Z
    if-eqz v0, :cond_3

    .line 278
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iput-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 283
    :goto_2
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 285
    new-array v6, v3, [D

    iput-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    .line 286
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 291
    :goto_3
    return-void

    .line 280
    :cond_3
    iput-object v10, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    goto :goto_2

    .line 288
    :cond_4
    iput-object v10, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    goto :goto_3
.end method

.method public reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 3
    .param p1, "time"    # D
    .param p3, "stepSize"    # D
    .param p5, "scaledDerivative"    # [D
    .param p6, "nordsieckVector"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 132
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 133
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 134
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 135
    iput-object p6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 140
    return-void
.end method

.method public reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 1
    .param p1, "y"    # [D
    .param p2, "forward"    # Z
    .param p3, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p4, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 116
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    .line 117
    return-void
.end method

.method public rescale(D)V
    .locals 13
    .param p1, "stepSize"    # D

    .prologue
    .line 149
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    div-double v6, p1, v8

    .line 150
    .local v6, "ratio":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    array-length v8, v8

    if-ge v0, v8, :cond_0

    .line 151
    iget-object v8, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v10, v8, v0

    mul-double/2addr v10, v6

    aput-wide v10, v8, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v2

    .line 155
    .local v2, "nData":[[D
    move-wide v4, v6

    .line 156
    .local v4, "power":D
    const/4 v0, 0x0

    :goto_1
    array-length v8, v2

    if-ge v0, v8, :cond_2

    .line 157
    mul-double/2addr v4, v6

    .line 158
    aget-object v3, v2, v0

    .line 159
    .local v3, "nDataI":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v8, v3

    if-ge v1, v8, :cond_1

    .line 160
    aget-wide v8, v3, v1

    mul-double/2addr v8, v4

    aput-wide v8, v3, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    .end local v1    # "j":I
    .end local v3    # "nDataI":[D
    :cond_2
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 166
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 229
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 230
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 232
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    if-nez v2, :cond_1

    const/4 v1, -0x1

    .line 233
    .local v1, "n":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    if-nez v2, :cond_2

    .line 234
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 242
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    if-nez v2, :cond_3

    .line 243
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 251
    :goto_1
    return-void

    .line 232
    .end local v1    # "n":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    array-length v1, v2

    goto :goto_0

    .line 236
    .restart local v1    # "n":I
    :cond_2
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 237
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 238
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 245
    .end local v0    # "j":I
    :cond_3
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 246
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method
