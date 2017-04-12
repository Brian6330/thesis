.class final Lorg/apache/commons/math3/analysis/FunctionUtils$18;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    .prologue
    .line 684
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$18;)V

    return-object v0
.end method

.method public value([D)[D
    .locals 1
    .param p1, "x"    # [D

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([D)[D

    move-result-object v0

    return-object v0
.end method
