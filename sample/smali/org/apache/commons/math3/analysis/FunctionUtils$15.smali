.class final Lorg/apache/commons/math3/analysis/FunctionUtils$15;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toUnivariateDifferential(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 13
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 497
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 514
    new-instance v6, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8, v10}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v6

    .line 499
    :pswitch_0
    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v7

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    invoke-interface {v8, v10, v11}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v8

    invoke-direct {v6, v7, v12, v8, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 511
    :goto_0
    return-object v6

    .line 501
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v5

    .line 502
    .local v5, "parameters":I
    add-int/lit8 v6, v5, 0x1

    new-array v0, v6, [D

    .line 503
    .local v0, "derivatives":[D
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v6

    aput-wide v6, v0, v12

    .line 504
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-interface {v6}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    .line 505
    .local v2, "fPrime":D
    new-array v4, v5, [I

    .line 506
    .local v4, "orders":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 507
    aput v10, v4, v1

    .line 508
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v8

    mul-double/2addr v8, v2

    aput-wide v8, v0, v6

    .line 509
    aput v12, v4, v1

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v6, v5, v10, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
