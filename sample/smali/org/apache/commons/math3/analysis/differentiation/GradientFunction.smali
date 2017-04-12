.class public Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;
.super Ljava/lang/Object;
.source "GradientFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    .line 38
    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 10
    .param p1, "point"    # [D

    .prologue
    const/4 v2, 0x1

    .line 44
    array-length v0, p1

    new-array v6, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 45
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_0

    .line 46
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v1, p1

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    .line 53
    .local v7, "dsY":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v0, p1

    new-array v9, v0, [D

    .line 54
    .local v9, "y":[D
    array-length v0, p1

    new-array v8, v0, [I

    .line 55
    .local v8, "orders":[I
    const/4 v3, 0x0

    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 56
    aput v2, v8, v3

    .line 57
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v0

    aput-wide v0, v9, v3

    .line 58
    const/4 v0, 0x0

    aput v0, v8, v3

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    :cond_1
    return-object v9
.end method
