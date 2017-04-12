.class Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$9;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$9;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 9
    .param p1, "x"    # D

    .prologue
    .line 299
    const-wide/16 v4, 0x0

    .line 300
    .local v4, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v6, v6, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 301
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v6, v6, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v6, v6, v0

    invoke-interface {v6}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    .line 302
    .local v2, "prod":D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v6, v6, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 303
    if-eq v0, v1, :cond_0

    .line 304
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v6, v6, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v6, v6, v1

    invoke-interface {v6, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_1
    add-double/2addr v4, v2

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "j":I
    .end local v2    # "prod":D
    :cond_2
    return-wide v4
.end method
