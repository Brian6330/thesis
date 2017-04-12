.class Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;
.super Ljava/lang/Object;
.source "CurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OldTheoreticalValuesFunction"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .prologue
    .line 210
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.OldTheoreticalValuesFunction;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 212
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-object v0
.end method


# virtual methods
.method public jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.OldTheoreticalValuesFunction;"
    new-instance v0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction$1;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;)V

    return-object v0
.end method

.method public value([D)[D
    .locals 8
    .param p1, "point"    # [D

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.OldTheoreticalValuesFunction;"
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    # getter for: Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;
    invoke-static {v5}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [D

    .line 234
    .local v4, "values":[D
    const/4 v0, 0x0

    .line 235
    .local v0, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    # getter for: Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;
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

    .line 236
    .local v3, "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 239
    .end local v3    # "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    :cond_0
    return-object v4
.end method
