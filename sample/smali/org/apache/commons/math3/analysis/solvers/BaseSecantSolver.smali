.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BaseSecantSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;,
        Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver",
        "<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;


# direct methods
.method protected constructor <init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D
    .param p7, "method"    # Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .prologue
    .line 100
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 101
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 102
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 103
    return-void
.end method

.method protected constructor <init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "method"    # Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 84
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 85
    iput-object p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 86
    return-void
.end method

.method protected constructor <init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D
    .param p3, "method"    # Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 69
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 70
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 71
    return-void
.end method


# virtual methods
.method protected final doSolve()D
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getMin()D

    move-result-wide v22

    .line 138
    .local v22, "x0":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getMax()D

    move-result-wide v24

    .line 139
    .local v24, "x1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v8

    .line 140
    .local v8, "f0":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v10

    .line 145
    .local v10, "f1":D
    const-wide/16 v26, 0x0

    cmpl-double v17, v8, v26

    if-nez v17, :cond_0

    move-wide/from16 v26, v22

    .line 254
    :goto_0
    return-wide v26

    .line 148
    :cond_0
    const-wide/16 v26, 0x0

    cmpl-double v17, v10, v26

    if-nez v17, :cond_1

    move-wide/from16 v26, v24

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->verifyBracketing(DD)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getFunctionValueAccuracy()D

    move-result-wide v12

    .line 157
    .local v12, "ftol":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getAbsoluteAccuracy()D

    move-result-wide v6

    .line 158
    .local v6, "atol":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getRelativeAccuracy()D

    move-result-wide v18

    .line 162
    .local v18, "rtol":D
    const/16 v16, 0x0

    .line 167
    .local v16, "inverted":Z
    :cond_2
    sub-double v26, v24, v22

    mul-double v26, v26, v10

    sub-double v28, v10, v8

    div-double v26, v26, v28

    sub-double v20, v24, v26

    .line 168
    .local v20, "x":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v14

    .line 173
    .local v14, "fx":D
    const-wide/16 v26, 0x0

    cmpl-double v17, v14, v26

    if-nez v17, :cond_3

    move-wide/from16 v26, v20

    .line 174
    goto :goto_0

    .line 178
    :cond_3
    mul-double v26, v10, v14

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_6

    .line 181
    move-wide/from16 v22, v24

    .line 182
    move-wide v8, v10

    .line 183
    if-nez v16, :cond_5

    const/16 v16, 0x1

    .line 205
    :cond_4
    :goto_1
    move-wide/from16 v24, v20

    .line 206
    move-wide v10, v14

    .line 211
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    cmpg-double v17, v26, v12

    if-gtz v17, :cond_7

    .line 212
    sget-object v17, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v26

    aget v17, v17, v26

    packed-switch v17, :pswitch_data_0

    .line 236
    new-instance v17, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct/range {v17 .. v17}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v17

    .line 183
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 185
    :cond_6
    sget-object v17, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ordinal()I

    move-result v26

    aget v17, v17, v26

    packed-switch v17, :pswitch_data_1

    .line 201
    new-instance v17, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct/range {v17 .. v17}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v17

    .line 187
    :pswitch_0
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v26

    .line 188
    goto :goto_1

    .line 190
    :pswitch_1
    add-double v26, v10, v14

    div-double v26, v10, v26

    mul-double v8, v8, v26

    .line 191
    goto :goto_1

    .line 195
    :pswitch_2
    cmpl-double v17, v20, v24

    if-nez v17, :cond_4

    .line 196
    new-instance v17, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct/range {v17 .. v17}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v17

    :pswitch_3
    move-wide/from16 v26, v24

    .line 214
    goto/16 :goto_0

    .line 216
    :pswitch_4
    if-eqz v16, :cond_7

    move-wide/from16 v26, v24

    .line 217
    goto/16 :goto_0

    .line 221
    :pswitch_5
    if-nez v16, :cond_7

    move-wide/from16 v26, v24

    .line 222
    goto/16 :goto_0

    .line 226
    :pswitch_6
    const-wide/16 v26, 0x0

    cmpg-double v17, v10, v26

    if-gtz v17, :cond_7

    move-wide/from16 v26, v24

    .line 227
    goto/16 :goto_0

    .line 231
    :pswitch_7
    const-wide/16 v26, 0x0

    cmpl-double v17, v10, v26

    if-ltz v17, :cond_7

    move-wide/from16 v26, v24

    .line 232
    goto/16 :goto_0

    .line 242
    :cond_7
    sub-double v26, v24, v22

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    mul-double v28, v28, v18

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    cmpg-double v17, v26, v28

    if-gez v17, :cond_2

    .line 244
    sget-object v17, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v26

    aget v17, v17, v26

    packed-switch v17, :pswitch_data_2

    .line 256
    new-instance v17, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct/range {v17 .. v17}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v17

    :pswitch_8
    move-wide/from16 v26, v24

    .line 246
    goto/16 :goto_0

    .line 248
    :pswitch_9
    if-eqz v16, :cond_8

    move-wide/from16 v26, v24

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v26, v22

    goto/16 :goto_0

    .line 250
    :pswitch_a
    if-eqz v16, :cond_9

    move-wide/from16 v26, v22

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v26, v24

    goto/16 :goto_0

    .line 252
    :pswitch_b
    const-wide/16 v26, 0x0

    cmpg-double v17, v10, v26

    if-gtz v17, :cond_a

    move-wide/from16 v26, v24

    goto/16 :goto_0

    :cond_a
    move-wide/from16 v26, v22

    goto/16 :goto_0

    .line 254
    :pswitch_c
    const-wide/16 v26, 0x0

    cmpl-double v17, v10, v26

    if-ltz v17, :cond_b

    move-wide/from16 v26, v24

    goto/16 :goto_0

    :cond_b
    move-wide/from16 v26, v22

    goto/16 :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 244
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 11
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D

    .prologue
    .line 124
    sget-object v10, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D
    .param p9, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .prologue
    .line 116
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 117
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 11
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .prologue
    .line 109
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double/2addr v0, v2

    add-double v8, p3, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0
.end method
