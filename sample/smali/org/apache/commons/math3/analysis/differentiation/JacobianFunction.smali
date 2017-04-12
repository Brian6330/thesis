.class public Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;
.super Ljava/lang/Object;
.source "JacobianFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .line 40
    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 11
    .param p1, "point"    # [D

    .prologue
    const/4 v2, 0x1

    .line 46
    array-length v0, p1

    new-array v6, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 47
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_0

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v1, p1

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    .line 55
    .local v7, "dsY":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v0, v7

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 56
    .local v10, "y":[[D
    array-length v0, p1

    new-array v9, v0, [I

    .line 57
    .local v9, "orders":[I
    const/4 v3, 0x0

    :goto_1
    array-length v0, v7

    if-ge v3, v0, :cond_2

    .line 58
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 59
    aput v2, v9, v8

    .line 60
    aget-object v0, v10, v3

    aget-object v1, v7, v3

    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v4

    aput-wide v4, v0, v8

    .line 61
    const/4 v0, 0x0

    aput v0, v9, v8

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v8    # "j":I
    :cond_2
    return-object v10
.end method
