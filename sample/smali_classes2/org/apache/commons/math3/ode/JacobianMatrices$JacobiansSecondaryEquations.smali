.class Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/SecondaryEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JacobiansSecondaryEquations"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;
    .param p2, "x1"    # Lorg/apache/commons/math3/ode/JacobianMatrices$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D[D[D)V
    .locals 29
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .param p5, "z"    # [D
    .param p6, "zDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$400(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;
    invoke-static {v6}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$600(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-static {v7}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    const/4 v4, 0x0

    # setter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z
    invoke-static {v3, v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$402(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z

    .line 365
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 366
    .local v8, "dFdY":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->computeMainStateJacobian(D[D[D[[D)V

    .line 369
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 370
    aget-object v16, v8, v18

    .line 371
    .local v16, "dFdYi":[D
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_2

    .line 372
    const-wide/16 v26, 0x0

    .line 373
    .local v26, "s":D
    move/from16 v25, v20

    .line 374
    .local v25, "startIndex":I
    move/from16 v28, v25

    .line 375
    .local v28, "zIndex":I
    const/16 v22, 0x0

    .local v22, "l":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 376
    aget-wide v4, v16, v22

    aget-wide v6, p5, v28

    mul-double/2addr v4, v6

    add-double v26, v26, v4

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int v28, v28, v3

    .line 375
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 379
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    mul-int v3, v3, v18

    add-int v3, v3, v25

    aput-wide v26, p6, v3

    .line 371
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 369
    .end local v22    # "l":I
    .end local v25    # "startIndex":I
    .end local v26    # "s":D
    .end local v28    # "zIndex":I
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 383
    .end local v16    # "dFdYi":[D
    .end local v20    # "j":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    new-array v15, v3, [D

    .line 386
    .local v15, "dFdP":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    mul-int v25, v3, v4

    .line 387
    .restart local v25    # "startIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v0, v2

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    aget-object v24, v2, v19

    .line 388
    .local v24, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    const/16 v17, 0x0

    .line 389
    .local v17, "found":Z
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_4
    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_7

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;

    .line 391
    .local v9, "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 392
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->computeParameterJacobian(D[D[DLjava/lang/String;[D)V

    .line 394
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 395
    aget-object v16, v8, v18

    .line 396
    .restart local v16    # "dFdYi":[D
    move/from16 v28, v25

    .line 397
    .restart local v28    # "zIndex":I
    aget-wide v26, v15, v18

    .line 398
    .restart local v26    # "s":D
    const/16 v22, 0x0

    .restart local v22    # "l":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    .line 399
    aget-wide v4, v16, v22

    aget-wide v6, p5, v28

    mul-double/2addr v4, v6

    add-double v26, v26, v4

    .line 400
    add-int/lit8 v28, v28, 0x1

    .line 398
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 402
    :cond_4
    add-int v3, v25, v18

    aput-wide v26, p6, v3

    .line 394
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 404
    .end local v16    # "dFdYi":[D
    .end local v22    # "l":I
    .end local v26    # "s":D
    .end local v28    # "zIndex":I
    :cond_5
    const/16 v17, 0x1

    .line 389
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 407
    .end local v9    # "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    :cond_7
    if-nez v17, :cond_8

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int v3, v3, v25

    const-wide/16 v4, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-static {v0, v1, v3, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    .line 410
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int v25, v25, v3

    .line 387
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 414
    .end local v2    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v15    # "dFdP":[D
    .end local v17    # "found":Z
    .end local v19    # "i$":I
    .end local v21    # "k":I
    .end local v23    # "len$":I
    .end local v24    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v25    # "startIndex":I
    :cond_9
    return-void
.end method

.method public getDimension()I
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I
    invoke-static {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I
    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
