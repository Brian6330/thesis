.class public Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.source "BrentOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
    .line 49
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    .line 53
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .prologue
    .line 111
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 112
    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 5
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p5, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 84
    sget-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 85
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 87
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 88
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 91
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    .line 92
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    .line 93
    return-void
.end method

.method private best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 4
    .param p1, "a"    # Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .param p2, "b"    # Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .param p3, "isMinim"    # Z

    .prologue
    .line 303
    if-nez p1, :cond_1

    move-object p1, p2

    .line 313
    .end local p1    # "a":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    :cond_0
    :goto_0
    return-object p1

    .line 306
    .restart local p1    # "a":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    :cond_1
    if-eqz p2, :cond_0

    .line 310
    if-eqz p3, :cond_2

    .line 311
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 60

    .prologue
    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v41

    sget-object v54, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 118
    .local v11, "isMinim":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getMin()D

    move-result-wide v28

    .line 119
    .local v28, "lo":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v32

    .line 120
    .local v32, "mid":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getMax()D

    move-result-wide v24

    .line 123
    .local v24, "hi":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v9

    .line 128
    .local v9, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    cmpg-double v41, v28, v24

    if-gez v41, :cond_5

    .line 129
    move-wide/from16 v4, v28

    .line 130
    .local v4, "a":D
    move-wide/from16 v6, v24

    .line 136
    .local v6, "b":D
    :goto_1
    move-wide/from16 v52, v32

    .line 137
    .local v52, "x":D
    move-wide/from16 v48, v52

    .line 138
    .local v48, "v":D
    move-wide/from16 v50, v52

    .line 139
    .local v50, "w":D
    const-wide/16 v12, 0x0

    .line 140
    .local v12, "d":D
    const-wide/16 v14, 0x0

    .line 141
    .local v14, "e":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v22

    .line 142
    .local v22, "fx":D
    if-nez v11, :cond_0

    .line 143
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 145
    :cond_0
    move-wide/from16 v18, v22

    .line 146
    .local v18, "fv":D
    move-wide/from16 v20, v22

    .line 148
    .local v20, "fw":D
    const/16 v27, 0x0

    .line 149
    .local v27, "previous":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    new-instance v10, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v11, :cond_6

    move-wide/from16 v54, v22

    :goto_2
    move-wide/from16 v0, v52

    move-wide/from16 v2, v54

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 152
    .local v10, "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    move-object v8, v10

    .line 154
    .local v8, "best":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    const/16 v26, 0x0

    .line 156
    .local v26, "iter":I
    :goto_3
    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    add-double v56, v4, v6

    mul-double v30, v54, v56

    .line 157
    .local v30, "m":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    move-wide/from16 v54, v0

    invoke-static/range {v52 .. v53}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v56

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    move-wide/from16 v56, v0

    add-double v42, v54, v56

    .line 158
    .local v42, "tol1":D
    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    mul-double v44, v54, v42

    .line 161
    .local v44, "tol2":D
    sub-double v54, v52, v30

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    sub-double v58, v6, v4

    mul-double v56, v56, v58

    sub-double v56, v44, v56

    cmpg-double v41, v54, v56

    if-gtz v41, :cond_7

    const/16 v40, 0x1

    .line 162
    .local v40, "stop":Z
    :goto_4
    if-nez v40, :cond_19

    .line 163
    const-wide/16 v34, 0x0

    .line 164
    .local v34, "p":D
    const-wide/16 v36, 0x0

    .line 165
    .local v36, "q":D
    const-wide/16 v38, 0x0

    .line 166
    .local v38, "r":D
    const-wide/16 v46, 0x0

    .line 168
    .local v46, "u":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    cmpl-double v41, v54, v42

    if-lez v41, :cond_c

    .line 169
    sub-double v54, v52, v50

    sub-double v56, v22, v18

    mul-double v38, v54, v56

    .line 170
    sub-double v54, v52, v48

    sub-double v56, v22, v20

    mul-double v36, v54, v56

    .line 171
    sub-double v54, v52, v48

    mul-double v54, v54, v36

    sub-double v56, v52, v50

    mul-double v56, v56, v38

    sub-double v34, v54, v56

    .line 172
    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    sub-double v56, v36, v38

    mul-double v36, v54, v56

    .line 174
    const-wide/16 v54, 0x0

    cmpl-double v41, v36, v54

    if-lez v41, :cond_8

    .line 175
    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v34, v0

    .line 180
    :goto_5
    move-wide/from16 v38, v14

    .line 181
    move-wide v14, v12

    .line 183
    sub-double v54, v4, v52

    mul-double v54, v54, v36

    cmpl-double v41, v34, v54

    if-lez v41, :cond_a

    sub-double v54, v6, v52

    mul-double v54, v54, v36

    cmpg-double v41, v34, v54

    if-gez v41, :cond_a

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    mul-double v56, v56, v36

    mul-double v56, v56, v38

    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v56

    cmpg-double v41, v54, v56

    if-gez v41, :cond_a

    .line 187
    div-double v12, v34, v36

    .line 188
    add-double v46, v52, v12

    .line 191
    sub-double v54, v46, v4

    cmpg-double v41, v54, v44

    if-ltz v41, :cond_1

    sub-double v54, v6, v46

    cmpg-double v41, v54, v44

    if-gez v41, :cond_2

    .line 192
    :cond_1
    cmpg-double v41, v52, v30

    if-gtz v41, :cond_9

    .line 193
    move-wide/from16 v12, v42

    .line 218
    :cond_2
    :goto_6
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    cmpg-double v41, v54, v42

    if-gez v41, :cond_f

    .line 219
    const-wide/16 v54, 0x0

    cmpl-double v41, v12, v54

    if-ltz v41, :cond_e

    .line 220
    add-double v46, v52, v42

    .line 228
    :goto_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 229
    .local v16, "fu":D
    if-nez v11, :cond_3

    .line 230
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 234
    :cond_3
    move-object/from16 v27, v10

    .line 235
    new-instance v10, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    .end local v10    # "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    if-eqz v11, :cond_10

    move-wide/from16 v54, v16

    :goto_8
    move-wide/from16 v0, v46

    move-wide/from16 v2, v54

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 236
    .restart local v10    # "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v8, v1, v11}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v8

    .line 242
    if-eqz v9, :cond_11

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v9, v0, v1, v10}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_11

    move-object/from16 v41, v8

    .line 279
    .end local v16    # "fu":D
    .end local v34    # "p":D
    .end local v36    # "q":D
    .end local v38    # "r":D
    .end local v46    # "u":D
    :goto_9
    return-object v41

    .line 117
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "best":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .end local v9    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .end local v10    # "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .end local v11    # "isMinim":Z
    .end local v12    # "d":D
    .end local v14    # "e":D
    .end local v18    # "fv":D
    .end local v20    # "fw":D
    .end local v22    # "fx":D
    .end local v24    # "hi":D
    .end local v26    # "iter":I
    .end local v27    # "previous":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .end local v28    # "lo":D
    .end local v30    # "m":D
    .end local v32    # "mid":D
    .end local v40    # "stop":Z
    .end local v42    # "tol1":D
    .end local v44    # "tol2":D
    .end local v48    # "v":D
    .end local v50    # "w":D
    .end local v52    # "x":D
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 132
    .restart local v9    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .restart local v11    # "isMinim":Z
    .restart local v24    # "hi":D
    .restart local v28    # "lo":D
    .restart local v32    # "mid":D
    :cond_5
    move-wide/from16 v4, v24

    .line 133
    .restart local v4    # "a":D
    move-wide/from16 v6, v28

    .restart local v6    # "b":D
    goto/16 :goto_1

    .line 149
    .restart local v12    # "d":D
    .restart local v14    # "e":D
    .restart local v18    # "fv":D
    .restart local v20    # "fw":D
    .restart local v22    # "fx":D
    .restart local v27    # "previous":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .restart local v48    # "v":D
    .restart local v50    # "w":D
    .restart local v52    # "x":D
    :cond_6
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v54, v0

    goto/16 :goto_2

    .line 161
    .restart local v8    # "best":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .restart local v10    # "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .restart local v26    # "iter":I
    .restart local v30    # "m":D
    .restart local v42    # "tol1":D
    .restart local v44    # "tol2":D
    :cond_7
    const/16 v40, 0x0

    goto/16 :goto_4

    .line 177
    .restart local v34    # "p":D
    .restart local v36    # "q":D
    .restart local v38    # "r":D
    .restart local v40    # "stop":Z
    .restart local v46    # "u":D
    :cond_8
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    goto/16 :goto_5

    .line 195
    :cond_9
    move-wide/from16 v0, v42

    neg-double v12, v0

    goto :goto_6

    .line 200
    :cond_a
    cmpg-double v41, v52, v30

    if-gez v41, :cond_b

    .line 201
    sub-double v14, v6, v52

    .line 205
    :goto_a
    sget-wide v54, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v12, v54, v14

    goto :goto_6

    .line 203
    :cond_b
    sub-double v14, v4, v52

    goto :goto_a

    .line 209
    :cond_c
    cmpg-double v41, v52, v30

    if-gez v41, :cond_d

    .line 210
    sub-double v14, v6, v52

    .line 214
    :goto_b
    sget-wide v54, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v12, v54, v14

    goto/16 :goto_6

    .line 212
    :cond_d
    sub-double v14, v4, v52

    goto :goto_b

    .line 222
    :cond_e
    sub-double v46, v52, v42

    goto :goto_7

    .line 225
    :cond_f
    add-double v46, v52, v12

    goto :goto_7

    .line 235
    .end local v10    # "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .restart local v16    # "fu":D
    :cond_10
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v54, v0

    goto :goto_8

    .line 247
    .restart local v10    # "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    :cond_11
    cmpg-double v41, v16, v22

    if-gtz v41, :cond_14

    .line 248
    cmpg-double v41, v46, v52

    if-gez v41, :cond_13

    .line 249
    move-wide/from16 v6, v52

    .line 253
    :goto_c
    move-wide/from16 v48, v50

    .line 254
    move-wide/from16 v18, v20

    .line 255
    move-wide/from16 v50, v52

    .line 256
    move-wide/from16 v20, v22

    .line 257
    move-wide/from16 v52, v46

    .line 258
    move-wide/from16 v22, v16

    .line 285
    :cond_12
    :goto_d
    add-int/lit8 v26, v26, 0x1

    .line 286
    goto/16 :goto_3

    .line 251
    :cond_13
    move-wide/from16 v4, v52

    goto :goto_c

    .line 260
    :cond_14
    cmpg-double v41, v46, v52

    if-gez v41, :cond_16

    .line 261
    move-wide/from16 v4, v46

    .line 265
    :goto_e
    cmpg-double v41, v16, v20

    if-lez v41, :cond_15

    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 267
    :cond_15
    move-wide/from16 v48, v50

    .line 268
    move-wide/from16 v18, v20

    .line 269
    move-wide/from16 v50, v46

    .line 270
    move-wide/from16 v20, v16

    goto :goto_d

    .line 263
    :cond_16
    move-wide/from16 v6, v46

    goto :goto_e

    .line 271
    :cond_17
    cmpg-double v41, v16, v18

    if-lez v41, :cond_18

    move-wide/from16 v0, v48

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v41

    if-nez v41, :cond_18

    invoke-static/range {v48 .. v51}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v41

    if-eqz v41, :cond_12

    .line 274
    :cond_18
    move-wide/from16 v48, v46

    .line 275
    move-wide/from16 v18, v16

    goto :goto_d

    .line 279
    .end local v16    # "fu":D
    .end local v34    # "p":D
    .end local v36    # "q":D
    .end local v38    # "r":D
    .end local v46    # "u":D
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v8, v1, v11}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v41

    goto/16 :goto_9
.end method
