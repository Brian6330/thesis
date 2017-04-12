.class public Lorg/apache/commons/math3/optimization/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.source "SimplexSolver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-6

.field private static final DEFAULT_ULPS:I = 0xa


# instance fields
.field private final epsilon:D

.field private final maxUlps:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;-><init>(DI)V

    .line 54
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 1
    .param p1, "epsilon"    # D
    .param p3, "maxUlps"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    .line 63
    iput p3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    .line 64
    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 7
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    .prologue
    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .local v4, "minValue":D
    const/4 v3, 0x0

    .line 74
    .local v3, "minPos":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 75
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    .line 78
    .local v0, "entry":D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 79
    move-wide v4, v0

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "entry":D
    :cond_1
    return-object v3
.end method

.method private getPivotRow(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 26
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    .param p2, "col"    # I

    .prologue
    .line 94
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v14, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 96
    .local v12, "minRatio":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v7

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v18

    .line 98
    .local v18, "rhs":D
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v8

    .line 100
    .local v8, "entry":D
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    move/from16 v23, v0

    move-wide/from16 v0, v24

    move/from16 v2, v23

    invoke-static {v8, v9, v0, v1, v2}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDI)I

    move-result v23

    if-lez v23, :cond_0

    .line 101
    div-double v16, v18, v8

    .line 104
    .local v16, "ratio":D
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    .line 105
    .local v5, "cmp":I
    if-nez v5, :cond_1

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v5    # "cmp":I
    .end local v16    # "ratio":D
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 107
    .restart local v5    # "cmp":I
    .restart local v16    # "ratio":D
    :cond_1
    if-gez v5, :cond_0

    .line 108
    move-wide/from16 v12, v16

    .line 109
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .restart local v14    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v5    # "cmp":I
    .end local v8    # "entry":D
    .end local v16    # "ratio":D
    .end local v18    # "rhs":D
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_4

    .line 116
    const/16 v20, 0x0

    .line 159
    :cond_3
    :goto_2
    return-object v20

    .line 117
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v23

    if-lez v23, :cond_7

    .line 122
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 123
    .local v20, "row":Ljava/lang/Integer;
    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_5

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v23

    add-int v6, v7, v23

    .line 125
    .local v6, "column":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v8

    .line 126
    .restart local v8    # "entry":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    move/from16 v23, v0

    move-wide/from16 v0, v24

    move/from16 v2, v23

    invoke-static {v8, v9, v0, v1, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 123
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 142
    .end local v6    # "column":I
    .end local v8    # "entry":D
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v20    # "row":Ljava/lang/Integer;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getIterations()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getMaxIterations()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 143
    const/4 v15, 0x0

    .line 144
    .local v15, "minRow":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v11

    .line 145
    .local v11, "minIndex":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v22

    .line 146
    .local v22, "varStart":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v23

    add-int/lit8 v21, v23, -0x1

    .line 147
    .local v21, "varEnd":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 148
    .restart local v20    # "row":Ljava/lang/Integer;
    move/from16 v7, v22

    :goto_4
    move/from16 v0, v21

    if-ge v7, v0, :cond_8

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 149
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v4

    .line 150
    .local v4, "basicRow":Ljava/lang/Integer;
    if-eqz v4, :cond_9

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    if-ge v7, v11, :cond_9

    .line 151
    move v11, v7

    .line 152
    move-object/from16 v15, v20

    .line 148
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v4    # "basicRow":Ljava/lang/Integer;
    .end local v20    # "row":Ljava/lang/Integer;
    :cond_a
    move-object/from16 v20, v15

    .line 156
    goto/16 :goto_2

    .line 159
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "minIndex":I
    .end local v15    # "minRow":Ljava/lang/Integer;
    .end local v21    # "varEnd":I
    .end local v22    # "varStart":I
    :cond_b
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move-object/from16 v20, v23

    goto/16 :goto_2
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 9
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->incrementIterationsCounter()V

    .line 173
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v1

    .line 174
    .local v1, "pivotCol":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v4

    .line 175
    .local v4, "pivotRow":Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 176
    new-instance v5, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;

    invoke-direct {v5}, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;-><init>()V

    throw v5

    .line 180
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    .line 181
    .local v6, "pivotVal":D
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5, v6, v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->divideRow(ID)V

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 185
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v0, v5, :cond_1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 187
    .local v2, "multiplier":D
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v0, v5, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->subtractRow(IID)V

    .line 184
    .end local v2    # "multiplier":D
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    return-void
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getConstraints()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->restrictToNonNegative()Z

    move-result v5

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    iget v8, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V

    .line 229
    .local v1, "tableau":Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    .line 230
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->dropPhase1Objective()V

    .line 232
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 6
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    return-void

    .line 207
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;-><init>()V

    throw v0
.end method
