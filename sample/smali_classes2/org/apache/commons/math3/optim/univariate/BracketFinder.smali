.class public Lorg/apache/commons/math3/optim/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "BracketFinder.java"


# static fields
.field private static final EPS_MIN:D = 1.0E-21

.field private static final GOLD:D = 1.618034


# instance fields
.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private fHi:D

.field private fLo:D

.field private fMid:D

.field private final growLimit:D

.field private hi:D

.field private lo:D

.field private mid:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>(DI)V

    .line 80
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 3
    .param p1, "growLimit"    # D
    .param p3, "maxEvaluations"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 91
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 92
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 94
    :cond_0
    if-gtz p3, :cond_1

    .line 95
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 98
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->growLimit:D

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p3}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 100
    return-void
.end method

.method private eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 4
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "x"    # D

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    return-wide v2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public getEvaluations()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFHi()D
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fMid:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMid()D
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->mid:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V
    .locals 35
    .param p1, "func"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "goal"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .param p3, "xA"    # D
    .param p5, "xB"    # D

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v15}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 117
    sget-object v15, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_4

    const/4 v14, 0x1

    .line 119
    .local v14, "isMinim":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v6

    .line 120
    .local v6, "fA":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v8

    .line 121
    .local v8, "fB":D
    if-eqz v14, :cond_5

    cmpg-double v15, v6, v8

    if-gez v15, :cond_0

    .line 125
    :goto_1
    move-wide/from16 v16, p3

    .line 126
    .local v16, "tmp":D
    move-wide/from16 p3, p5

    .line 127
    move-wide/from16 p5, v16

    .line 129
    move-wide/from16 v16, v6

    .line 130
    move-wide v6, v8

    .line 131
    move-wide/from16 v8, v16

    .line 134
    .end local v16    # "tmp":D
    :cond_0
    const-wide v30, 0x3ff9e3779e9d0e99L    # 1.618034

    sub-double v32, p5, p3

    mul-double v30, v30, v32

    add-double v28, p5, v30

    .line 135
    .local v28, "xC":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v10

    .line 137
    .local v10, "fC":D
    :goto_2
    if-eqz v14, :cond_6

    cmpg-double v15, v10, v8

    if-gez v15, :cond_2

    .line 138
    :goto_3
    sub-double v30, p5, p3

    sub-double v32, v8, v10

    mul-double v18, v30, v32

    .line 139
    .local v18, "tmp1":D
    sub-double v30, p5, v28

    sub-double v32, v8, v6

    mul-double v20, v30, v32

    .line 141
    .local v20, "tmp2":D
    sub-double v22, v20, v18

    .line 142
    .local v22, "val":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v15, v30, v32

    if-gez v15, :cond_7

    const-wide v4, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    .line 144
    .local v4, "denom":D
    :goto_4
    sub-double v30, p5, v28

    mul-double v30, v30, v20

    sub-double v32, p5, p3

    mul-double v32, v32, v18

    sub-double v30, v30, v32

    div-double v30, v30, v4

    sub-double v24, p5, v30

    .line 145
    .local v24, "w":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->growLimit:D

    move-wide/from16 v30, v0

    sub-double v32, v28, p5

    mul-double v30, v30, v32

    add-double v26, p5, v30

    .line 148
    .local v26, "wLim":D
    sub-double v30, v24, v28

    sub-double v32, p5, v24

    mul-double v30, v30, v32

    const-wide/16 v32, 0x0

    cmpl-double v15, v30, v32

    if-lez v15, :cond_e

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v12

    .line 150
    .local v12, "fW":D
    if-eqz v14, :cond_8

    cmpg-double v15, v12, v10

    if-gez v15, :cond_9

    .line 153
    :cond_1
    move-wide/from16 p3, p5

    .line 154
    move-wide/from16 p5, v24

    .line 155
    move-wide v6, v8

    .line 156
    move-wide v8, v12

    .line 195
    .end local v4    # "denom":D
    .end local v12    # "fW":D
    .end local v18    # "tmp1":D
    .end local v20    # "tmp2":D
    .end local v22    # "val":D
    .end local v24    # "w":D
    .end local v26    # "wLim":D
    :cond_2
    :goto_5
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    .line 196
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    .line 197
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->mid:D

    .line 198
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fMid:D

    .line 199
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    .line 200
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    .line 202
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    move-wide/from16 v32, v0

    cmpl-double v15, v30, v32

    if-lez v15, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    move-wide/from16 v16, v0

    .line 204
    .restart local v16    # "tmp":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    .line 205
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    .line 207
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    move-wide/from16 v16, v0

    .line 208
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    .line 209
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    .line 211
    .end local v16    # "tmp":D
    :cond_3
    return-void

    .line 117
    .end local v6    # "fA":D
    .end local v8    # "fB":D
    .end local v10    # "fC":D
    .end local v14    # "isMinim":Z
    .end local v28    # "xC":D
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 121
    .restart local v6    # "fA":D
    .restart local v8    # "fB":D
    .restart local v14    # "isMinim":Z
    :cond_5
    cmpl-double v15, v6, v8

    if-lez v15, :cond_0

    goto/16 :goto_1

    .line 137
    .restart local v10    # "fC":D
    .restart local v28    # "xC":D
    :cond_6
    cmpl-double v15, v10, v8

    if-lez v15, :cond_2

    goto/16 :goto_3

    .line 142
    .restart local v18    # "tmp1":D
    .restart local v20    # "tmp2":D
    .restart local v22    # "val":D
    :cond_7
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v4, v30, v22

    goto/16 :goto_4

    .line 150
    .restart local v4    # "denom":D
    .restart local v12    # "fW":D
    .restart local v24    # "w":D
    .restart local v26    # "wLim":D
    :cond_8
    cmpl-double v15, v12, v10

    if-gtz v15, :cond_1

    .line 158
    :cond_9
    if-eqz v14, :cond_b

    cmpl-double v15, v12, v8

    if-lez v15, :cond_c

    .line 161
    :cond_a
    move-wide/from16 v28, v24

    .line 162
    move-wide v10, v12

    .line 163
    goto/16 :goto_5

    .line 158
    :cond_b
    cmpg-double v15, v12, v8

    if-ltz v15, :cond_a

    .line 165
    :cond_c
    const-wide v30, 0x3ff9e3779e9d0e99L    # 1.618034

    sub-double v32, v28, p5

    mul-double v30, v30, v32

    add-double v24, v28, v30

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v12

    .line 187
    :cond_d
    :goto_6
    move-wide/from16 p3, p5

    .line 188
    move-wide v6, v8

    .line 189
    move-wide/from16 p5, v28

    .line 190
    move-wide v8, v10

    .line 191
    move-wide/from16 v28, v24

    .line 192
    move-wide v10, v12

    .line 193
    goto/16 :goto_2

    .line 167
    .end local v12    # "fW":D
    :cond_e
    sub-double v30, v24, v26

    sub-double v32, v26, v28

    mul-double v30, v30, v32

    const-wide/16 v32, 0x0

    cmpl-double v15, v30, v32

    if-ltz v15, :cond_f

    .line 168
    move-wide/from16 v24, v26

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v12

    .restart local v12    # "fW":D
    goto :goto_6

    .line 170
    .end local v12    # "fW":D
    :cond_f
    sub-double v30, v24, v26

    sub-double v32, v28, v24

    mul-double v30, v30, v32

    const-wide/16 v32, 0x0

    cmpl-double v15, v30, v32

    if-lez v15, :cond_11

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v12

    .line 172
    .restart local v12    # "fW":D
    if-eqz v14, :cond_10

    cmpg-double v15, v12, v10

    if-gez v15, :cond_d

    .line 175
    :goto_7
    move-wide/from16 p5, v28

    .line 176
    move-wide/from16 v28, v24

    .line 177
    const-wide v30, 0x3ff9e3779e9d0e99L    # 1.618034

    sub-double v32, v28, p5

    mul-double v30, v30, v32

    add-double v24, v28, v30

    .line 178
    move-wide v8, v10

    .line 179
    move-wide v10, v12

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v12

    goto :goto_6

    .line 172
    :cond_10
    cmpl-double v15, v12, v10

    if-lez v15, :cond_d

    goto :goto_7

    .line 183
    .end local v12    # "fW":D
    :cond_11
    const-wide v30, 0x3ff9e3779e9d0e99L    # 1.618034

    sub-double v32, v28, p5

    mul-double v30, v30, v32

    add-double v24, v28, v30

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v12

    .restart local v12    # "fW":D
    goto :goto_6
.end method
