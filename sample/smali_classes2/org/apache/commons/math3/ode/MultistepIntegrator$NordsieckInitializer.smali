.class Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;
.super Ljava/lang/Object;
.source "MultistepIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NordsieckInitializer"
.end annotation


# instance fields
.field private count:I

.field private final t:[D

.field final synthetic this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

.field private final y:[[D

.field private final yDot:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V
    .locals 2
    .param p2, "nSteps"    # I
    .param p3, "n"    # I

    .prologue
    .line 358
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    .line 360
    new-array v0, p2, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    .line 361
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    .line 362
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    .line 363
    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 23
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v18

    .line 370
    .local v18, "prev":D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v12

    .line 372
    .local v12, "curr":D
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    if-nez v5, :cond_0

    .line 374
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 375
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    const/4 v6, 0x0

    aput-wide v18, v5, v6

    .line 376
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v11

    .line 377
    .local v11, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v20

    .line 378
    .local v20, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 379
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 380
    const/4 v15, 0x0

    .line 381
    .local v15, "index":I
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .local v4, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    aget-object v21, v4, v14

    .line 382
    .local v21, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 383
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 384
    add-int/lit8 v15, v15, 0x1

    .line 381
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 389
    .end local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v11    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v14    # "i$":I
    .end local v15    # "index":I
    .end local v17    # "len$":I
    .end local v20    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    .line 390
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aput-wide v12, v5, v6

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v11

    .line 394
    .restart local v11    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v20

    .line 395
    .restart local v20    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 396
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 397
    const/4 v15, 0x0

    .line 398
    .restart local v15    # "index":I
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .restart local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v0, v4

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    aget-object v21, v4, v14

    .line 399
    .restart local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 400
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 401
    add-int/lit8 v15, v15, 0x1

    .line 398
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 404
    .end local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iput-wide v6, v5, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepStart:D

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    div-double/2addr v6, v8

    iput-wide v6, v5, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    .line 411
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    .line 412
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    array-length v5, v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    aget-wide v6, v5, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-wide v8, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    mul-double/2addr v6, v8

    aput-wide v6, v5, v16

    .line 412
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 417
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-wide v6, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    invoke-virtual/range {v5 .. v10}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v5

    move-object/from16 v0, v22

    iput-object v5, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 420
    new-instance v5, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;-><init>()V

    throw v5

    .line 424
    .end local v16    # "j":I
    :cond_3
    return-void
.end method

.method public init(D[DD)V
    .locals 0
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "time"    # D

    .prologue
    .line 429
    return-void
.end method
