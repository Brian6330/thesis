.class public abstract Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.super Ljava/lang/Object;
.source "AbstractStepInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepInterpolator;


# instance fields
.field protected currentState:[D

.field private dirtyState:Z

.field private finalized:Z

.field private forward:Z

.field private globalCurrentTime:D

.field private globalPreviousTime:D

.field protected h:D

.field protected interpolatedDerivatives:[D

.field protected interpolatedPrimaryDerivatives:[D

.field protected interpolatedPrimaryState:[D

.field protected interpolatedSecondaryDerivatives:[[D

.field protected interpolatedSecondaryState:[[D

.field protected interpolatedState:[D

.field protected interpolatedTime:D

.field private primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

.field private secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

.field private softCurrentTime:D

.field private softPreviousTime:D


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 113
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 114
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 115
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 117
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 118
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 120
    iput-boolean v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 121
    iput-boolean v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 122
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 123
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 124
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 125
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V
    .locals 6
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iget-wide v4, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 174
    iget-wide v4, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 175
    iget-wide v4, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 176
    iget-wide v4, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 177
    iget-wide v4, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 178
    iget-wide v4, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 180
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v1, :cond_1

    .line 181
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 182
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 183
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 184
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 199
    :cond_0
    iget-boolean v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 200
    iget-boolean v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 201
    iget-boolean v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 202
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 203
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 206
    return-void

    .line 186
    :cond_1
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 187
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 188
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 189
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 190
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 191
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    array-length v1, v1

    new-array v1, v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 192
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    array-length v1, v1

    new-array v1, v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v1, v1, v0

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aput-object v1, v3, v0

    .line 195
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v1, v1, v0

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aput-object v1, v3, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {v1}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/ode/EquationsMapper;

    goto :goto_0
.end method

.method protected constructor <init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2
    .param p1, "y"    # [D
    .param p2, "forward"    # Z
    .param p3, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p4, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 139
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 140
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 141
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 142
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 143
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 144
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 146
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 148
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 149
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 150
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 152
    return-void

    .line 149
    :cond_0
    invoke-virtual {p4}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/EquationsMapper;

    goto :goto_0
.end method

.method private allocateInterpolatedArrays(I)V
    .locals 3
    .param p1, "dimension"    # I

    .prologue
    const/4 v2, 0x0

    .line 212
    if-gez p1, :cond_1

    .line 213
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 214
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 215
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 216
    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    move-object v1, v2

    .line 217
    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 218
    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 221
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 222
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 223
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 224
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez v1, :cond_2

    move-object v1, v2

    .line 225
    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 226
    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    goto :goto_0

    .line 228
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v1

    new-array v1, v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 229
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v1

    new-array v1, v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v2

    new-array v2, v2, [D

    aput-object v2, v1, v0

    .line 232
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v2

    new-array v2, v2, [D

    aput-object v2, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private evaluateCompleteInterpolatedState()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 406
    iget-boolean v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    if-eqz v4, :cond_0

    .line 407
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    sub-double v0, v4, v6

    .line 408
    .local v0, "oneMinusThetaH":D
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    cmpl-double v4, v4, v2

    if-nez v4, :cond_1

    .line 409
    .local v2, "theta":D
    :goto_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->computeInterpolatedStateAndDerivatives(DD)V

    .line 410
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 412
    .end local v0    # "oneMinusThetaH":D
    .end local v2    # "theta":D
    :cond_0
    return-void

    .line 408
    .restart local v0    # "oneMinusThetaH":D
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    sub-double/2addr v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    div-double v2, v4, v6

    goto :goto_0
.end method


# virtual methods
.method protected abstract computeInterpolatedStateAndDerivatives(DD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
.end method

.method protected doFinalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 500
    return-void
.end method

.method public final finalizeStep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 488
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->doFinalize()V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 492
    :cond_0
    return-void
.end method

.method public getCurrentTime()D
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-wide v0
.end method

.method public getGlobalCurrentTime()D
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    return-wide v0
.end method

.method public getGlobalPreviousTime()D
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    return-wide v0
.end method

.method public getInterpolatedDerivatives()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 425
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 427
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    return-object v0
.end method

.method public getInterpolatedSecondaryDerivatives(I)[D
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 441
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 443
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInterpolatedSecondaryState(I)[D
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 433
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInterpolatedState()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 417
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 419
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    return-object v0
.end method

.method public getInterpolatedTime()D
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    return-wide v0
.end method

.method public getPreviousTime()D
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    return-wide v0
.end method

.method public isForward()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    return v0
.end method

.method protected readBaseExternal(Ljava/io/ObjectInput;)D
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 572
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 573
    .local v0, "dimension":I
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 574
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 575
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 576
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 577
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 578
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 579
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 580
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 582
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/EquationsMapper;

    aput-object v2, v3, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_0
    iput-boolean v6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 586
    if-gez v0, :cond_2

    .line 587
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 596
    :cond_1
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 597
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 599
    iput-boolean v6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 601
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    return-wide v2

    .line 589
    :cond_2
    new-array v2, v0, [D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 590
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 591
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public abstract readExternal(Ljava/io/ObjectInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2
    .param p1, "y"    # [D
    .param p2, "isForward"    # Z
    .param p3, "primary"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p4, "secondary"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 248
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 249
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 250
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 251
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 252
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 253
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 254
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 256
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 258
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 259
    invoke-virtual {p4}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 260
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 262
    return-void
.end method

.method public setInterpolatedTime(D)V
    .locals 1
    .param p1, "time"    # D

    .prologue
    .line 378
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 380
    return-void
.end method

.method public setSoftCurrentTime(D)V
    .locals 1
    .param p1, "softCurrentTime"    # D

    .prologue
    .line 334
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 335
    return-void
.end method

.method public setSoftPreviousTime(D)V
    .locals 1
    .param p1, "softPreviousTime"    # D

    .prologue
    .line 320
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 321
    return-void
.end method

.method public shift()V
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 290
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 291
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 292
    return-void
.end method

.method public storeTime(D)V
    .locals 5
    .param p1, "t"    # D

    .prologue
    .line 299
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 300
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 301
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 307
    return-void
.end method

.method protected writeBaseExternal(Ljava/io/ObjectOutput;)V
    .locals 10
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v7, :cond_0

    .line 520
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 524
    :goto_0
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 525
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 526
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 527
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 528
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 529
    iget-boolean v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 530
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 531
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v7, v7

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->write(I)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 533
    .local v5, "mapper":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "mapper":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v7

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 536
    .restart local v0    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-eqz v7, :cond_2

    .line 537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 538
    iget-object v7, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v8, v7, v1

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 542
    .end local v1    # "i":I
    :cond_2
    iget-wide v8, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    return-void

    .line 550
    :catch_0
    move-exception v6

    .line 551
    .local v6, "mcee":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v6}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 552
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v3, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 553
    throw v3
.end method

.method public abstract writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
