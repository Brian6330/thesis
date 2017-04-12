.class Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;
.super Ljava/lang/Object;
.source "AbstractCurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 6
    .param p1, "p"    # [D

    .prologue
    .line 120
    iget-object v3, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->access$000(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)[D

    move-result-object v3

    array-length v1, v3

    .line 121
    .local v1, "len":I
    new-array v2, v1, [D

    .line 122
    .local v2, "values":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    iget-object v3, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->access$100(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D
    invoke-static {v4}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->access$000(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)[D

    move-result-object v4

    aget-wide v4, v4, v0

    invoke-interface {v3, v4, v5, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v2
.end method
