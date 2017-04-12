.class public Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;
.source "NewtonSolver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;-><init>(D)V

    .line 42
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;-><init>(D)V

    .line 50
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;->getStartValue()D

    move-result-wide v2

    .line 79
    .local v2, "startValue":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    .line 81
    .local v0, "absoluteAccuracy":D
    move-wide v4, v2

    .line 84
    .local v4, "x0":D
    :goto_0
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;->computeObjectiveValue(D)D

    move-result-wide v8

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;->computeDerivativeObjectiveValue(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    sub-double v6, v4, v8

    .line 85
    .local v6, "x1":D
    sub-double v8, v6, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gtz v8, :cond_0

    .line 86
    return-wide v6

    .line 89
    :cond_0
    move-wide v4, v6

    goto :goto_0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DD)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v0

    invoke-super {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v0

    return-wide v0
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

    check-cast v3, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;->solve(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DD)D

    move-result-wide v0

    return-wide v0
.end method
