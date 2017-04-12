.class Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;
.super Ljava/lang/Object;
.source "PowellOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

.field final synthetic val$d:[D

.field final synthetic val$n:I

.field final synthetic val$p:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;I[D[D)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->this$1:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    iput p2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$n:I

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$p:[D

    iput-object p4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$d:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 9
    .param p1, "alpha"    # D

    .prologue
    .line 334
    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$n:I

    new-array v1, v4, [D

    .line 335
    .local v1, "x":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$n:I

    if-ge v0, v4, :cond_0

    .line 336
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$p:[D

    aget-wide v4, v4, v0

    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$d:[D

    aget-wide v6, v6, v0

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    aput-wide v4, v1, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->this$1:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    iget-object v4, v4, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v2

    .line 339
    .local v2, "obj":D
    return-wide v2
.end method
