.class public Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer",
        "<TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer",
            "<TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer",
            "<TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<TFUNC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_1
    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 79
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 82
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    .line 83
    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->starts:I

    .line 84
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .line 85
    return-void
.end method

.method private sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 2
    .param p1, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 191
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
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/PointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 8
    .param p1, "maxEval"    # I
    .param p3, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    const/4 v7, 0x0

    .line 141
    iput p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->maxEvaluations:I

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "lastException":Ljava/lang/RuntimeException;
    iget v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->starts:I

    new-array v3, v3, [Lorg/apache/commons/math3/optimization/PointValuePair;

    iput-object v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    .line 144
    iput v7, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->starts:I

    if-ge v0, v3, :cond_1

    .line 150
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    iget v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    sub-int v6, p1, v3

    if-nez v0, :cond_0

    move-object v3, p4

    :goto_1
    invoke-interface {v5, v6, p2, p3, v3}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v3

    aput-object v3, v4, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_2
    iget v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    invoke-interface {v4}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->getEvaluations()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "mue":Ljava/lang/RuntimeException;
    move-object v1, v2

    .line 154
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_2

    .line 161
    .end local v2    # "mue":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V

    .line 163
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object v3, v3, v7

    if-nez v3, :cond_2

    .line 164
    throw v1

    .line 168
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object v3, v3, v7

    return-object v3
.end method
