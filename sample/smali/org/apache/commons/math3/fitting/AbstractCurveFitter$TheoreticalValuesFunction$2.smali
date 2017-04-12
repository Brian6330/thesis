.class Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;
.super Ljava/lang/Object;
.source "AbstractCurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
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
    .line 135
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 6
    .param p1, "p"    # [D

    .prologue
    .line 137
    iget-object v3, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->access$000(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)[D

    move-result-object v3

    array-length v2, v3

    .line 138
    .local v2, "len":I
    new-array v1, v2, [[D

    .line 139
    .local v1, "jacobian":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 140
    iget-object v3, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->access$100(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;->this$0:Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    # getter for: Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D
    invoke-static {v4}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->access$000(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)[D

    move-result-object v4

    aget-wide v4, v4, v0

    invoke-interface {v3, v4, v5, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->gradient(D[D)[D

    move-result-object v3

    aput-object v3, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method
