.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;
.super Ljava/lang/Object;
.source "SimplexOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 2
    .param p1, "point"    # [D

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->computeObjectiveValue([D)D

    move-result-wide v0

    return-wide v0
.end method