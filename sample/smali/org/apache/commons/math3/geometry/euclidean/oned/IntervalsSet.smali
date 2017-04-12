.class public Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "IntervalsSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;",
        "Ljava/lang/Iterable",
        "<[D>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    .line 107
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 46
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    .line 119
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "tolerance"    # D

    .prologue
    .line 57
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p5, p6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Ljava/util/Collection;D)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;>;D)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstIntervalBoundary()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private static buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 10
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 171
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    cmpg-double v2, p0, v6

    if-gez v2, :cond_1

    .line 172
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    cmpl-double v2, p2, v6

    if-lez v2, :cond_0

    .line 174
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-object v2

    .line 177
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v3, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-direct {v2, v3, v5, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v1

    .line 179
    .local v1, "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v1, v3, v4, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v1    # "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v3, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v0

    .line 186
    .local v0, "lowerCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    cmpl-double v2, p2, v6

    if-lez v2, :cond_2

    .line 188
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3, v4, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v3, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-direct {v2, v3, v5, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v1

    .line 197
    .restart local v1    # "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v1, v5, v6, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3, v4, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0
.end method

.method private childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0
.end method

.method private finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 316
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    goto :goto_0
.end method

.method private getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstIntervalBoundary()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 368
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 380
    :goto_0
    return-object v1

    .line 373
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 376
    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 380
    goto :goto_0
.end method

.method private getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    .end local p1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_0
    return-object p1

    .line 351
    .restart local p1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :cond_0
    const/4 v1, 0x0

    .line 352
    .local v1, "smallest":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p1

    .local v0, "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 353
    move-object v1, v0

    .line 352
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    .line 356
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0
.end method

.method private isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const/4 v1, 0x0

    .line 516
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 517
    .local v0, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const/4 v1, 0x0

    .line 503
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 504
    .local v0, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result v0

    return v0
.end method

.method private isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const/4 v1, 0x0

    .line 412
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 424
    :goto_0
    return v0

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 419
    goto :goto_0

    .line 424
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const/4 v1, 0x0

    .line 390
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 402
    :goto_0
    return v0

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 397
    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 490
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 494
    :cond_0
    return-object p1
.end method

.method private leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 475
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 479
    :cond_0
    return-object p1
.end method

.method private nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 441
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0
.end method

.method private previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    .line 461
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_1

    .line 464
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 335
    .local v0, "a":[D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    .end local v0    # "a":[D
    :cond_0
    return-object v2
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 216
    invoke-virtual {p0, v10}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    if-nez v6, :cond_1

    .line 217
    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 218
    invoke-virtual {p0, v10}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->setSize(D)V

    .line 235
    :goto_1
    return-void

    .line 218
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 220
    :cond_1
    const-wide/16 v2, 0x0

    .line 221
    .local v2, "size":D
    const-wide/16 v4, 0x0

    .line 222
    .local v4, "sum":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 223
    .local v1, "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSize()D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 224
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSize()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getBarycenter()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    goto :goto_2

    .line 226
    .end local v1    # "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    :cond_2
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->setSize(D)V

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 229
    :cond_3
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_4

    .line 230
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    div-double v8, v4, v2

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {p0, v10}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1
.end method

.method public getInf()D
    .locals 5

    .prologue
    .line 244
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 245
    .local v2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 246
    .local v0, "inf":D
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 248
    .local v3, "op":Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    .line 249
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 250
    :goto_1
    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    goto :goto_1

    .line 251
    .end local v3    # "op":Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .end local v0    # "inf":D
    :cond_2
    return-wide v0
.end method

.method public getSup()D
    .locals 5

    .prologue
    .line 261
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 262
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 263
    .local v2, "sup":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 264
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 265
    .local v1, "op":Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    .line 266
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 267
    :goto_1
    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    .line 268
    .end local v1    # "op":Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .end local v2    # "sup":D
    :cond_2
    return-wide v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    return-object v0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object/from16 v20, p1

    check-cast v20, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v18

    .line 280
    .local v18, "x":D
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 281
    .local v14, "previous":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 282
    .local v6, "a":[D
    const/16 v20, 0x0

    aget-wide v20, v6, v20

    cmpg-double v20, v18, v20

    if-gez v20, :cond_1

    .line 285
    sub-double v16, v18, v14

    .line 286
    .local v16, "previousOffset":D
    const/16 v20, 0x0

    aget-wide v20, v6, v20

    sub-double v8, v20, v18

    .line 287
    .local v8, "currentOffset":D
    cmpg-double v20, v16, v8

    if-gez v20, :cond_0

    .line 288
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    .line 307
    .end local v6    # "a":[D
    .end local v8    # "currentOffset":D
    .end local v16    # "previousOffset":D
    :goto_1
    return-object v20

    .line 290
    .restart local v6    # "a":[D
    .restart local v8    # "currentOffset":D
    .restart local v16    # "previousOffset":D
    :cond_0
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/16 v21, 0x0

    aget-wide v22, v6, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 292
    .end local v8    # "currentOffset":D
    .end local v16    # "previousOffset":D
    :cond_1
    const/16 v20, 0x1

    aget-wide v20, v6, v20

    cmpg-double v20, v18, v20

    if-gtz v20, :cond_3

    .line 295
    const/16 v20, 0x0

    aget-wide v20, v6, v20

    sub-double v10, v20, v18

    .line 296
    .local v10, "offset0":D
    const/16 v20, 0x1

    aget-wide v20, v6, v20

    sub-double v12, v18, v20

    .line 297
    .local v12, "offset1":D
    cmpg-double v20, v10, v12

    if-gez v20, :cond_2

    .line 298
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/16 v21, 0x1

    aget-wide v22, v6, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 300
    :cond_2
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/16 v21, 0x0

    aget-wide v22, v6, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 303
    .end local v10    # "offset0":D
    .end local v12    # "offset1":D
    :cond_3
    const/16 v20, 0x1

    aget-wide v14, v6, v20

    goto/16 :goto_0

    .line 307
    .end local v6    # "a":[D
    :cond_4
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v21

    sub-double v22, v18, v14

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1
.end method
