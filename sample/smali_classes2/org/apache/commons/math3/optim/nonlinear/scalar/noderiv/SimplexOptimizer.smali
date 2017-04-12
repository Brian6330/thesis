.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SimplexOptimizer.java"


# instance fields
.field private simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .prologue
    .line 104
    new-instance v0, Lorg/apache/commons/math3/optim/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
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
    .line 96
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 97
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getUpperBound()[D

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 219
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 127
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->checkParameters()V

    .line 131
    new-instance v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;

    invoke-direct {v3, p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;)V

    .line 138
    .local v3, "evalFunc":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v11

    sget-object v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v11, v12, :cond_0

    move v5, v9

    .line 139
    .local v5, "isMinim":Z
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$2;

    invoke-direct {v1, p0, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$2;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;Z)V

    .line 150
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getStartPoint()[D

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->build([D)V

    .line 151
    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v11, v3, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, "previous":[Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v6, 0x0

    .line 155
    .local v6, "iteration":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    .line 157
    .local v0, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getIterations()I

    move-result v11

    if-lez v11, :cond_3

    .line 158
    const/4 v2, 0x1

    .line 159
    .local v2, "converged":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getSize()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 160
    aget-object v7, v8, v4

    .line 161
    .local v7, "prev":Lorg/apache/commons/math3/optim/PointValuePair;
    if-eqz v2, :cond_1

    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v11

    invoke-interface {v0, v6, v7, v11}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v2, v9

    .line 159
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .end local v2    # "converged":Z
    .end local v4    # "i":I
    .end local v5    # "isMinim":Z
    .end local v6    # "iteration":I
    .end local v7    # "prev":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v8    # "previous":[Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_0
    move v5, v10

    .line 138
    goto :goto_0

    .restart local v0    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .restart local v2    # "converged":Z
    .restart local v4    # "i":I
    .restart local v5    # "isMinim":Z
    .restart local v6    # "iteration":I
    .restart local v7    # "prev":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v8    # "previous":[Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_1
    move v2, v10

    .line 161
    goto :goto_3

    .line 164
    .end local v7    # "prev":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_2
    if-eqz v2, :cond_3

    .line 166
    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v9

    return-object v9

    .line 171
    .end local v2    # "converged":Z
    .end local v4    # "i":I
    :cond_3
    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v8

    .line 172
    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v11, v3, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->incrementIterationCount()V

    goto :goto_1
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 195
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 196
    .local v1, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v4, :cond_1

    .line 197
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    .line 203
    :cond_0
    return-void

    .line 195
    .restart local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
