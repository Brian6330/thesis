.class public abstract Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "BaseAbstractMultivariateSimpleBoundsOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateSimpleBoundsOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer",
        "<TFUNC;>;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer",
        "<TFUNC;>;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateSimpleBoundsOptimizer",
        "<TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<TFUNC;>;"
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
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<TFUNC;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 64
    return-void
.end method


# virtual methods
.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
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
    .line 70
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v2, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    aput-object v2, v0, v1

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D[D[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D
    .param p5, "lower"    # [D
    .param p6, "upper"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v2, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/commons/math3/optimization/SimpleBounds;

    invoke-direct {v2, p5, p6}, Lorg/apache/commons/math3/optimization/SimpleBounds;-><init>([D[D)V

    aput-object v2, v0, v1

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method
