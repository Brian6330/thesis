.class final Lorg/apache/commons/math3/analysis/FunctionUtils$2;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->compose([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method constructor <init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5
    .param p1, "t"    # D

    .prologue
    .line 78
    move-wide v2, p1

    .line 79
    .local v2, "r":D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 80
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(D)D

    move-result-wide v2

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 82
    :cond_0
    return-wide v2
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 3
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .line 87
    move-object v1, p1

    .line 88
    .local v1, "r":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 89
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method
