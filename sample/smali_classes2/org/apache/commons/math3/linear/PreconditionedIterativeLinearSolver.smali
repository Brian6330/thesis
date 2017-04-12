.class public abstract Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.super Lorg/apache/commons/math3/linear/IterativeLinearSolver;
.source "PreconditionedIterativeLinearSolver.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxIterations"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/IterativeLinearSolver;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/commons/math3/util/IterationManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/IterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 71
    return-void
.end method

.method protected static checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p0, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0, p2, p3}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareOperatorException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareOperatorException;-><init>(II)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 149
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 178
    .local v0, "x":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 107
    .local v0, "x":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public abstract solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
