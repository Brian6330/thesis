.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "PowellOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer",
        "<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .prologue
    .line 140
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 141
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D

    .prologue
    .line 158
    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 159
    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 9
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p9, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 113
    sget-wide v2, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    .line 114
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sget-wide v4, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 116
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p3, v2

    if-gtz v2, :cond_1

    .line 117
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 119
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    .line 120
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    .line 123
    new-instance v2, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    move-object v3, p0

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    .line 125
    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 11
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p5, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 91
    return-void
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 11
    .param p1, "p"    # [D
    .param p2, "d"    # [D
    .param p3, "optimum"    # D

    .prologue
    .line 269
    array-length v1, p1

    .line 270
    .local v1, "n":I
    new-array v3, v1, [D

    .line 271
    .local v3, "nP":[D
    new-array v2, v1, [D

    .line 272
    .local v2, "nD":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 273
    aget-wide v6, p2, v0

    mul-double/2addr v6, p3

    aput-wide v6, v2, v0

    .line 274
    aget-wide v6, p1, v0

    aget-wide v8, v2, v0

    add-double/2addr v6, v8

    aput-wide v6, v3, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [[D

    .line 278
    .local v4, "result":[[D
    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 279
    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 281
    return-object v4
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 42

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v11

    .line 165
    .local v11, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getStartPoint()[D

    move-result-object v18

    .line 166
    .local v18, "guess":[D
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    .line 168
    .local v22, "n":I
    move/from16 v0, v22

    move/from16 v1, v22

    filled-new-array {v0, v1}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 169
    .local v10, "direc":[[D
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 170
    aget-object v34, v10, v19

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    aput-wide v36, v34, v19

    .line 169
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v5

    .line 176
    .local v5, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    move-object/from16 v27, v18

    .line 177
    .local v27, "x":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v12

    .line 178
    .local v12, "fVal":D
    invoke-virtual/range {v27 .. v27}, [D->clone()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [D

    .line 179
    .local v32, "x1":[D
    const/16 v20, 0x0

    .line 181
    .local v20, "iter":I
    :cond_1
    :goto_1
    add-int/lit8 v20, v20, 0x1

    .line 183
    move-wide v14, v12

    .line 184
    .local v14, "fX":D
    const-wide/16 v16, 0x0

    .line 185
    .local v16, "fX2":D
    const-wide/16 v8, 0x0

    .line 186
    .local v8, "delta":D
    const/4 v4, 0x0

    .line 187
    .local v4, "bigInd":I
    const-wide/16 v2, 0x0

    .line 189
    .local v2, "alphaMin":D
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 190
    aget-object v34, v10, v19

    invoke-static/range {v34 .. v34}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v7

    .line 192
    .local v7, "d":[D
    move-wide/from16 v16, v12

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v23

    .line 195
    .local v23, "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v12

    .line 196
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v2

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v25

    .line 198
    .local v25, "result":[[D
    const/16 v34, 0x0

    aget-object v27, v25, v34

    .line 200
    sub-double v34, v16, v12

    cmpl-double v34, v34, v8

    if-lez v34, :cond_2

    .line 201
    sub-double v8, v16, v12

    .line 202
    move/from16 v4, v19

    .line 189
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 207
    .end local v7    # "d":[D
    .end local v23    # "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .end local v25    # "result":[[D
    :cond_3
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    sub-double v36, v14, v12

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    move-wide/from16 v36, v0

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    add-double v38, v38, v40

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    cmpg-double v34, v34, v36

    if-gtz v34, :cond_6

    const/16 v26, 0x1

    .line 211
    .local v26, "stop":Z
    :goto_3
    new-instance v24, Lorg/apache/commons/math3/optimization/PointValuePair;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 212
    .local v24, "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    new-instance v6, Lorg/apache/commons/math3/optimization/PointValuePair;

    move-object/from16 v0, v27

    invoke-direct {v6, v0, v12, v13}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 213
    .local v6, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-nez v26, :cond_4

    if-eqz v5, :cond_4

    .line 214
    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1, v6}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v26

    .line 216
    :cond_4
    if-eqz v26, :cond_9

    .line 217
    sget-object v34, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v0, v34

    if-ne v11, v0, :cond_8

    .line 218
    cmpg-double v34, v12, v14

    if-gez v34, :cond_7

    .line 220
    .end local v6    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_5
    :goto_4
    return-object v6

    .line 207
    .end local v24    # "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v26    # "stop":Z
    :cond_6
    const/16 v26, 0x0

    goto :goto_3

    .restart local v6    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v24    # "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v26    # "stop":Z
    :cond_7
    move-object/from16 v6, v24

    .line 218
    goto :goto_4

    .line 220
    :cond_8
    cmpl-double v34, v12, v14

    if-gtz v34, :cond_5

    move-object/from16 v6, v24

    goto :goto_4

    .line 224
    :cond_9
    move/from16 v0, v22

    new-array v7, v0, [D

    .line 225
    .restart local v7    # "d":[D
    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v33, v0

    .line 226
    .local v33, "x2":[D
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 227
    aget-wide v34, v27, v19

    aget-wide v36, v32, v19

    sub-double v34, v34, v36

    aput-wide v34, v7, v19

    .line 228
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    aget-wide v36, v27, v19

    mul-double v34, v34, v36

    aget-wide v36, v32, v19

    sub-double v34, v34, v36

    aput-wide v34, v33, v19

    .line 226
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 231
    :cond_a
    invoke-virtual/range {v27 .. v27}, [D->clone()Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "x1":[D
    check-cast v32, [D

    .line 232
    .restart local v32    # "x1":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v16

    .line 234
    cmpl-double v34, v14, v16

    if-lez v34, :cond_1

    .line 235
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    add-double v36, v14, v16

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v12

    sub-double v36, v36, v38

    mul-double v28, v34, v36

    .line 236
    .local v28, "t":D
    sub-double v34, v14, v12

    sub-double v30, v34, v8

    .line 237
    .local v30, "temp":D
    mul-double v34, v30, v30

    mul-double v28, v28, v34

    .line 238
    sub-double v30, v14, v16

    .line 239
    mul-double v34, v8, v30

    mul-double v34, v34, v30

    sub-double v28, v28, v34

    .line 241
    const-wide/16 v34, 0x0

    cmpg-double v34, v28, v34

    if-gez v34, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v23

    .line 243
    .restart local v23    # "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v12

    .line 244
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v2

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v25

    .line 246
    .restart local v25    # "result":[[D
    const/16 v34, 0x0

    aget-object v27, v25, v34

    .line 248
    add-int/lit8 v21, v22, -0x1

    .line 249
    .local v21, "lastInd":I
    aget-object v34, v10, v21

    aput-object v34, v10, v4

    .line 250
    const/16 v34, 0x1

    aget-object v34, v25, v34

    aput-object v34, v10, v21

    goto/16 :goto_1
.end method
