.class public Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.super Ljava/lang/Object;
.source "CurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;,
        Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;
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
            "Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 1
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;)V
    .locals 1
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    .line 81
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addObservedPoint(DD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->addObservedPoint(DDD)V

    .line 97
    return-void
.end method

.method public addObservedPoint(DDD)V
    .locals 9
    .param p1, "weight"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public addObservedPoint(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V
    .locals 1
    .param p1, "observed"    # Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public clearObservations()V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    return-void
.end method

.method public fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 10
    .param p1, "maxEval"    # I
    .param p3, "initialGuess"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;[D)[D"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [D

    .line 177
    .local v3, "target":[D
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [D

    .line 178
    .local v4, "weights":[D
    const/4 v6, 0x0

    .line 179
    .local v6, "i":I
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 180
    .local v9, "point":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    invoke-virtual {v9}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v0

    aput-wide v0, v3, v6

    .line 181
    invoke-virtual {v9}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v0

    aput-wide v0, v4, v6

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 187
    .end local v9    # "point":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    new-instance v2, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    invoke-direct {v2, p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    move v1, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v8

    .line 197
    .local v8, "optimum":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :goto_1
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPointRef()[D

    move-result-object v0

    return-object v0

    .line 192
    .end local v8    # "optimum":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    new-instance v2, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-direct {v2, p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    move v1, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v8

    .restart local v8    # "optimum":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    goto :goto_1
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
    .line 153
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    .local p1, "f":Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;, "TT;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public getObservations()[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 2

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    return-object v0
.end method
