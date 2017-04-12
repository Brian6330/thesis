.class public Lorg/apache/commons/math3/linear/SymmLQ;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SymmLQ$State;
    }
.end annotation


# static fields
.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final THRESHOLD:Ljava/lang/String; = "threshold"

.field private static final VECTOR:Ljava/lang/String; = "vector"

.field private static final VECTOR1:Ljava/lang/String; = "vector1"

.field private static final VECTOR2:Ljava/lang/String; = "vector2"


# instance fields
.field private final check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0
    .param p1, "maxIterations"    # I
    .param p2, "delta"    # D
    .param p4, "check"    # Z

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 872
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 873
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    .line 874
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/commons/math3/util/IterationManager;
    .param p2, "delta"    # D
    .param p4, "check"    # Z

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 890
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 891
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    .line 892
    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .prologue
    .line 920
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 921
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 922
    .local v4, "x":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 995
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 9
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "goodb"    # Z
    .param p5, "shift"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 972
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .local v4, "x":Lorg/apache/commons/math3/linear/RealVector;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    .line 973
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1010
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1011
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1012
    .local v4, "x":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 1013
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1077
    const/4 v2, 0x0

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "goodb"    # Z
    .param p4, "shift"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1057
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1058
    .local v4, "x":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 1098
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 14
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p5, "goodb"    # Z
    .param p6, "shift"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/SymmLQ;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1152
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SymmLQ;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v13

    .line 1154
    .local v13, "manager":Lorg/apache/commons/math3/util/IterationManager;
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 1155
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1158
    new-instance v3, Lorg/apache/commons/math3/linear/SymmLQ$State;

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    iget-boolean v12, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lorg/apache/commons/math3/linear/SymmLQ$State;-><init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V

    .line 1159
    .local v3, "state":Lorg/apache/commons/math3/linear/SymmLQ$State;
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->init()V

    .line 1160
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1162
    new-instance v5, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v10

    move-object v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1167
    .local v5, "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->bEqualsNullVector()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1169
    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1201
    :goto_0
    return-object p4

    .line 1174
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->betaEqualsZero()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 1175
    .local v2, "earlyStop":Z
    :goto_1
    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1176
    if-nez v2, :cond_3

    .line 1178
    :cond_2
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1179
    new-instance v5, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    .end local v5    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v10

    move-object v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1184
    .restart local v5    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1185
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->update()V

    .line 1186
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1187
    new-instance v5, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    .end local v5    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v10

    move-object v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1192
    .restart local v5    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1193
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1195
    :cond_3
    new-instance v5, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    .end local v5    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v10

    move-object v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1200
    .restart local v5    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    .line 1174
    .end local v2    # "earlyStop":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 1219
    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
