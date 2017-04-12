.class Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$14;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$14;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$14;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 465
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$14;

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$14;->val$f:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move v2, v1

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    new-array v2, v1, [I

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v0

    return-wide v0
.end method
