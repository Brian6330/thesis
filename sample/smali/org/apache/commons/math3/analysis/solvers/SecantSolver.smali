.class public Lorg/apache/commons/math3/analysis/solvers/SecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SecantSolver.java"


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 70
    return-void
.end method


# virtual methods
.method protected final doSolve()D
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getMin()D

    move-result-wide v20

    .line 79
    .local v20, "x0":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getMax()D

    move-result-wide v22

    .line 80
    .local v22, "x1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v8

    .line 81
    .local v8, "f0":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v10

    .line 86
    .local v10, "f1":D
    const-wide/16 v24, 0x0

    cmpl-double v24, v8, v24

    if-nez v24, :cond_1

    move-wide/from16 v18, v20

    .line 130
    :cond_0
    :goto_0
    return-wide v18

    .line 89
    :cond_1
    const-wide/16 v24, 0x0

    cmpl-double v24, v10, v24

    if-nez v24, :cond_2

    move-wide/from16 v18, v22

    .line 90
    goto :goto_0

    .line 94
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->verifyBracketing(DD)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getFunctionValueAccuracy()D

    move-result-wide v12

    .line 98
    .local v12, "ftol":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getAbsoluteAccuracy()D

    move-result-wide v6

    .line 99
    .local v6, "atol":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getRelativeAccuracy()D

    move-result-wide v16

    .line 104
    .local v16, "rtol":D
    :cond_3
    sub-double v24, v22, v20

    mul-double v24, v24, v10

    sub-double v26, v10, v8

    div-double v24, v24, v26

    sub-double v18, v22, v24

    .line 105
    .local v18, "x":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v14

    .line 110
    .local v14, "fx":D
    const-wide/16 v24, 0x0

    cmpl-double v24, v14, v24

    if-eqz v24, :cond_0

    .line 115
    move-wide/from16 v20, v22

    .line 116
    move-wide v8, v10

    .line 117
    move-wide/from16 v22, v18

    .line 118
    move-wide v10, v14

    .line 123
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    cmpg-double v24, v24, v12

    if-gtz v24, :cond_4

    move-wide/from16 v18, v22

    .line 124
    goto :goto_0

    .line 129
    :cond_4
    sub-double v24, v22, v20

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    mul-double v26, v26, v16

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gez v24, :cond_3

    move-wide/from16 v18, v22

    .line 130
    goto :goto_0
.end method
