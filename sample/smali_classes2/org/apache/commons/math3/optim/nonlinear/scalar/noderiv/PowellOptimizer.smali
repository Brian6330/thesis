.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "PowellOptimizer.java"


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .prologue
    .line 145
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 146
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D

    .prologue
    .line 162
    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 163
    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 11
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p9, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 116
    sget-wide v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    .line 117
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sget-wide v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 119
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p3, v2

    if-gtz v2, :cond_1

    .line 120
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 122
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    .line 123
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    .line 126
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    .line 130
    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 11
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 94
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getUpperBound()[D

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 298
    :cond_1
    return-void
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 11
    .param p1, "p"    # [D
    .param p2, "d"    # [D
    .param p3, "optimum"    # D

    .prologue
    .line 274
    array-length v1, p1

    .line 275
    .local v1, "n":I
    new-array v3, v1, [D

    .line 276
    .local v3, "nP":[D
    new-array v2, v1, [D

    .line 277
    .local v2, "nD":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 278
    aget-wide v6, p2, v0

    mul-double/2addr v6, p3

    aput-wide v6, v2, v0

    .line 279
    aget-wide v6, p1, v0

    aget-wide v8, v2, v0

    add-double/2addr v6, v8

    aput-wide v6, v3, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [[D

    .line 283
    .local v4, "result":[[D
    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 284
    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 286
    return-object v4
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 42

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->checkParameters()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v11

    .line 171
    .local v11, "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getStartPoint()[D

    move-result-object v18

    .line 172
    .local v18, "guess":[D
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    .line 174
    .local v21, "n":I
    move/from16 v0, v21

    move/from16 v1, v21

    filled-new-array {v0, v1}, [I

    move-result-object v33

    sget-object v34, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 175
    .local v10, "direc":[[D
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 176
    aget-object v33, v10, v19

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    aput-wide v34, v33, v19

    .line 175
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v5

    .line 182
    .local v5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    move-object/from16 v30, v18

    .line 183
    .local v30, "x":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v12

    .line 184
    .local v12, "fVal":D
    invoke-virtual/range {v30 .. v30}, [D->clone()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [D

    .line 186
    .local v31, "x1":[D
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->incrementIterationCount()V

    .line 188
    move-wide v14, v12

    .line 189
    .local v14, "fX":D
    const-wide/16 v16, 0x0

    .line 190
    .local v16, "fX2":D
    const-wide/16 v8, 0x0

    .line 191
    .local v8, "delta":D
    const/4 v4, 0x0

    .line 192
    .local v4, "bigInd":I
    const-wide/16 v2, 0x0

    .line 194
    .local v2, "alphaMin":D
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 195
    aget-object v33, v10, v19

    invoke-static/range {v33 .. v33}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v7

    .line 197
    .local v7, "d":[D
    move-wide/from16 v16, v12

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v22

    .line 200
    .local v22, "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v12

    .line 201
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v2

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v24

    .line 203
    .local v24, "result":[[D
    const/16 v33, 0x0

    aget-object v30, v24, v33

    .line 205
    sub-double v34, v16, v12

    cmpl-double v33, v34, v8

    if-lez v33, :cond_2

    .line 206
    sub-double v8, v16, v12

    .line 207
    move/from16 v4, v19

    .line 194
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 212
    .end local v7    # "d":[D
    .end local v22    # "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .end local v24    # "result":[[D
    :cond_3
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    sub-double v36, v14, v12

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    move-wide/from16 v36, v0

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    add-double v38, v38, v40

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    cmpg-double v33, v34, v36

    if-gtz v33, :cond_6

    const/16 v25, 0x1

    .line 216
    .local v25, "stop":Z
    :goto_3
    new-instance v23, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 217
    .local v23, "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v0, v30

    invoke-direct {v6, v0, v12, v13}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 218
    .local v6, "current":Lorg/apache/commons/math3/optim/PointValuePair;
    if-nez v25, :cond_4

    if-eqz v5, :cond_4

    .line 219
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getIterations()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v23

    invoke-interface {v5, v0, v1, v6}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    .line 221
    :cond_4
    if-eqz v25, :cond_9

    .line 222
    sget-object v33, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v0, v33

    if-ne v11, v0, :cond_8

    .line 223
    cmpg-double v33, v12, v14

    if-gez v33, :cond_7

    .line 225
    .end local v6    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_5
    :goto_4
    return-object v6

    .line 212
    .end local v23    # "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v25    # "stop":Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_3

    .restart local v6    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v23    # "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v25    # "stop":Z
    :cond_7
    move-object/from16 v6, v23

    .line 223
    goto :goto_4

    .line 225
    :cond_8
    cmpl-double v33, v12, v14

    if-gtz v33, :cond_5

    move-object/from16 v6, v23

    goto :goto_4

    .line 229
    :cond_9
    move/from16 v0, v21

    new-array v7, v0, [D

    .line 230
    .restart local v7    # "d":[D
    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v32, v0

    .line 231
    .local v32, "x2":[D
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 232
    aget-wide v34, v30, v19

    aget-wide v36, v31, v19

    sub-double v34, v34, v36

    aput-wide v34, v7, v19

    .line 233
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    aget-wide v36, v30, v19

    mul-double v34, v34, v36

    aget-wide v36, v31, v19

    sub-double v34, v34, v36

    aput-wide v34, v32, v19

    .line 231
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 236
    :cond_a
    invoke-virtual/range {v30 .. v30}, [D->clone()Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "x1":[D
    check-cast v31, [D

    .line 237
    .restart local v31    # "x1":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v16

    .line 239
    cmpl-double v33, v14, v16

    if-lez v33, :cond_1

    .line 240
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    add-double v36, v14, v16

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v12

    sub-double v36, v36, v38

    mul-double v26, v34, v36

    .line 241
    .local v26, "t":D
    sub-double v34, v14, v12

    sub-double v28, v34, v8

    .line 242
    .local v28, "temp":D
    mul-double v34, v28, v28

    mul-double v26, v26, v34

    .line 243
    sub-double v28, v14, v16

    .line 244
    mul-double v34, v8, v28

    mul-double v34, v34, v28

    sub-double v26, v26, v34

    .line 246
    const-wide/16 v34, 0x0

    cmpg-double v33, v26, v34

    if-gez v33, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v22

    .line 248
    .restart local v22    # "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v12

    .line 249
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v2

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v24

    .line 251
    .restart local v24    # "result":[[D
    const/16 v33, 0x0

    aget-object v30, v24, v33

    .line 253
    add-int/lit8 v20, v21, -0x1

    .line 254
    .local v20, "lastInd":I
    aget-object v33, v10, v20

    aput-object v33, v10, v4

    .line 255
    const/16 v33, 0x1

    aget-object v33, v24, v33

    aput-object v33, v10, v20

    goto/16 :goto_1
.end method
