.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V
    .locals 1

    .prologue
    .line 934
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    .line 936
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .param p1, "x1"    # [D

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    return-object v0
.end method

.method private penalty([D[D)D
    .locals 10
    .param p1, "x"    # [D
    .param p2, "repaired"    # [D

    .prologue
    .line 1003
    const-wide/16 v4, 0x0

    .line 1004
    .local v4, "penalty":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1005
    aget-wide v6, p1, v2

    aget-wide v8, p2, v2

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 1006
    .local v0, "diff":D
    add-double/2addr v4, v0

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    .end local v0    # "diff":D
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v4    # "penalty":D
    :goto_1
    return-wide v4

    .restart local v4    # "penalty":D
    :cond_1
    neg-double v4, v4

    goto :goto_1
.end method

.method private repair([D)[D
    .locals 8
    .param p1, "x"    # [D

    .prologue
    .line 981
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 982
    .local v1, "lB":[D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v3

    .line 984
    .local v3, "uB":[D
    array-length v4, p1

    new-array v2, v4, [D

    .line 985
    .local v2, "repaired":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 986
    aget-wide v4, p1, v0

    aget-wide v6, v1, v0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 987
    aget-wide v4, v1, v0

    aput-wide v4, v2, v0

    .line 985
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_0
    aget-wide v4, p1, v0

    aget-wide v6, v3, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 989
    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    goto :goto_1

    .line 991
    :cond_1
    aget-wide v4, p1, v0

    aput-wide v4, v2, v0

    goto :goto_1

    .line 994
    :cond_2
    return-object v2
.end method


# virtual methods
.method public isFeasible([D)Z
    .locals 8
    .param p1, "x"    # [D

    .prologue
    const/4 v3, 0x0

    .line 962
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 963
    .local v1, "lB":[D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v2

    .line 965
    .local v2, "uB":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 966
    aget-wide v4, p1, v0

    aget-wide v6, v1, v0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 973
    :cond_0
    :goto_1
    return v3

    .line 969
    :cond_1
    aget-wide v4, p1, v0

    aget-wide v6, v2, v0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .locals 6
    .param p1, "point"    # [D

    .prologue
    .line 944
    const-wide/16 v0, 0x0

    .line 945
    .local v0, "penalty":D
    iget-boolean v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v3, :cond_0

    .line 946
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v2

    .line 947
    .local v2, "repaired":[D
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v4

    .line 948
    .local v4, "value":D
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v0

    .line 952
    .end local v2    # "repaired":[D
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 953
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 954
    :goto_2
    new-instance v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;-><init>(DD)V

    return-object v3

    .line 950
    .end local v4    # "value":D
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v4

    .restart local v4    # "value":D
    goto :goto_0

    .line 952
    :cond_1
    neg-double v4, v4

    goto :goto_1

    .line 953
    :cond_2
    neg-double v0, v0

    goto :goto_2
.end method
