.class Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;
.super Ljava/lang/Object;
.source "BaseMultivariateMultiStartOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
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
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;

.field final synthetic val$goal:Lorg/apache/commons/math3/optimization/GoalType;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 0

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->this$0:Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->val$goal:Lorg/apache/commons/math3/optimization/GoalType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer.1;"
    check-cast p1, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->compare(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I
    .locals 6
    .param p1, "o1"    # Lorg/apache/commons/math3/optimization/PointValuePair;
    .param p2, "o2"    # Lorg/apache/commons/math3/optimization/PointValuePair;

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer.1;"
    if-nez p1, :cond_1

    .line 181
    if-nez p2, :cond_0

    const/4 v4, 0x0

    .line 187
    :goto_0
    return v4

    .line 181
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 182
    :cond_1
    if-nez p2, :cond_2

    .line 183
    const/4 v4, -0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 186
    .local v0, "v1":D
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 187
    .local v2, "v2":D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->val$goal:Lorg/apache/commons/math3/optimization/GoalType;

    sget-object v5, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v4, v5, :cond_3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_0
.end method
