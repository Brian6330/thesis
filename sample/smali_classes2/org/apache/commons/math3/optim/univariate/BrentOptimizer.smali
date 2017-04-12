.class public Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "BrentOptimizer.java"


# static fields
.field private static final GOLDEN_SECTION:D

.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 47
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    .line 51
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .prologue
    .line 109
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 110
    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 5
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 82
    sget-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 83
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-wide v2, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 86
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 89
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    .line 90
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    .line 91
    return-void
.end method

.method private best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 4
    .param p1, "a"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .param p2, "b"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .param p3, "isMinim"    # Z

    .prologue
    .line 301
    if-nez p1, :cond_1

    move-object p1, p2

    .line 311
    .end local p1    # "a":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    :cond_0
    :goto_0
    return-object p1

    .line 304
    .restart local p1    # "a":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    :cond_1
    if-eqz p2, :cond_0

    .line 308
    if-eqz p3, :cond_2

    .line 309
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 58

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v52

    sget-object v53, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 116
    .local v11, "isMinim":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMin()D

    move-result-wide v26

    .line 117
    .local v26, "lo":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v30

    .line 118
    .local v30, "mid":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMax()D

    move-result-wide v24

    .line 121
    .local v24, "hi":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v9

    .line 126
    .local v9, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    cmpg-double v52, v26, v24

    if-gez v52, :cond_5

    .line 127
    move-wide/from16 v4, v26

    .line 128
    .local v4, "a":D
    move-wide/from16 v6, v24

    .line 134
    .local v6, "b":D
    :goto_1
    move-wide/from16 v50, v30

    .line 135
    .local v50, "x":D
    move-wide/from16 v46, v50

    .line 136
    .local v46, "v":D
    move-wide/from16 v48, v50

    .line 137
    .local v48, "w":D
    const-wide/16 v12, 0x0

    .line 138
    .local v12, "d":D
    const-wide/16 v14, 0x0

    .line 139
    .local v14, "e":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v22

    .line 140
    .local v22, "fx":D
    if-nez v11, :cond_0

    .line 141
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 143
    :cond_0
    move-wide/from16 v18, v22

    .line 144
    .local v18, "fv":D
    move-wide/from16 v20, v22

    .line 146
    .local v20, "fw":D
    const/16 v34, 0x0

    .line 147
    .local v34, "previous":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    new-instance v10, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-eqz v11, :cond_6

    move-wide/from16 v52, v22

    :goto_2
    move-wide/from16 v0, v50

    move-wide/from16 v2, v52

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 150
    .local v10, "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    move-object v8, v10

    .line 153
    .local v8, "best":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    :goto_3
    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    add-double v54, v4, v6

    mul-double v28, v52, v54

    .line 154
    .local v28, "m":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    move-wide/from16 v52, v0

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    mul-double v52, v52, v54

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    move-wide/from16 v54, v0

    add-double v40, v52, v54

    .line 155
    .local v40, "tol1":D
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    mul-double v42, v52, v40

    .line 158
    .local v42, "tol2":D
    sub-double v52, v50, v28

    invoke-static/range {v52 .. v53}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    sub-double v56, v6, v4

    mul-double v54, v54, v56

    sub-double v54, v42, v54

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_7

    const/16 v35, 0x1

    .line 159
    .local v35, "stop":Z
    :goto_4
    if-nez v35, :cond_19

    .line 160
    const-wide/16 v32, 0x0

    .line 161
    .local v32, "p":D
    const-wide/16 v36, 0x0

    .line 162
    .local v36, "q":D
    const-wide/16 v38, 0x0

    .line 163
    .local v38, "r":D
    const-wide/16 v44, 0x0

    .line 165
    .local v44, "u":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    cmpl-double v52, v52, v40

    if-lez v52, :cond_c

    .line 166
    sub-double v52, v50, v48

    sub-double v54, v22, v18

    mul-double v38, v52, v54

    .line 167
    sub-double v52, v50, v46

    sub-double v54, v22, v20

    mul-double v36, v52, v54

    .line 168
    sub-double v52, v50, v46

    mul-double v52, v52, v36

    sub-double v54, v50, v48

    mul-double v54, v54, v38

    sub-double v32, v52, v54

    .line 169
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    sub-double v54, v36, v38

    mul-double v36, v52, v54

    .line 171
    const-wide/16 v52, 0x0

    cmpl-double v52, v36, v52

    if-lez v52, :cond_8

    .line 172
    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    .line 177
    :goto_5
    move-wide/from16 v38, v14

    .line 178
    move-wide v14, v12

    .line 180
    sub-double v52, v4, v50

    mul-double v52, v52, v36

    cmpl-double v52, v32, v52

    if-lez v52, :cond_a

    sub-double v52, v6, v50

    mul-double v52, v52, v36

    cmpg-double v52, v32, v52

    if-gez v52, :cond_a

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    mul-double v54, v54, v36

    mul-double v54, v54, v38

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    cmpg-double v52, v52, v54

    if-gez v52, :cond_a

    .line 184
    div-double v12, v32, v36

    .line 185
    add-double v44, v50, v12

    .line 188
    sub-double v52, v44, v4

    cmpg-double v52, v52, v42

    if-ltz v52, :cond_1

    sub-double v52, v6, v44

    cmpg-double v52, v52, v42

    if-gez v52, :cond_2

    .line 189
    :cond_1
    cmpg-double v52, v50, v28

    if-gtz v52, :cond_9

    .line 190
    move-wide/from16 v12, v40

    .line 215
    :cond_2
    :goto_6
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    cmpg-double v52, v52, v40

    if-gez v52, :cond_f

    .line 216
    const-wide/16 v52, 0x0

    cmpl-double v52, v12, v52

    if-ltz v52, :cond_e

    .line 217
    add-double v44, v50, v40

    .line 225
    :goto_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 226
    .local v16, "fu":D
    if-nez v11, :cond_3

    .line 227
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 231
    :cond_3
    move-object/from16 v34, v10

    .line 232
    new-instance v10, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .end local v10    # "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    if-eqz v11, :cond_10

    move-wide/from16 v52, v16

    :goto_8
    move-wide/from16 v0, v44

    move-wide/from16 v2, v52

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 233
    .restart local v10    # "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v8, v1, v11}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v8

    .line 239
    if-eqz v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getIterations()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v34

    invoke-interface {v9, v0, v1, v10}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_11

    move-object/from16 v52, v8

    .line 276
    .end local v16    # "fu":D
    .end local v32    # "p":D
    .end local v36    # "q":D
    .end local v38    # "r":D
    .end local v44    # "u":D
    :goto_9
    return-object v52

    .line 115
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "best":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .end local v9    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .end local v10    # "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .end local v11    # "isMinim":Z
    .end local v12    # "d":D
    .end local v14    # "e":D
    .end local v18    # "fv":D
    .end local v20    # "fw":D
    .end local v22    # "fx":D
    .end local v24    # "hi":D
    .end local v26    # "lo":D
    .end local v28    # "m":D
    .end local v30    # "mid":D
    .end local v34    # "previous":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .end local v35    # "stop":Z
    .end local v40    # "tol1":D
    .end local v42    # "tol2":D
    .end local v46    # "v":D
    .end local v48    # "w":D
    .end local v50    # "x":D
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v9    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .restart local v11    # "isMinim":Z
    .restart local v24    # "hi":D
    .restart local v26    # "lo":D
    .restart local v30    # "mid":D
    :cond_5
    move-wide/from16 v4, v24

    .line 131
    .restart local v4    # "a":D
    move-wide/from16 v6, v26

    .restart local v6    # "b":D
    goto/16 :goto_1

    .line 147
    .restart local v12    # "d":D
    .restart local v14    # "e":D
    .restart local v18    # "fv":D
    .restart local v20    # "fw":D
    .restart local v22    # "fx":D
    .restart local v34    # "previous":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .restart local v46    # "v":D
    .restart local v48    # "w":D
    .restart local v50    # "x":D
    :cond_6
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v52, v0

    goto/16 :goto_2

    .line 158
    .restart local v8    # "best":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .restart local v10    # "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .restart local v28    # "m":D
    .restart local v40    # "tol1":D
    .restart local v42    # "tol2":D
    :cond_7
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 174
    .restart local v32    # "p":D
    .restart local v35    # "stop":Z
    .restart local v36    # "q":D
    .restart local v38    # "r":D
    .restart local v44    # "u":D
    :cond_8
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    goto/16 :goto_5

    .line 192
    :cond_9
    move-wide/from16 v0, v40

    neg-double v12, v0

    goto :goto_6

    .line 197
    :cond_a
    cmpg-double v52, v50, v28

    if-gez v52, :cond_b

    .line 198
    sub-double v14, v6, v50

    .line 202
    :goto_a
    sget-wide v52, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v12, v52, v14

    goto :goto_6

    .line 200
    :cond_b
    sub-double v14, v4, v50

    goto :goto_a

    .line 206
    :cond_c
    cmpg-double v52, v50, v28

    if-gez v52, :cond_d

    .line 207
    sub-double v14, v6, v50

    .line 211
    :goto_b
    sget-wide v52, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v12, v52, v14

    goto/16 :goto_6

    .line 209
    :cond_d
    sub-double v14, v4, v50

    goto :goto_b

    .line 219
    :cond_e
    sub-double v44, v50, v40

    goto :goto_7

    .line 222
    :cond_f
    add-double v44, v50, v12

    goto/16 :goto_7

    .line 232
    .end local v10    # "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .restart local v16    # "fu":D
    :cond_10
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v52, v0

    goto :goto_8

    .line 244
    .restart local v10    # "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    :cond_11
    cmpg-double v52, v16, v22

    if-gtz v52, :cond_14

    .line 245
    cmpg-double v52, v44, v50

    if-gez v52, :cond_13

    .line 246
    move-wide/from16 v6, v50

    .line 250
    :goto_c
    move-wide/from16 v46, v48

    .line 251
    move-wide/from16 v18, v20

    .line 252
    move-wide/from16 v48, v50

    .line 253
    move-wide/from16 v20, v22

    .line 254
    move-wide/from16 v50, v44

    .line 255
    move-wide/from16 v22, v16

    .line 283
    :cond_12
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->incrementIterationCount()V

    goto/16 :goto_3

    .line 248
    :cond_13
    move-wide/from16 v4, v50

    goto :goto_c

    .line 257
    :cond_14
    cmpg-double v52, v44, v50

    if-gez v52, :cond_16

    .line 258
    move-wide/from16 v4, v44

    .line 262
    :goto_e
    cmpg-double v52, v16, v20

    if-lez v52, :cond_15

    invoke-static/range {v48 .. v51}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v52

    if-eqz v52, :cond_17

    .line 264
    :cond_15
    move-wide/from16 v46, v48

    .line 265
    move-wide/from16 v18, v20

    .line 266
    move-wide/from16 v48, v44

    .line 267
    move-wide/from16 v20, v16

    goto :goto_d

    .line 260
    :cond_16
    move-wide/from16 v6, v44

    goto :goto_e

    .line 268
    :cond_17
    cmpg-double v52, v16, v18

    if-lez v52, :cond_18

    move-wide/from16 v0, v46

    move-wide/from16 v2, v50

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v52

    if-nez v52, :cond_18

    invoke-static/range {v46 .. v49}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v52

    if-eqz v52, :cond_12

    .line 271
    :cond_18
    move-wide/from16 v46, v44

    .line 272
    move-wide/from16 v18, v16

    goto :goto_d

    .line 276
    .end local v16    # "fu":D
    .end local v32    # "p":D
    .end local v36    # "q":D
    .end local v38    # "r":D
    .end local v44    # "u":D
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v8, v1, v11}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v52

    goto/16 :goto_9
.end method
