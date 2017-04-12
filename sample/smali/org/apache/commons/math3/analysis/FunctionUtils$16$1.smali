.class Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$16;->partialDerivative(I)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

.field final synthetic val$k:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;I)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iput p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->val$k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 10
    .param p1, "x"    # [D

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 542
    array-length v8, p1

    .line 545
    .local v8, "n":I
    new-array v6, v8, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 546
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 547
    iget v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->val$k:I

    if-ne v7, v0, :cond_0

    .line 548
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v4, p1, v7

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v7

    .line 546
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 550
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v4, p1, v7

    invoke-direct {v0, v1, v1, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    aput-object v0, v6, v7

    goto :goto_1

    .line 553
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    .line 556
    .local v9, "y":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    new-array v0, v1, [I

    aput v1, v0, v3

    invoke-virtual {v9, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v0

    return-wide v0
.end method
