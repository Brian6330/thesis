.class final Lorg/apache/commons/math3/analysis/FunctionUtils$6;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->add([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method constructor <init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$6;)V

    return-object v0
.end method

.method public value(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 202
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v2

    .line 203
    .local v2, "r":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-wide v2
.end method
