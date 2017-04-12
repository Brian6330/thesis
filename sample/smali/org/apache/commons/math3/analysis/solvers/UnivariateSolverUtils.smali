.class public Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;
.super Ljava/lang/Object;
.source "UnivariateSolverUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)[D
    .locals 13
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "initial"    # D
    .param p3, "lowerBound"    # D
    .param p5, "upperBound"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 202
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const v12, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D

    move-result-object v0

    return-object v0
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D
    .locals 27
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "initial"    # D
    .param p3, "lowerBound"    # D
    .param p5, "upperBound"    # D
    .param p7, "q"    # D
    .param p9, "r"    # D
    .param p11, "maximumIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-direct {v2, v3, v15}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 301
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p7, v2

    if-gtz v2, :cond_1

    .line 302
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 304
    :cond_1
    if-gtz p11, :cond_2

    .line 305
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_MAX_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v3, v15}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    :cond_2
    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    .line 307
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifySequence(DDD)V

    .line 310
    move-wide/from16 v4, p1

    .line 311
    .local v4, "a":D
    move-wide/from16 v6, p1

    .line 312
    .local v6, "b":D
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 313
    .local v8, "fa":D
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    .line 314
    .local v10, "fb":D
    const-wide/16 v12, 0x0

    .line 316
    .local v12, "delta":D
    const/4 v14, 0x0

    .line 317
    .local v14, "numIterations":I
    :goto_0
    move/from16 v0, p11

    if-ge v14, v0, :cond_7

    cmpl-double v2, v4, p3

    if-gtz v2, :cond_3

    cmpg-double v2, v6, p5

    if-gez v2, :cond_7

    .line 320
    :cond_3
    move-wide/from16 v16, v4

    .line 321
    .local v16, "previousA":D
    move-wide/from16 v20, v8

    .line 322
    .local v20, "previousFa":D
    move-wide/from16 v18, v6

    .line 323
    .local v18, "previousB":D
    move-wide/from16 v22, v10

    .line 325
    .local v22, "previousFb":D
    mul-double v2, p9, v12

    add-double v12, v2, p7

    .line 326
    sub-double v2, p1, v12

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 327
    add-double v2, p1, v12

    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 328
    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v8

    .line 329
    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v10

    .line 331
    if-nez v14, :cond_4

    .line 334
    mul-double v2, v8, v10

    const-wide/16 v24, 0x0

    cmpg-double v2, v2, v24

    if-gtz v2, :cond_6

    .line 336
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide v6, v2, v3

    .line 346
    :goto_1
    return-object v2

    .line 341
    :cond_4
    mul-double v2, v8, v20

    const-wide/16 v24, 0x0

    cmpg-double v2, v2, v24

    if-gtz v2, :cond_5

    .line 343
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide v16, v2, v3

    goto :goto_1

    .line 344
    :cond_5
    mul-double v2, v10, v22

    const-wide/16 v24, 0x0

    cmpg-double v2, v2, v24

    if-gtz v2, :cond_6

    .line 346
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v18, v2, v3

    const/4 v3, 0x1

    aput-wide v6, v2, v3

    goto :goto_1

    .line 318
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 353
    .end local v16    # "previousA":D
    .end local v18    # "previousB":D
    .end local v20    # "previousFa":D
    .end local v22    # "previousFb":D
    :cond_7
    new-instance v3, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v3
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDI)[D
    .locals 13
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "initial"    # D
    .param p3, "lowerBound"    # D
    .param p5, "upperBound"    # D
    .param p7, "maximumIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 229
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v12, p7

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D

    move-result-object v0

    return-object v0
.end method

.method public static forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 25
    .param p0, "maxEval"    # I
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "baseRoot"    # D
    .param p5, "min"    # D
    .param p7, "max"    # D
    .param p9, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver",
            "<",
            "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
            ">;DDD",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    sget-object v3, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v0, p9

    if-ne v0, v3, :cond_0

    .line 123
    .end local p3    # "baseRoot":D
    :goto_0
    return-wide p3

    .line 112
    .restart local p3    # "baseRoot":D
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v10

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v12

    mul-double v12, v12, p3

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v22

    .line 114
    .local v22, "step":D
    sub-double v10, p3, v22

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 115
    .local v6, "xLo":D
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v16

    .line 116
    .local v16, "fLo":D
    add-double v10, p3, v22

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    .line 117
    .local v8, "xHi":D
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v18

    .line 118
    .local v18, "fHi":D
    add-int/lit8 v4, p0, -0x2

    .line 119
    .local v4, "remainingEval":I
    :cond_1
    :goto_1
    if-lez v4, :cond_a

    .line 121
    const-wide/16 v10, 0x0

    cmpl-double v3, v16, v10

    if-ltz v3, :cond_2

    const-wide/16 v10, 0x0

    cmpg-double v3, v18, v10

    if-lez v3, :cond_3

    :cond_2
    const-wide/16 v10, 0x0

    cmpg-double v3, v16, v10

    if-gtz v3, :cond_4

    const-wide/16 v10, 0x0

    cmpl-double v3, v18, v10

    if-ltz v3, :cond_4

    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p9

    .line 123
    invoke-interface/range {v3 .. v12}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide p3

    goto :goto_0

    .line 127
    :cond_4
    const/16 v21, 0x0

    .line 128
    .local v21, "changeLo":Z
    const/4 v2, 0x0

    .line 129
    .local v2, "changeHi":Z
    cmpg-double v3, v16, v18

    if-gez v3, :cond_7

    .line 131
    const-wide/16 v10, 0x0

    cmpl-double v3, v16, v10

    if-ltz v3, :cond_6

    .line 132
    const/16 v21, 0x1

    .line 150
    :goto_2
    if-eqz v21, :cond_5

    .line 151
    sub-double v10, v6, v22

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 152
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v16

    .line 153
    add-int/lit8 v4, v4, -0x1

    .line 157
    :cond_5
    if-eqz v2, :cond_1

    .line 158
    add-double v10, v8, v22

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    .line 159
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v18

    .line 160
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 134
    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    .line 136
    :cond_7
    cmpl-double v3, v16, v18

    if-lez v3, :cond_9

    .line 138
    const-wide/16 v10, 0x0

    cmpg-double v3, v16, v10

    if-gtz v3, :cond_8

    .line 139
    const/16 v21, 0x1

    goto :goto_2

    .line 141
    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    .line 145
    :cond_9
    const/16 v21, 0x1

    .line 146
    const/4 v2, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "changeHi":Z
    .end local v21    # "changeLo":Z
    :cond_a
    new-instance v10, Lorg/apache/commons/math3/exception/NoBracketingException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    sub-int v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v20, v3

    const/4 v3, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v20, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v20, v3

    const/4 v3, 0x3

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v20, v3

    const/4 v3, 0x4

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v20, v3

    move-wide v12, v6

    move-wide v14, v8

    invoke-direct/range {v10 .. v20}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;DDDD[Ljava/lang/Object;)V

    throw v10
.end method

.method public static isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z
    .locals 9
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 384
    if-nez p0, :cond_0

    .line 385
    new-instance v5, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v5, v6, v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 387
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    .line 388
    .local v2, "fLo":D
    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    .line 389
    .local v0, "fHi":D
    cmpl-double v5, v2, v6

    if-ltz v5, :cond_1

    cmpg-double v5, v0, v6

    if-lez v5, :cond_2

    :cond_1
    cmpg-double v5, v2, v6

    if-gtz v5, :cond_3

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public static isSequence(DDD)Z
    .locals 2
    .param p0, "start"    # D
    .param p2, "mid"    # D
    .param p4, "end"    # D

    .prologue
    .line 403
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    cmpg-double v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static midpoint(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 365
    add-double v0, p0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 9
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 55
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    .line 56
    .local v1, "solver":Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    const v2, 0x7fffffff

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 9
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "absoluteAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 80
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v1, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    .line 81
    .local v1, "solver":Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    const v2, 0x7fffffff

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static verifyBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 11
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 455
    if-nez p0, :cond_0

    .line 456
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 458
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 459
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    new-instance v1, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v1

    .line 464
    :cond_1
    return-void
.end method

.method public static verifyInterval(DD)V
    .locals 6
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 416
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 417
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 420
    :cond_0
    return-void
.end method

.method public static verifySequence(DDD)V
    .locals 0
    .param p0, "lower"    # D
    .param p2, "initial"    # D
    .param p4, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 436
    invoke-static {p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 437
    return-void
.end method
