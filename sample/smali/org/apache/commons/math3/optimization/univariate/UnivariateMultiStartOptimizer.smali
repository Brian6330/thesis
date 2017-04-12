.class public Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "UnivariateMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer",
        "<TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer",
            "<TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer",
            "<TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<TFUNC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 78
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_1
    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 81
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 84
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    .line 85
    iput p2, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    .line 86
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 87
    return-void
.end method

.method private sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 2
    .param p1, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 201
    return-void
.end method


# virtual methods
.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 3

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 10
    .param p1, "maxEval"    # I
    .param p3, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "min"    # D
    .param p6, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p6, p4

    mul-double/2addr v0, v2

    add-double v8, p4, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 16
    .param p1, "maxEval"    # I
    .param p3, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "min"    # D
    .param p6, "max"    # D
    .param p8, "startValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DDD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    const/4 v13, 0x0

    .line 153
    .local v13, "lastException":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    new-array v2, v2, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    .line 157
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    if-ge v12, v2, :cond_1

    .line 160
    if-nez v12, :cond_0

    move-wide/from16 v10, p8

    .line 161
    .local v10, "s":D
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    sub-int v3, p1, v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v11}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    aput-object v2, v15, v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v10    # "s":D
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v3}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->getEvaluations()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    .line 157
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 160
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    sub-double v4, p6, p4

    mul-double/2addr v2, v4

    add-double v10, p4, v2

    goto :goto_1

    .line 162
    :catch_0
    move-exception v14

    .line 163
    .local v14, "mue":Ljava/lang/RuntimeException;
    move-object v13, v14

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    const/4 v3, 0x0

    aput-object v3, v2, v12

    goto :goto_2

    .line 171
    .end local v14    # "mue":Ljava/lang/RuntimeException;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 174
    throw v13

    .line 178
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    return-object v2
.end method
