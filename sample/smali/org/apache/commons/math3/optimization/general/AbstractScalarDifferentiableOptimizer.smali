.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "AbstractScalarDifferentiableOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer",
        "<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected computeObjectiveGradient([D)[D
    .locals 1
    .param p1, "evaluationPoint"    # [D

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D

    .prologue
    .line 109
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected optimizeInternal(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D

    .prologue
    .line 83
    invoke-interface {p2}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p3, "x2"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "x3"    # [D

    .prologue
    .line 38
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    .end local p2    # "x1":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method
