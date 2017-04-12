.class public Lorg/apache/commons/math3/fitting/CurveFitter;
.super Ljava/lang/Object;
.source "CurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final observations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V
    .locals 1
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/CurveFitter;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addObservedPoint(DD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    .line 82
    return-void
.end method

.method public addObservedPoint(DDD)V
    .locals 9
    .param p1, "weight"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public addObservedPoint(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 1
    .param p1, "observed"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public clearObservations()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    return-void
.end method

.method public fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 11
    .param p1, "maxEval"    # I
    .param p3, "initialGuess"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;[D)[D"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;, "TT;"
    iget-object v7, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [D

    .line 162
    .local v5, "target":[D
    iget-object v7, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    .line 163
    .local v6, "weights":[D
    const/4 v0, 0x0

    .line 164
    .local v0, "i":I
    iget-object v7, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 165
    .local v4, "point":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    aput-wide v8, v5, v0

    .line 166
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v4    # "point":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-direct {v2, p0, p2}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    .line 174
    .local v2, "model":Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    iget-object v7, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    const/4 v8, 0x6

    new-array v8, v8, [Lorg/apache/commons/math3/optim/OptimizationData;

    const/4 v9, 0x0

    new-instance v10, Lorg/apache/commons/math3/optim/MaxEval;

    invoke-direct {v10, p1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    invoke-direct {v10, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;-><init>([D)V

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-direct {v10, v6}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;-><init>([D)V

    aput-object v10, v8, v9

    const/4 v9, 0x5

    new-instance v10, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-direct {v10, p3}, Lorg/apache/commons/math3/optim/InitialGuess;-><init>([D)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v3

    .line 182
    .local v3, "optimum":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    invoke-virtual {v3}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getPointRef()[D

    move-result-object v7

    return-object v7
.end method

.method public fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 1
    .param p2, "initialGuess"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[D)[D"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    .local p1, "f":Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;, "TT;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public getObservations()[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    return-object v0
.end method
