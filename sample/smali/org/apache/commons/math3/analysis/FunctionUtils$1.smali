.class final Lorg/apache/commons/math3/analysis/FunctionUtils$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->compose([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method constructor <init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;->val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 54
    move-wide v2, p1

    .line 55
    .local v2, "r":D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;->val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 56
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;->val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    .line 55
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 58
    :cond_0
    return-wide v2
.end method
