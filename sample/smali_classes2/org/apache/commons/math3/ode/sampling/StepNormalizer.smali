.class public Lorg/apache/commons/math3/ode/sampling/StepNormalizer;
.super Ljava/lang/Object;
.source "StepNormalizer.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# instance fields
.field private final bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field private firstTime:D

.field private forward:Z

.field private h:D

.field private final handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

.field private lastDerivatives:[D

.field private lastState:[D

.field private lastTime:D

.field private final mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;)V
    .locals 7
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    .prologue
    .line 126
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v6, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 128
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 7
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .param p4, "bounds"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .prologue
    .line 151
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 152
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 7
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .param p4, "mode"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .prologue
    .line 139
    sget-object v6, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 140
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 5
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .param p4, "mode"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .param p5, "bounds"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    .line 165
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    .line 166
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 167
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 168
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 169
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 170
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 171
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 173
    return-void
.end method

.method private doNormalizedStep(Z)V
    .locals 7
    .param p1, "isLast"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->handleStep(D[D[DZ)V

    goto :goto_0
.end method

.method private isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 5
    .param p1, "nextTime"    # D
    .param p3, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    if-eqz v2, :cond_2

    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    cmpl-double v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V
    .locals 4
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 293
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 294
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 295
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 12
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 205
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    if-nez v4, :cond_0

    .line 206
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 207
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 208
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1, v8, v9}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 209
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v4

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 210
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v4

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 213
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 214
    iget-boolean v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    if-nez v4, :cond_0

    .line 215
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    neg-double v8, v8

    iput-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    .line 220
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v7, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v4, v7, :cond_3

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double v2, v8, v10

    .line 223
    .local v2, "nextTime":D
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v7, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v4, v7, :cond_1

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-static {v2, v3, v8, v9, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v2, v8

    .line 229
    :cond_1
    invoke-direct {p0, v2, v3, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v1

    .line 230
    .local v1, "nextInStep":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 232
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 235
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    .line 238
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v2, v8

    .line 239
    invoke-direct {p0, v2, v3, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v1

    goto :goto_2

    .end local v1    # "nextInStep":Z
    .end local v2    # "nextTime":D
    :cond_2
    move v4, v6

    .line 213
    goto :goto_0

    .line 220
    :cond_3
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    mul-double v2, v8, v10

    goto :goto_1

    .line 242
    .restart local v1    # "nextInStep":Z
    .restart local v2    # "nextTime":D
    :cond_4
    if-eqz p2, :cond_6

    .line 246
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v10

    cmpl-double v4, v8, v10

    if-eqz v4, :cond_7

    move v0, v5

    .line 248
    .local v0, "addLast":Z
    :goto_3
    if-nez v0, :cond_5

    move v6, v5

    :cond_5
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 249
    if-eqz v0, :cond_6

    .line 250
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    .line 251
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 254
    .end local v0    # "addLast":Z
    :cond_6
    return-void

    :cond_7
    move v0, v6

    .line 246
    goto :goto_3
.end method

.method public init(D[DD)V
    .locals 6
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 178
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 179
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 180
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 181
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->init(D[DD)V

    .line 187
    return-void
.end method
