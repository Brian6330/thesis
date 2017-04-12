.class Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;
.super Ljava/lang/Object;
.source "BaseMultivariateVectorMultiStartOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->sortPairs([D[D)V
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
        "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;

.field final synthetic val$target:[D

.field final synthetic val$weights:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;[D[D)V
    .locals 0

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->this$0:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->val$target:[D

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->val$weights:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private weightedResidual(Lorg/apache/commons/math3/optimization/PointVectorValuePair;)D
    .locals 10
    .param p1, "pv"    # Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer.1;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getValueRef()[D

    move-result-object v1

    .line 195
    .local v1, "value":[D
    const-wide/16 v4, 0x0

    .line 196
    .local v4, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 197
    aget-wide v6, v1, v0

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->val$target:[D

    aget-wide v8, v8, v0

    sub-double v2, v6, v8

    .line 198
    .local v2, "ri":D
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->val$weights:[D

    aget-wide v6, v6, v0

    mul-double/2addr v6, v2

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "ri":D
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer.1;"
    check-cast p1, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->compare(Lorg/apache/commons/math3/optimization/PointVectorValuePair;Lorg/apache/commons/math3/optimization/PointVectorValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/optimization/PointVectorValuePair;Lorg/apache/commons/math3/optimization/PointVectorValuePair;)I
    .locals 4
    .param p1, "o1"    # Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .param p2, "o2"    # Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer.1;"
    if-nez p1, :cond_1

    .line 187
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    if-nez p2, :cond_2

    .line 189
    const/4 v0, -0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->weightedResidual(Lorg/apache/commons/math3/optimization/PointVectorValuePair;)D

    move-result-wide v0

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;->weightedResidual(Lorg/apache/commons/math3/optimization/PointVectorValuePair;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method
