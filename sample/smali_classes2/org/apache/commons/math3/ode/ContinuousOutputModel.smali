.class public Lorg/apache/commons/math3/ode/ContinuousOutputModel;
.super Ljava/lang/Object;
.source "ContinuousOutputModel.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13ad9f94dd1a30b6L


# instance fields
.field private finalTime:D

.field private forward:Z

.field private index:I

.field private initialTime:D

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/StepInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    .line 115
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 116
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 119
    return-void
.end method

.method private locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I
    .locals 7
    .param p1, "time"    # D
    .param p3, "interval"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 425
    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    if-eqz v3, :cond_3

    .line 426
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    cmpg-double v3, p1, v4

    if-gez v3, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v4

    cmpl-double v0, p1, v4

    if-lez v0, :cond_2

    move v0, v1

    .line 429
    goto :goto_0

    :cond_2
    move v0, v2

    .line 431
    goto :goto_0

    .line 434
    :cond_3
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    cmpl-double v3, p1, v4

    if-gtz v3, :cond_0

    .line 436
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v4

    cmpg-double v0, p1, v4

    if-gez v0, :cond_4

    move v0, v1

    .line 437
    goto :goto_0

    :cond_4
    move v0, v2

    .line 439
    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/ode/ContinuousOutputModel;)V
    .locals 20
    .param p1, "model"    # Lorg/apache/commons/math3/ode/ContinuousOutputModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 132
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 169
    :goto_0
    return-void

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 137
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 138
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 162
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 163
    .local v7, "interpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v7}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "interpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v9

    array-length v9, v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v14

    array-length v14, v14

    if-eq v9, v14, :cond_3

    .line 142
    new-instance v9, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v14

    array-length v14, v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v15

    array-length v15, v15

    invoke-direct {v9, v14, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v9

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    xor-int/2addr v9, v14

    if-eqz v9, :cond_4

    .line 147
    new-instance v9, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PROPAGATION_DIRECTION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-direct {v9, v14, v15}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 150
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 151
    .local v8, "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    .line 152
    .local v2, "current":D
    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v10

    .line 153
    .local v10, "previous":D
    sub-double v12, v2, v10

    .line 154
    .local v12, "step":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInitialTime()D

    move-result-wide v14

    sub-double v4, v14, v2

    .line 155
    .local v4, "gap":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    cmpl-double v9, v14, v16

    if-lez v9, :cond_1

    .line 156
    new-instance v9, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->HOLE_BETWEEN_MODELS_TIME_RANGES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v9, v14, v15}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 166
    .end local v2    # "current":D
    .end local v4    # "gap":D
    .end local v8    # "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v10    # "previous":D
    .end local v12    # "step":D
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 167
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v9}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    goto/16 :goto_0
.end method

.method public getFinalTime()D
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    return-wide v0
.end method

.method public getInitialTime()D
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    return-wide v0
.end method

.method public getInterpolatedDerivatives()[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedSecondaryDerivatives(I)[D
    .locals 2
    .param p1, "secondaryStateIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedSecondaryState(I)[D
    .locals 2
    .param p1, "secondaryStateIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedState()[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedTime()D
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 2
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 193
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    if-eqz p2, :cond_1

    .line 199
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 200
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 203
    :cond_1
    return-void
.end method

.method public init(D[DD)V
    .locals 2
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 173
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 174
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    return-void
.end method

.method public setInterpolatedTime(D)V
    .locals 41
    .param p1, "time"    # D

    .prologue
    .line 253
    const/16 v21, 0x0

    .line 254
    .local v21, "iMin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 255
    .local v26, "sMin":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v36

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v38

    add-double v36, v36, v38

    mul-double v32, v34, v36

    .line 257
    .local v32, "tMin":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    add-int/lit8 v17, v34, -0x1

    .line 258
    .local v17, "iMax":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 259
    .local v24, "sMax":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v36

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v38

    add-double v36, v36, v38

    mul-double v28, v34, v36

    .line 263
    .local v28, "tMax":D
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v34

    if-gtz v34, :cond_0

    .line 264
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 265
    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 336
    :goto_0
    return-void

    .line 268
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v34

    if-ltz v34, :cond_1

    .line 269
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 270
    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    goto :goto_0

    .line 275
    :cond_1
    :goto_1
    sub-int v34, v17, v21

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_7

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 279
    .local v27, "si":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v22

    .line 280
    .local v22, "location":I
    if-gez v22, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v17, v0

    .line 282
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v36

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v38

    add-double v36, v36, v38

    mul-double v28, v34, v36

    .line 293
    :goto_2
    add-int v34, v21, v17

    div-int/lit8 v20, v34, 0x2

    .line 294
    .local v20, "iMed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 295
    .local v25, "sMed":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v25 .. v25}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v36

    invoke-interface/range {v25 .. v25}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v38

    add-double v36, v36, v38

    mul-double v30, v34, v36

    .line 297
    .local v30, "tMed":D
    sub-double v34, v30, v32

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    const-wide v36, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v34, v34, v36

    if-ltz v34, :cond_2

    sub-double v34, v28, v30

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    const-wide v36, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v34, v34, v36

    if-gez v34, :cond_5

    .line 299
    :cond_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 318
    :goto_3
    add-int/lit8 v34, v21, 0x1

    mul-int/lit8 v35, v21, 0x9

    add-int v35, v35, v17

    div-int/lit8 v35, v35, 0xa

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v23

    .line 319
    .local v23, "low":I
    add-int/lit8 v34, v17, -0x1

    mul-int/lit8 v35, v17, 0x9

    add-int v35, v35, v21

    div-int/lit8 v35, v35, 0xa

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v16

    .line 320
    .local v16, "high":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 321
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto/16 :goto_1

    .line 283
    .end local v16    # "high":I
    .end local v20    # "iMed":I
    .end local v23    # "low":I
    .end local v25    # "sMed":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v30    # "tMed":D
    :cond_3
    if-lez v22, :cond_4

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v21, v0

    .line 285
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v36

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v38

    add-double v36, v36, v38

    mul-double v32, v34, v36

    goto/16 :goto_2

    .line 288
    :cond_4
    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    goto/16 :goto_0

    .line 304
    .restart local v20    # "iMed":I
    .restart local v25    # "sMed":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .restart local v30    # "tMed":D
    :cond_5
    sub-double v4, v28, v30

    .line 305
    .local v4, "d12":D
    sub-double v8, v30, v32

    .line 306
    .local v8, "d23":D
    sub-double v6, v28, v32

    .line 307
    .local v6, "d13":D
    sub-double v10, p1, v28

    .line 308
    .local v10, "dt1":D
    sub-double v12, p1, v30

    .line 309
    .local v12, "dt2":D
    sub-double v14, p1, v32

    .line 310
    .local v14, "dt3":D
    mul-double v34, v12, v14

    mul-double v34, v34, v8

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    mul-double v36, v10, v14

    mul-double v36, v36, v6

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    mul-double v36, v10, v12

    mul-double v36, v36, v4

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    add-double v34, v34, v36

    mul-double v36, v4, v8

    mul-double v36, v36, v6

    div-double v18, v34, v36

    .line 314
    .local v18, "iLagrange":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto/16 :goto_3

    .line 322
    .end local v4    # "d12":D
    .end local v6    # "d13":D
    .end local v8    # "d23":D
    .end local v10    # "dt1":D
    .end local v12    # "dt2":D
    .end local v14    # "dt3":D
    .end local v18    # "iLagrange":D
    .restart local v16    # "high":I
    .restart local v23    # "low":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v16

    if-le v0, v1, :cond_1

    .line 323
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto/16 :goto_1

    .line 329
    .end local v16    # "high":I
    .end local v20    # "iMed":I
    .end local v22    # "location":I
    .end local v23    # "low":I
    .end local v25    # "sMed":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v27    # "si":Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .end local v30    # "tMed":D
    :cond_7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 330
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v17

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v34

    if-lez v34, :cond_8

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_4

    .line 334
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    move/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    goto/16 :goto_0
.end method
