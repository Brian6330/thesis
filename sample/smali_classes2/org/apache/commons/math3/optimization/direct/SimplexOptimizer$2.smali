.class Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;
.super Ljava/lang/Object;
.source "SimplexOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/optimization/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;

.field final synthetic val$isMinim:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;Z)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;->this$0:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;

    iput-boolean p2, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;->val$isMinim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;->compare(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I
    .locals 5
    .param p1, "o1"    # Lorg/apache/commons/math3/optimization/PointValuePair;
    .param p2, "o2"    # Lorg/apache/commons/math3/optimization/PointValuePair;

    .prologue
    .line 200
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 201
    .local v0, "v1":D
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 202
    .local v2, "v2":D
    iget-boolean v4, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;->val$isMinim:Z

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_0
.end method
