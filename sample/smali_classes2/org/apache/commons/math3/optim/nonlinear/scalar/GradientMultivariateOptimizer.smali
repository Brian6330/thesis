.class public abstract Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "GradientMultivariateOptimizer.java"


# instance fields
.field private gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


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
    .line 43
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected computeObjectiveGradient([D)[D
    .locals 1
    .param p1, "params"    # [D

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

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
    .line 73
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 93
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 94
    .local v1, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;

    if-eqz v4, :cond_1

    .line 95
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;->getObjectiveFunctionGradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 101
    :cond_0
    return-void

    .line 93
    .restart local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
