.class Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;
.super Ljava/lang/Object;
.source "CurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)V
    .locals 0

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;, "Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8
    .param p1, "point"    # [D

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;, "Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction.1;"
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    iget-object v5, v5, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/fitting/CurveFitter;

    # getter for: Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;
    invoke-static {v5}, Lorg/apache/commons/math3/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [D

    .line 206
    .local v4, "values":[D
    const/4 v0, 0x0

    .line 207
    .local v0, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    iget-object v5, v5, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/fitting/CurveFitter;

    # getter for: Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;
    invoke-static {v5}, Lorg/apache/commons/math3/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;

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

    check-cast v3, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 208
    .local v3, "observed":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    invoke-static {v5}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->access$100(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 211
    .end local v3    # "observed":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_0
    return-object v4
.end method