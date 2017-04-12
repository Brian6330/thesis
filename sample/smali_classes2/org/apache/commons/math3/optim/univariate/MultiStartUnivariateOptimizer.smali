.class public Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "MultiStartUnivariateOptimizer.java"


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private maxEvalIndex:I

.field private optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

.field private optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field private searchIntervalIndex:I

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    const/4 v1, -0x1

    .line 78
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 58
    iput v1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    .line 63
    iput v1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    .line 80
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    .line 85
    iput p2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    .line 86
    iput-object p3, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 87
    return-void
.end method

.method private sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
    .locals 2
    .param p1, "goal"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 20

    .prologue
    .line 146
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v3, v3, v2

    instance-of v3, v3, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v3, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    const/4 v13, 0x0

    aput-object v13, v3, v2

    .line 149
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v3, v3, v2

    instance-of v3, v3, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v3, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    const/4 v13, 0x0

    aput-object v13, v3, v2

    .line 154
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    goto :goto_1

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_3

    .line 159
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v3

    .line 161
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_4

    .line 162
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v3

    .line 165
    :cond_4
    const/4 v10, 0x0

    .line 166
    .local v10, "lastException":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    new-array v3, v3, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .line 167
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMaxEvaluations()I

    move-result v11

    .line 170
    .local v11, "maxEval":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMin()D

    move-result-wide v4

    .line 171
    .local v4, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMax()D

    move-result-wide v6

    .line 172
    .local v6, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getStartValue()D

    move-result-wide v14

    .line 175
    .local v14, "startValue":D
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    if-ge v2, v3, :cond_6

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    new-instance v16, Lorg/apache/commons/math3/optim/MaxEval;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    move/from16 v17, v0

    sub-int v17, v11, v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v16, v3, v13

    .line 181
    if-nez v2, :cond_5

    move-wide v8, v14

    .line 184
    .local v8, "s":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    move/from16 v16, v0

    new-instance v3, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    aput-object v3, v13, v16

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v13

    aput-object v13, v3, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v8    # "s":D
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    invoke-virtual {v13}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getEvaluations()I

    move-result v13

    add-int/2addr v3, v13

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 181
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v16

    sub-double v18, v6, v4

    mul-double v16, v16, v18

    add-double v8, v4, v16

    goto :goto_3

    .line 187
    :catch_0
    move-exception v12

    .line 188
    .local v12, "mue":Ljava/lang/RuntimeException;
    move-object v10, v12

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    const/4 v13, 0x0

    aput-object v13, v3, v2

    goto :goto_4

    .line 196
    .end local v12    # "mue":Ljava/lang/RuntimeException;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    if-nez v3, :cond_7

    .line 199
    throw v10

    .line 203
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    return-object v3
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 135
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method
