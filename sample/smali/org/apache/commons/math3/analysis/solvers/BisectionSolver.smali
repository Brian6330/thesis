.class public Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BisectionSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;-><init>(D)V

    .line 38
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 46
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 56
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getMin()D

    move-result-wide v12

    .line 65
    .local v12, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getMax()D

    move-result-wide v10

    .line 66
    .local v10, "max":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->verifyInterval(DD)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    .line 73
    .local v2, "absoluteAccuracy":D
    :cond_0
    invoke-static {v12, v13, v10, v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v8

    .line 74
    .local v8, "m":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->computeObjectiveValue(D)D

    move-result-wide v6

    .line 75
    .local v6, "fmin":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->computeObjectiveValue(D)D

    move-result-wide v4

    .line 77
    .local v4, "fm":D
    mul-double v14, v4, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 79
    move-wide v12, v8

    .line 85
    :goto_0
    sub-double v14, v10, v12

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v2

    if-gtz v14, :cond_0

    .line 86
    invoke-static {v12, v13, v10, v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v8

    .line 87
    return-wide v8

    .line 82
    :cond_1
    move-wide v10, v8

    goto :goto_0
.end method
