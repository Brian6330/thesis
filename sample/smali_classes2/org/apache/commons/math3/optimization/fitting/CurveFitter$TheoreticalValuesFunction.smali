.class Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;
.super Ljava/lang/Object;
.source "CurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TheoreticalValuesFunction"
.end annotation


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .prologue
    .line 252
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 254
    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8
    .param p1, "point"    # [D

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [D

    .line 260
    .local v4, "values":[D
    const/4 v0, 0x0

    .line 261
    .local v0, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 262
    .local v3, "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 265
    .end local v3    # "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    :cond_0
    return-object v4
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 13
    .param p1, "point"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    const/4 v2, 0x1

    .line 272
    array-length v0, p1

    new-array v10, v0, [D

    .line 273
    .local v10, "parameters":[D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_0

    .line 274
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    aput-wide v0, v10, v3

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 279
    .local v11, "values":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v6, 0x0

    .line 280
    .local v6, "i":I
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 284
    .local v9, "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    new-instance v12, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v9}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    invoke-interface {v1, v4, v5, v10}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v4

    invoke-direct {v12, v0, v2, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 285
    .local v12, "vi":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v3, 0x0

    :goto_2
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 286
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v1, p1

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-virtual {v12, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v12

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 289
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aput-object v12, v11, v6

    move v6, v7

    .line 291
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 293
    .end local v9    # "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .end local v12    # "vi":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_2
    return-object v11
.end method
