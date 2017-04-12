.class public abstract Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.super Ljava/lang/Object;
.source "BaseAbstractUnivariateOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/UnivariateOptimizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field private goal:Lorg/apache/commons/math3/optimization/GoalType;

.field private searchMax:D

.field private searchMin:D

.field private searchStart:D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 57
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    .line 58
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 5
    .param p1, "point"    # D

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    return-wide v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected abstract doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.end method

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
    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMax:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMin:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchStart:D

    return-wide v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 10
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "min"    # D
    .param p6, "max"    # D

    .prologue
    .line 143
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

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "min"    # D
    .param p6, "max"    # D
    .param p8, "startValue"    # D

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_0
    if-nez p3, :cond_1

    .line 122
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_1
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMin:D

    .line 127
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMax:D

    .line 128
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchStart:D

    .line 129
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    .line 130
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 131
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 132
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method
