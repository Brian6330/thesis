.class public Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "SimplexOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
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


# instance fields
.field private simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 103
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .prologue
    .line 117
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
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
    .line 109
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 110
    return-void
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .prologue
    .line 171
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 172
    .local v1, "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    if-eqz v4, :cond_0

    .line 173
    check-cast v1, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    .end local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 182
    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    if-nez v11, :cond_0

    .line 183
    new-instance v9, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v9}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v9

    .line 188
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$1;

    invoke-direct {v3, p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;)V

    .line 195
    .local v3, "evalFunc":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v11

    sget-object v12, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v11, v12, :cond_1

    move v5, v9

    .line 196
    .local v5, "isMinim":Z
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;

    invoke-direct {v1, p0, v5}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;-><init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;Z)V

    .line 207
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getStartPoint()[D

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->build([D)V

    .line 208
    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v11, v3, v1}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 210
    const/4 v8, 0x0

    .line 211
    .local v8, "previous":[Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v6, 0x0

    .line 212
    .local v6, "iteration":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    .line 214
    .local v0, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    :goto_1
    if-lez v6, :cond_4

    .line 215
    const/4 v2, 0x1

    .line 216
    .local v2, "converged":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v11}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getSize()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 217
    aget-object v7, v8, v4

    .line 218
    .local v7, "prev":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-eqz v2, :cond_2

    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v11

    invoke-interface {v0, v6, v7, v11}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v2, v9

    .line 216
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    .end local v2    # "converged":Z
    .end local v4    # "i":I
    .end local v5    # "isMinim":Z
    .end local v6    # "iteration":I
    .end local v7    # "prev":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v8    # "previous":[Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_1
    move v5, v10

    .line 195
    goto :goto_0

    .restart local v0    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    .restart local v2    # "converged":Z
    .restart local v4    # "i":I
    .restart local v5    # "isMinim":Z
    .restart local v6    # "iteration":I
    .restart local v7    # "prev":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v8    # "previous":[Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_2
    move v2, v10

    .line 218
    goto :goto_3

    .line 221
    .end local v7    # "prev":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_3
    if-eqz v2, :cond_4

    .line 223
    iget-object v9, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v9

    return-object v9

    .line 228
    .end local v2    # "converged":Z
    .end local v4    # "i":I
    :cond_4
    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v11}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v8

    .line 229
    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v11, v3, v1}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .prologue
    .line 152
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public setSimplex(Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;)V
    .locals 2
    .param p1, "simplex"    # Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 131
    return-void
.end method
