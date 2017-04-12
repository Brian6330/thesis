.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver2.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;-><init>(D)V

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


# virtual methods
.method protected doSolve()D
    .locals 58
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMin()D

    move-result-wide v36

    .line 88
    .local v36, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMax()D

    move-result-wide v34

    .line 90
    .local v34, "max":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->verifyInterval(DD)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getRelativeAccuracy()D

    move-result-wide v42

    .line 93
    .local v42, "relativeAccuracy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getAbsoluteAccuracy()D

    move-result-wide v18

    .line 94
    .local v18, "absoluteAccuracy":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getFunctionValueAccuracy()D

    move-result-wide v32

    .line 100
    .local v32, "functionValueAccuracy":D
    move-wide/from16 v8, v36

    .line 101
    .local v8, "x0":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v12

    .line 102
    .local v12, "y0":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v32

    if-gez v6, :cond_1

    move-wide v10, v8

    .line 155
    :cond_0
    :goto_0
    return-wide v10

    .line 105
    :cond_1
    move-wide/from16 v10, v34

    .line 106
    .local v10, "x1":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v14

    .line 107
    .local v14, "y1":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v32

    if-ltz v6, :cond_0

    .line 111
    mul-double v6, v12, v14

    const-wide/16 v54, 0x0

    cmpl-double v6, v6, v54

    if-lez v6, :cond_2

    .line 112
    new-instance v7, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-direct/range {v7 .. v15}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v7

    .line 115
    :cond_2
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double v54, v8, v10

    mul-double v48, v6, v54

    .line 116
    .local v48, "x2":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v52

    .line 118
    .local v52, "y2":D
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 121
    .local v38, "oldx":D
    :goto_1
    sub-double v6, v48, v10

    sub-double v54, v10, v8

    div-double v40, v6, v54

    .line 122
    .local v40, "q":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v40

    mul-double/2addr v6, v14

    sub-double v6, v52, v6

    mul-double v54, v40, v12

    add-double v6, v6, v54

    mul-double v16, v40, v6

    .line 123
    .local v16, "a":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v40

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v54

    mul-double v6, v6, v52

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v40

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v56, v56, v40

    mul-double v54, v54, v56

    mul-double v54, v54, v14

    sub-double v6, v6, v54

    mul-double v54, v40, v40

    mul-double v54, v54, v12

    add-double v20, v6, v54

    .line 124
    .local v20, "b":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v40

    mul-double v22, v6, v52

    .line 125
    .local v22, "c":D
    mul-double v6, v20, v20

    const-wide/high16 v54, 0x4010000000000000L    # 4.0

    mul-double v54, v54, v16

    mul-double v54, v54, v22

    sub-double v24, v6, v54

    .line 128
    .local v24, "delta":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v24, v6

    if-ltz v6, :cond_5

    .line 130
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    add-double v30, v20, v6

    .line 131
    .local v30, "dplus":D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v28, v20, v6

    .line 132
    .local v28, "dminus":D
    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    cmpl-double v6, v6, v54

    if-lez v6, :cond_4

    move-wide/from16 v26, v30

    .line 137
    .end local v28    # "dminus":D
    .end local v30    # "dplus":D
    .local v26, "denominator":D
    :goto_2
    const-wide/16 v6, 0x0

    cmpl-double v6, v26, v6

    if-eqz v6, :cond_6

    .line 138
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v22

    sub-double v54, v48, v10

    mul-double v6, v6, v54

    div-double v6, v6, v26

    sub-double v46, v48, v6

    .line 141
    .local v46, "x":D
    :goto_3
    cmpl-double v6, v46, v10

    if-eqz v6, :cond_3

    cmpl-double v6, v46, v48

    if-nez v6, :cond_7

    .line 142
    :cond_3
    add-double v46, v46, v18

    goto :goto_3

    .end local v26    # "denominator":D
    .end local v46    # "x":D
    .restart local v28    # "dminus":D
    .restart local v30    # "dplus":D
    :cond_4
    move-wide/from16 v26, v28

    .line 132
    goto :goto_2

    .line 135
    .end local v28    # "dminus":D
    .end local v30    # "dplus":D
    :cond_5
    mul-double v6, v20, v20

    sub-double v6, v6, v24

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    .restart local v26    # "denominator":D
    goto :goto_2

    .line 146
    :cond_6
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath;->random()D

    move-result-wide v6

    sub-double v54, v34, v36

    mul-double v6, v6, v54

    add-double v46, v36, v6

    .line 147
    .restart local v46    # "x":D
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 149
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v50

    .line 152
    .local v50, "y":D
    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    mul-double v6, v6, v42

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v44

    .line 153
    .local v44, "tolerance":D
    sub-double v6, v46, v38

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v44

    if-lez v6, :cond_8

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v32

    if-gtz v6, :cond_9

    :cond_8
    move-wide/from16 v10, v46

    .line 155
    goto/16 :goto_0

    .line 159
    :cond_9
    move-wide v8, v10

    .line 160
    move-wide v12, v14

    .line 161
    move-wide/from16 v10, v48

    .line 162
    move-wide/from16 v14, v52

    .line 163
    move-wide/from16 v48, v46

    .line 164
    move-wide/from16 v52, v50

    .line 165
    move-wide/from16 v38, v46

    .line 166
    goto/16 :goto_1
.end method
