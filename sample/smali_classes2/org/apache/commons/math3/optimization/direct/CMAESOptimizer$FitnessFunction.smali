.class Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

.field private valueRange:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V
    .locals 2

    .prologue
    .line 1016
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    .line 1019
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
    .param p1, "x1"    # [D

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    return-object v0
.end method

.method private penalty([D[D)D
    .locals 10
    .param p1, "x"    # [D
    .param p2, "repaired"    # [D

    .prologue
    .line 1090
    const-wide/16 v4, 0x0

    .line 1091
    .local v4, "penalty":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1092
    aget-wide v6, p1, v2

    aget-wide v8, p2, v2

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 1093
    .local v0, "diff":D
    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    .end local v0    # "diff":D
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z

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
    .line 1068
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 1069
    .local v1, "lB":[D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v3

    .line 1071
    .local v3, "uB":[D
    array-length v4, p1

    new-array v2, v4, [D

    .line 1072
    .local v2, "repaired":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 1073
    aget-wide v4, p1, v0

    aget-wide v6, v1, v0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1074
    aget-wide v4, v1, v0

    aput-wide v4, v2, v0

    .line 1072
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    aget-wide v4, p1, v0

    aget-wide v6, v3, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 1076
    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    goto :goto_1

    .line 1078
    :cond_1
    aget-wide v4, p1, v0

    aput-wide v4, v2, v0

    goto :goto_1

    .line 1081
    :cond_2
    return-object v2
.end method


# virtual methods
.method public isFeasible([D)Z
    .locals 8
    .param p1, "x"    # [D

    .prologue
    const/4 v3, 0x0

    .line 1042
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 1043
    .local v1, "lB":[D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v2

    .line 1045
    .local v2, "uB":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 1046
    aget-wide v4, p1, v0

    aget-wide v6, v1, v0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 1053
    :cond_0
    :goto_1
    return v3

    .line 1049
    :cond_1
    aget-wide v4, p1, v0

    aget-wide v6, v2, v0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setValueRange(D)V
    .locals 1
    .param p1, "valueRange"    # D

    .prologue
    .line 1060
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    .line 1061
    return-void
.end method

.method public value([D)D
    .locals 8
    .param p1, "point"    # [D

    .prologue
    .line 1027
    iget-boolean v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v1, :cond_0

    .line 1028
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    .line 1029
    .local v0, "repaired":[D
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v4

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v6

    add-double v2, v4, v6

    .line 1034
    .end local v0    # "repaired":[D
    .local v2, "value":D
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v2    # "value":D
    :goto_1
    return-wide v2

    .line 1032
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v2

    .restart local v2    # "value":D
    goto :goto_0

    .line 1034
    :cond_1
    neg-double v2, v2

    goto :goto_1
.end method
