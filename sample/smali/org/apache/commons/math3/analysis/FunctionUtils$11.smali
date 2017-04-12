.class final Lorg/apache/commons/math3/analysis/FunctionUtils$11;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field final synthetic val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field final synthetic val$initialValue:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/BivariateFunction;DLorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$initialValue:D

    iput-object p4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 10
    .param p1, "point"    # [D

    .prologue
    .line 352
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$initialValue:D

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    const/4 v7, 0x0

    aget-wide v8, p1, v7

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide v2

    .line 353
    .local v2, "result":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 354
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    aget-wide v6, p1, v0

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide v2

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-wide v2
.end method
