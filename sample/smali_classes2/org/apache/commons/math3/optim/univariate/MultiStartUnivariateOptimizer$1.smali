.class Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;
.super Ljava/lang/Object;
.source "MultiStartUnivariateOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
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
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;

.field final synthetic val$goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;

    iput-object p2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->val$goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->compare(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)I
    .locals 6
    .param p1, "o1"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .param p2, "o2"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .prologue
    .line 215
    if-nez p1, :cond_1

    .line 216
    if-nez p2, :cond_0

    const/4 v4, 0x0

    .line 222
    :goto_0
    return v4

    .line 216
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 217
    :cond_1
    if-nez p2, :cond_2

    .line 218
    const/4 v4, -0x1

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    .line 221
    .local v0, "v1":D
    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    .line 222
    .local v2, "v2":D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->val$goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    sget-object v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v4, v5, :cond_3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_0
.end method
