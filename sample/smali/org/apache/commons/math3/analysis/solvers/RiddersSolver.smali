.class public Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "RiddersSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;-><init>(D)V

    .line 43
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 51
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 61
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getMin()D

    move-result-wide v14

    .line 71
    .local v14, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getMax()D

    move-result-wide v12

    .line 75
    .local v12, "max":D
    move-wide/from16 v24, v14

    .line 76
    .local v24, "x1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v32

    .line 77
    .local v32, "y1":D
    move-wide/from16 v26, v12

    .line 78
    .local v26, "x2":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v34

    .line 81
    .local v34, "y2":D
    const-wide/16 v38, 0x0

    cmpl-double v38, v32, v38

    if-nez v38, :cond_1

    move-wide/from16 v22, v14

    .line 113
    :cond_0
    :goto_0
    return-wide v22

    .line 84
    :cond_1
    const-wide/16 v38, 0x0

    cmpl-double v38, v34, v38

    if-nez v38, :cond_2

    move-wide/from16 v22, v12

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->verifyBracketing(DD)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    .line 90
    .local v4, "absoluteAccuracy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getFunctionValueAccuracy()D

    move-result-wide v10

    .line 91
    .local v10, "functionValueAccuracy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getRelativeAccuracy()D

    move-result-wide v18

    .line 93
    .local v18, "relativeAccuracy":D
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 96
    .local v16, "oldx":D
    :goto_1
    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    add-double v40, v24, v26

    mul-double v28, v38, v40

    .line 97
    .local v28, "x3":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v36

    .line 98
    .local v36, "y3":D
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    cmpg-double v38, v38, v10

    if-gtz v38, :cond_3

    move-wide/from16 v22, v28

    .line 99
    goto :goto_0

    .line 101
    :cond_3
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    mul-double v40, v32, v34

    mul-double v42, v36, v36

    div-double v40, v40, v42

    sub-double v8, v38, v40

    .line 102
    .local v8, "delta":D
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v40, v28, v24

    mul-double v38, v38, v40

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v40

    div-double v6, v38, v40

    .line 104
    .local v6, "correction":D
    sub-double v22, v28, v6

    .line 105
    .local v22, "x":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v30

    .line 108
    .local v30, "y":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    mul-double v38, v38, v18

    move-wide/from16 v0, v38

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 109
    .local v20, "tolerance":D
    sub-double v38, v22, v16

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    cmpg-double v38, v38, v20

    if-lez v38, :cond_0

    .line 112
    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    cmpg-double v38, v38, v10

    if-lez v38, :cond_0

    .line 118
    const-wide/16 v38, 0x0

    cmpl-double v38, v6, v38

    if-lez v38, :cond_5

    .line 119
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v38

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v40

    add-double v38, v38, v40

    const-wide/16 v40, 0x0

    cmpl-double v38, v38, v40

    if-nez v38, :cond_4

    .line 120
    move-wide/from16 v26, v22

    .line 121
    move-wide/from16 v34, v30

    .line 139
    :goto_2
    move-wide/from16 v16, v22

    .line 140
    goto :goto_1

    .line 123
    :cond_4
    move-wide/from16 v24, v22

    .line 124
    move-wide/from16 v26, v28

    .line 125
    move-wide/from16 v32, v30

    .line 126
    move-wide/from16 v34, v36

    goto :goto_2

    .line 129
    :cond_5
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v38

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v40

    add-double v38, v38, v40

    const-wide/16 v40, 0x0

    cmpl-double v38, v38, v40

    if-nez v38, :cond_6

    .line 130
    move-wide/from16 v24, v22

    .line 131
    move-wide/from16 v32, v30

    goto :goto_2

    .line 133
    :cond_6
    move-wide/from16 v24, v28

    .line 134
    move-wide/from16 v26, v22

    .line 135
    move-wide/from16 v32, v36

    .line 136
    move-wide/from16 v34, v30

    goto :goto_2
.end method
