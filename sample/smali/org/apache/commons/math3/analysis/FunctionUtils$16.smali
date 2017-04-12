.class final Lorg/apache/commons/math3/analysis/FunctionUtils$16;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;)V

    return-object v0
.end method

.method public partialDerivative(I)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1
    .param p1, "k"    # I

    .prologue
    .line 538
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;I)V

    return-object v0
.end method

.method public value([D)D
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 533
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method
