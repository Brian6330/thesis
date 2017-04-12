.class public Lorg/apache/commons/math3/optim/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.source "SimplexSolver.java"


# static fields
.field static final DEFAULT_CUT_OFF:D = 1.0E-10

.field private static final DEFAULT_EPSILON:D = 1.0E-6

.field static final DEFAULT_ULPS:I = 0xa


# instance fields
.field private final cutOff:D

.field private final epsilon:D

.field private final maxUlps:I

.field private pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field private solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 100
    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    .line 101
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1, "epsilon"    # D

    .prologue
    .line 109
    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    .line 110
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .param p1, "epsilon"    # D
    .param p3, "maxUlps"    # I

    .prologue
    .line 119
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    .line 120
    return-void
.end method

.method public constructor <init>(DID)V
    .locals 1
    .param p1, "epsilon"    # D
    .param p3, "maxUlps"    # I
    .param p4, "cutOff"    # D

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;-><init>()V

    .line 130
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    .line 131
    iput p3, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    .line 132
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    .line 133
    sget-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    .line 134
    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    .prologue
    .line 196
    const-wide/16 v4, 0x0

    .line 197
    .local v4, "minValue":D
    const/4 v3, 0x0

    .line 198
    .local v3, "minPos":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_0

    .line 199
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    .line 202
    .local v0, "entry":D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    .line 203
    move-wide v4, v0

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 207
    iget-object v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    sget-object v7, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isValidPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    .end local v0    # "entry":D
    :cond_0
    return-object v3

    .line 198
    .restart local v0    # "entry":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getPivotRow(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 23
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .param p2, "col"    # I

    .prologue
    .line 248
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v16, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 250
    .local v14, "minRatio":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v11

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v4

    if-ge v11, v4, :cond_2

    .line 251
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v20

    .line 252
    .local v20, "rhs":D
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 256
    .local v2, "entry":D
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-lez v4, :cond_0

    .line 257
    div-double v4, v20, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    .line 260
    .local v18, "ratio":D
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    .line 261
    .local v9, "cmp":I
    if-nez v9, :cond_1

    .line 262
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v9    # "cmp":I
    .end local v18    # "ratio":D
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 263
    .restart local v9    # "cmp":I
    .restart local v18    # "ratio":D
    :cond_1
    if-gez v9, :cond_0

    .line 264
    move-wide/from16 v14, v18

    .line 265
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 266
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v2    # "entry":D
    .end local v9    # "cmp":I
    .end local v18    # "ratio":D
    .end local v20    # "rhs":D
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 272
    const/16 v22, 0x0

    .line 306
    :cond_3
    :goto_2
    return-object v22

    .line 273
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 277
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v4

    if-lez v4, :cond_7

    .line 278
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 279
    .local v22, "row":Ljava/lang/Integer;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v4

    if-ge v11, v4, :cond_5

    .line 280
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v4

    add-int v10, v11, v4

    .line 281
    .local v10, "column":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 282
    .restart local v2    # "entry":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 279
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 295
    .end local v2    # "entry":D
    .end local v10    # "column":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v22    # "row":Ljava/lang/Integer;
    :cond_7
    const/16 v17, 0x0

    .line 296
    .local v17, "minRow":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v13

    .line 297
    .local v13, "minIndex":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 298
    .restart local v22    # "row":Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicVariable(I)I

    move-result v8

    .line 299
    .local v8, "basicVar":I
    if-ge v8, v13, :cond_8

    .line 300
    move v13, v8

    .line 301
    move-object/from16 v17, v22

    goto :goto_4

    .end local v8    # "basicVar":I
    .end local v22    # "row":Ljava/lang/Integer;
    :cond_9
    move-object/from16 v22, v17

    .line 304
    goto :goto_2

    .line 306
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "minIndex":I
    .end local v17    # "minRow":Ljava/lang/Integer;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v22, v4

    goto/16 :goto_2
.end method

.method private isValidPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z
    .locals 7
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .param p2, "col"    # I

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v6

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v2

    if-ge v6, v2, :cond_1

    .line 229
    invoke-virtual {p1, v6, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    .line 232
    .local v0, "entry":D
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v2

    if-lez v2, :cond_0

    .line 233
    const/4 v2, 0x1

    .line 236
    .end local v0    # "entry":D
    :goto_1
    return v2

    .line 228
    .restart local v0    # "entry":D
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "entry":D
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 4
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->incrementIterationCount()V

    .line 322
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    .line 323
    .local v0, "pivotCol":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v1

    .line 324
    .local v1, "pivotRow":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 325
    new-instance v2, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;

    invoke-direct {v2}, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;-><init>()V

    throw v2

    .line 328
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->performRowOperations(II)V

    .line 329
    return-void
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 372
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getConstraints()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isRestrictedToNonNegative()Z

    move-result v5

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    iget v8, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZDI)V

    .line 380
    .local v1, "tableau":Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 381
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->dropPhase1Objective()V

    .line 384
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v2, :cond_1

    .line 385
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 388
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v2

    if-nez v2, :cond_2

    .line 389
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v10

    .line 397
    .local v10, "solution":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isRestrictedToNonNegative()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 398
    invoke-virtual {v10}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v0

    .line 399
    .local v0, "coeff":[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v2, v0

    if-ge v9, v2, :cond_4

    .line 400
    aget-wide v2, v0, v9

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v2

    if-gez v2, :cond_3

    .line 401
    new-instance v2, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {v2}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw v2

    .line 399
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 405
    .end local v0    # "coeff":[D
    .end local v9    # "i":I
    :cond_4
    return-object v10
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 175
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    .line 177
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 178
    .local v1, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v4, :cond_1

    .line 179
    check-cast v1, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    iput-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    .line 177
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .restart local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    instance-of v4, v1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-eqz v4, :cond_0

    .line 183
    check-cast v1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    iput-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    goto :goto_1

    .line 187
    :cond_2
    return-void
.end method

.method protected solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 6
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    return-void

    .line 349
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw v0
.end method
