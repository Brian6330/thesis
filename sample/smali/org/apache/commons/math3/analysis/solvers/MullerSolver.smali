.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;-><init>(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 67
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 77
    return-void
.end method

.method private solve(DDDD)D
    .locals 57
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "fMin"    # D
    .param p7, "fMax"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getRelativeAccuracy()D

    move-result-wide v28

    .line 133
    .local v28, "relativeAccuracy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getAbsoluteAccuracy()D

    move-result-wide v12

    .line 134
    .local v12, "absoluteAccuracy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getFunctionValueAccuracy()D

    move-result-wide v24

    .line 141
    .local v24, "functionValueAccuracy":D
    move-wide/from16 v6, p1

    .line 142
    .local v6, "x0":D
    move-wide/from16 v42, p5

    .line 143
    .local v42, "y0":D
    move-wide/from16 v10, p3

    .line 144
    .local v10, "x2":D
    move-wide/from16 v46, p7

    .line 145
    .local v46, "y2":D
    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    add-double v52, v6, v10

    mul-double v34, v50, v52

    .line 146
    .local v34, "x1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v44

    .line 148
    .local v44, "y1":D
    const-wide/high16 v26, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 154
    .local v26, "oldx":D
    :goto_0
    sub-double v50, v44, v42

    sub-double v52, v34, v6

    div-double v16, v50, v52

    .line 155
    .local v16, "d01":D
    sub-double v50, v46, v44

    sub-double v52, v10, v34

    div-double v20, v50, v52

    .line 156
    .local v20, "d12":D
    sub-double v50, v20, v16

    sub-double v52, v10, v6

    div-double v18, v50, v52

    .line 157
    .local v18, "d012":D
    sub-double v50, v34, v6

    mul-double v50, v50, v18

    add-double v14, v16, v50

    .line 158
    .local v14, "c1":D
    mul-double v50, v14, v14

    const-wide/high16 v52, 0x4010000000000000L    # 4.0

    mul-double v52, v52, v44

    mul-double v52, v52, v18

    sub-double v22, v50, v52

    .line 159
    .local v22, "delta":D
    const-wide/high16 v50, -0x4000000000000000L    # -2.0

    mul-double v50, v50, v44

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v52

    add-double v52, v52, v14

    div-double v50, v50, v52

    add-double v8, v34, v50

    .line 160
    .local v8, "xplus":D
    const-wide/high16 v50, -0x4000000000000000L    # -2.0

    mul-double v50, v50, v44

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v52

    sub-double v52, v14, v52

    div-double v50, v50, v52

    add-double v38, v34, v50

    .local v38, "xminus":D
    move-object/from16 v5, p0

    .line 163
    invoke-virtual/range {v5 .. v11}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->isSequence(DDD)Z

    move-result v5

    if-eqz v5, :cond_1

    move-wide/from16 v32, v8

    .line 164
    .local v32, "x":D
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v40

    .line 167
    .local v40, "y":D
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v50, v50, v28

    move-wide/from16 v0, v50

    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v30

    .line 168
    .local v30, "tolerance":D
    sub-double v50, v32, v26

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    cmpg-double v5, v50, v30

    if-lez v5, :cond_0

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    cmpg-double v5, v50, v24

    if-gtz v5, :cond_2

    .line 170
    :cond_0
    return-wide v32

    .end local v30    # "tolerance":D
    .end local v32    # "x":D
    .end local v40    # "y":D
    :cond_1
    move-wide/from16 v32, v38

    .line 163
    goto :goto_1

    .line 177
    .restart local v30    # "tolerance":D
    .restart local v32    # "x":D
    .restart local v40    # "y":D
    :cond_2
    cmpg-double v5, v32, v34

    if-gez v5, :cond_3

    sub-double v50, v34, v6

    const-wide v52, 0x3fee666666666666L    # 0.95

    sub-double v54, v10, v6

    mul-double v52, v52, v54

    cmpl-double v5, v50, v52

    if-gtz v5, :cond_5

    :cond_3
    cmpl-double v5, v32, v34

    if-lez v5, :cond_4

    sub-double v50, v10, v34

    const-wide v52, 0x3fee666666666666L    # 0.95

    sub-double v54, v10, v6

    mul-double v52, v52, v54

    cmpl-double v5, v50, v52

    if-gtz v5, :cond_5

    :cond_4
    cmpl-double v5, v32, v34

    if-nez v5, :cond_6

    :cond_5
    const/4 v4, 0x1

    .line 181
    .local v4, "bisect":Z
    :goto_2
    if-nez v4, :cond_b

    .line 182
    cmpg-double v5, v32, v34

    if-gez v5, :cond_7

    .line 183
    :goto_3
    cmpg-double v5, v32, v34

    if-gez v5, :cond_8

    .line 184
    :goto_4
    cmpl-double v5, v32, v34

    if-lez v5, :cond_9

    .line 185
    :goto_5
    cmpl-double v5, v32, v34

    if-lez v5, :cond_a

    .line 186
    :goto_6
    move-wide/from16 v34, v32

    move-wide/from16 v44, v40

    .line 187
    move-wide/from16 v26, v32

    goto/16 :goto_0

    .line 177
    .end local v4    # "bisect":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .restart local v4    # "bisect":Z
    :cond_7
    move-wide/from16 v6, v34

    .line 182
    goto :goto_3

    :cond_8
    move-wide/from16 v42, v44

    .line 183
    goto :goto_4

    :cond_9
    move-wide/from16 v10, v34

    .line 184
    goto :goto_5

    :cond_a
    move-wide/from16 v46, v44

    .line 185
    goto :goto_6

    .line 189
    :cond_b
    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    add-double v52, v6, v10

    mul-double v36, v50, v52

    .line 190
    .local v36, "xm":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v48

    .line 191
    .local v48, "ym":D
    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v50

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v52

    add-double v50, v50, v52

    const-wide/16 v52, 0x0

    cmpl-double v5, v50, v52

    if-nez v5, :cond_c

    .line 192
    move-wide/from16 v10, v36

    move-wide/from16 v46, v48

    .line 196
    :goto_7
    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    add-double v52, v6, v10

    mul-double v34, v50, v52

    .line 197
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v44

    .line 198
    const-wide/high16 v26, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 194
    :cond_c
    move-wide/from16 v6, v36

    move-wide/from16 v42, v48

    goto :goto_7
.end method


# virtual methods
.method protected doSolve()D
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getMin()D

    move-result-wide v4

    .line 88
    .local v4, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getMax()D

    move-result-wide v8

    .line 89
    .local v8, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getStartValue()D

    move-result-wide v6

    .line 91
    .local v6, "initial":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getFunctionValueAccuracy()D

    move-result-wide v30

    .local v30, "functionValueAccuracy":D
    move-object/from16 v3, p0

    .line 93
    invoke-virtual/range {v3 .. v9}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->verifySequence(DDD)V

    .line 96
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 97
    .local v16, "fMin":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gez v2, :cond_0

    .line 114
    .end local v4    # "min":D
    :goto_0
    return-wide v4

    .line 100
    .restart local v4    # "min":D
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v28

    .line 101
    .local v28, "fMax":D
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gez v2, :cond_1

    move-wide v4, v8

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 105
    .local v18, "fInitial":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gez v2, :cond_2

    move-wide v4, v6

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->verifyBracketing(DD)V

    .line 111
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->isBracketing(DD)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide v14, v6

    .line 112
    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->solve(DDDD)D

    move-result-wide v4

    goto :goto_0

    :cond_3
    move-object/from16 v21, p0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v18

    .line 114
    invoke-direct/range {v21 .. v29}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->solve(DDDD)D

    move-result-wide v4

    goto :goto_0
.end method
