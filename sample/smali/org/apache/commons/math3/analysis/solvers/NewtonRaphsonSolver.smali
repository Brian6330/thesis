.class public Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.source "NewtonRaphsonSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;-><init>(D)V

    .line 41
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;-><init>(D)V

    .line 49
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->getStartValue()D

    move-result-wide v2

    .line 78
    .local v2, "startValue":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    .line 80
    .local v0, "absoluteAccuracy":D
    move-wide v4, v2

    .line 83
    .local v4, "x0":D
    :goto_0
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v8

    .line 84
    .local v8, "y0":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    new-array v9, v14, [I

    const/4 v12, 0x0

    aput v14, v9, v12

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v12

    div-double/2addr v10, v12

    sub-double v6, v4, v10

    .line 85
    .local v6, "x1":D
    sub-double v10, v6, v4

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpg-double v9, v10, v0

    if-gtz v9, :cond_0

    .line 86
    return-wide v6

    .line 89
    :cond_0
    move-wide v4, v6

    .line 90
    goto :goto_0
.end method

.method public bridge synthetic solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 9
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 32
    move-object v3, p2

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->solve(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DD)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v0

    invoke-super {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v0

    return-wide v0
.end method
