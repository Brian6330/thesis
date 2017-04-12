.class public Lorg/apache/commons/math3/analysis/solvers/BrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BrentSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    .line 56
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 64
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 74
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 87
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 88
    return-void
.end method

.method private brent(DDDD)D
    .locals 43
    .param p1, "lo"    # D
    .param p3, "hi"    # D
    .param p5, "fLo"    # D
    .param p7, "fHi"    # D

    .prologue
    .line 154
    move-wide/from16 v4, p1

    .line 155
    .local v4, "a":D
    move-wide/from16 v16, p5

    .line 156
    .local v16, "fa":D
    move-wide/from16 v6, p3

    .line 157
    .local v6, "b":D
    move-wide/from16 v18, p7

    .line 158
    .local v18, "fb":D
    move-wide v8, v4

    .line 159
    .local v8, "c":D
    move-wide/from16 v20, v16

    .line 160
    .local v20, "fc":D
    sub-double v10, v6, v4

    .line 161
    .local v10, "d":D
    move-wide v12, v10

    .line 163
    .local v12, "e":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getAbsoluteAccuracy()D

    move-result-wide v32

    .line 164
    .local v32, "t":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getRelativeAccuracy()D

    move-result-wide v14

    .line 167
    .local v14, "eps":D
    :cond_0
    :goto_0
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    cmpg-double v36, v36, v38

    if-gez v36, :cond_1

    .line 168
    move-wide v4, v6

    .line 169
    move-wide v6, v8

    .line 170
    move-wide v8, v4

    .line 171
    move-wide/from16 v16, v18

    .line 172
    move-wide/from16 v18, v20

    .line 173
    move-wide/from16 v20, v16

    .line 176
    :cond_1
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v14

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v34, v36, v32

    .line 177
    .local v34, "tol":D
    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    sub-double v38, v8, v6

    mul-double v22, v36, v38

    .line 179
    .local v22, "m":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpg-double v36, v36, v34

    if-lez v36, :cond_2

    const-wide/16 v36, 0x0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 181
    :cond_2
    return-wide v6

    .line 183
    :cond_3
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpg-double v36, v36, v34

    if-ltz v36, :cond_4

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    cmpg-double v36, v36, v38

    if-gtz v36, :cond_7

    .line 186
    :cond_4
    move-wide/from16 v10, v22

    .line 187
    move-wide v12, v10

    .line 224
    :goto_1
    move-wide v4, v6

    .line 225
    move-wide/from16 v16, v18

    .line 227
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpl-double v36, v36, v34

    if-lez v36, :cond_c

    .line 228
    add-double/2addr v6, v10

    .line 234
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 235
    const-wide/16 v36, 0x0

    cmpl-double v36, v18, v36

    if-lez v36, :cond_5

    const-wide/16 v36, 0x0

    cmpl-double v36, v20, v36

    if-gtz v36, :cond_6

    :cond_5
    const-wide/16 v36, 0x0

    cmpg-double v36, v18, v36

    if-gtz v36, :cond_0

    const-wide/16 v36, 0x0

    cmpg-double v36, v20, v36

    if-gtz v36, :cond_0

    .line 237
    :cond_6
    move-wide v8, v4

    .line 238
    move-wide/from16 v20, v16

    .line 239
    sub-double v10, v6, v4

    .line 240
    move-wide v12, v10

    goto/16 :goto_0

    .line 189
    :cond_7
    div-double v30, v18, v16

    .line 195
    .local v30, "s":D
    cmpl-double v36, v4, v8

    if-nez v36, :cond_9

    .line 197
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v22

    mul-double v24, v36, v30

    .line 198
    .local v24, "p":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v26, v36, v30

    .line 206
    .local v26, "q":D
    :goto_3
    const-wide/16 v36, 0x0

    cmpl-double v36, v24, v36

    if-lez v36, :cond_a

    .line 207
    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    .line 211
    :goto_4
    move-wide/from16 v30, v12

    .line 212
    move-wide v12, v10

    .line 213
    const-wide/high16 v36, 0x3ff8000000000000L    # 1.5

    mul-double v36, v36, v22

    mul-double v36, v36, v26

    mul-double v38, v34, v26

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    sub-double v36, v36, v38

    cmpl-double v36, v24, v36

    if-gez v36, :cond_8

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    mul-double v36, v36, v30

    mul-double v36, v36, v26

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpl-double v36, v24, v36

    if-ltz v36, :cond_b

    .line 218
    :cond_8
    move-wide/from16 v10, v22

    .line 219
    move-wide v12, v10

    goto :goto_1

    .line 201
    .end local v24    # "p":D
    .end local v26    # "q":D
    :cond_9
    div-double v26, v16, v20

    .line 202
    .restart local v26    # "q":D
    div-double v28, v18, v20

    .line 203
    .local v28, "r":D
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v22

    mul-double v36, v36, v26

    sub-double v38, v26, v28

    mul-double v36, v36, v38

    sub-double v38, v6, v4

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v40, v28, v40

    mul-double v38, v38, v40

    sub-double v36, v36, v38

    mul-double v24, v30, v36

    .line 204
    .restart local v24    # "p":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v36, v26, v36

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v38, v28, v38

    mul-double v36, v36, v38

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v38, v30, v38

    mul-double v26, v36, v38

    goto :goto_3

    .line 209
    .end local v28    # "r":D
    :cond_a
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    goto :goto_4

    .line 221
    :cond_b
    div-double v10, v24, v26

    goto/16 :goto_1

    .line 229
    .end local v24    # "p":D
    .end local v26    # "q":D
    .end local v30    # "s":D
    :cond_c
    const-wide/16 v36, 0x0

    cmpl-double v36, v22, v36

    if-lez v36, :cond_d

    .line 230
    add-double v6, v6, v34

    goto/16 :goto_2

    .line 232
    :cond_d
    sub-double v6, v6, v34

    goto/16 :goto_2
.end method


# virtual methods
.method protected doSolve()D
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getMin()D

    move-result-wide v4

    .line 99
    .local v4, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getMax()D

    move-result-wide v8

    .line 100
    .local v8, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getStartValue()D

    move-result-wide v6

    .line 101
    .local v6, "initial":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getFunctionValueAccuracy()D

    move-result-wide v30

    .local v30, "functionValueAccuracy":D
    move-object/from16 v3, p0

    .line 103
    invoke-virtual/range {v3 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->verifySequence(DDD)V

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 107
    .local v18, "yInitial":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gtz v2, :cond_0

    .line 130
    .end local v6    # "initial":D
    :goto_0
    return-wide v6

    .line 112
    .restart local v6    # "initial":D
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 113
    .local v16, "yMin":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gtz v2, :cond_1

    move-wide v6, v4

    .line 114
    goto :goto_0

    .line 118
    :cond_1
    mul-double v2, v18, v16

    const-wide/16 v10, 0x0

    cmpg-double v2, v2, v10

    if-gez v2, :cond_2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide v14, v6

    .line 119
    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->brent(DDDD)D

    move-result-wide v6

    goto :goto_0

    .line 123
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v28

    .line 124
    .local v28, "yMax":D
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gtz v2, :cond_3

    move-wide v6, v8

    .line 125
    goto :goto_0

    .line 129
    :cond_3
    mul-double v2, v18, v28

    const-wide/16 v10, 0x0

    cmpg-double v2, v2, v10

    if-gez v2, :cond_4

    move-object/from16 v21, p0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v18

    .line 130
    invoke-direct/range {v21 .. v29}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->brent(DDDD)D

    move-result-wide v6

    goto :goto_0

    .line 133
    :cond_4
    new-instance v21, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    move-wide/from16 v26, v16

    invoke-direct/range {v21 .. v29}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v21
.end method
