.class Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$18;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$18;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 11
    .param p1, "x"    # [D

    .prologue
    const/4 v2, 0x1

    .line 688
    array-length v1, p1

    .line 691
    .local v1, "n":I
    new-array v6, v1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 692
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 693
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$18;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v10

    .line 698
    .local v10, "y":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v0, v10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 699
    .local v8, "jacobian":[[D
    new-array v9, v1, [I

    .line 700
    .local v9, "orders":[I
    const/4 v3, 0x0

    :goto_1
    array-length v0, v10

    if-ge v3, v0, :cond_2

    .line 701
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v1, :cond_1

    .line 702
    aput v2, v9, v7

    .line 703
    aget-object v0, v8, v3

    aget-object v4, v10, v3

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v4

    aput-wide v4, v0, v7

    .line 704
    const/4 v0, 0x0

    aput v0, v9, v7

    .line 701
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 700
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 708
    .end local v7    # "j":I
    :cond_2
    return-object v8
.end method
