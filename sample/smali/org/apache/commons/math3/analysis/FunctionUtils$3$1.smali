.class Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$3;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$3;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 124
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 125
    .local v2, "p":D
    move-wide v4, p1

    .line 126
    .local v4, "r":D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v1, v1, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 127
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v1, v1, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 128
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v1, v1, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v1, v1, v0

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v4

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    :cond_0
    return-wide v2
.end method
