.class Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;
.super Ljava/lang/Object;
.source "CurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;)V
    .locals 0

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 8
    .param p1, "point"    # [D

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction.1;"
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    iget-object v5, v5, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [[D

    .line 220
    .local v3, "jacobian":[[D
    const/4 v0, 0x0

    .line 221
    .local v0, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    iget-object v5, v5, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

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

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 222
    .local v4, "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->access$100(Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->gradient(D[D)[D

    move-result-object v5

    aput-object v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 225
    .end local v4    # "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    :cond_0
    return-object v3
.end method
