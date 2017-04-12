.class public abstract Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "MultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer",
        "<",
        "Lorg/apache/commons/math3/optim/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 43
    return-void
.end method


# virtual methods
.method public computeObjectiveValue([D)D
    .locals 2
    .param p1, "params"    # [D

    .prologue
    .line 114
    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->incrementEvaluationCount()V

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optim/PointValuePair;

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 84
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 85
    .local v1, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-eqz v4, :cond_1

    .line 86
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .restart local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;

    if-eqz v4, :cond_0

    .line 90
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateFunction;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    goto :goto_1

    .line 94
    :cond_2
    return-void
.end method
