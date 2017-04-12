.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "ArcsSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;",
        "Ljava/lang/Iterable",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 56
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p5, p6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 74
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;>;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->check2PiConsistency()V

    .line 120
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->check2PiConsistency()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V
    .locals 6
    .param p2, "alpha"    # D
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;DZ)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v3, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    if-nez p4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v4

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    .line 825
    .local v0, "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 826
    .local v1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 828
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2

    .line 824
    .end local v0    # "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .end local v1    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 831
    .restart local v0    # "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .restart local v1    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_1
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    .line 832
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 833
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 834
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 836
    return-void
.end method

.method private static buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 14
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v8, 0x0

    move-wide/from16 v0, p2

    invoke-static {p0, p1, v0, v1, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v8

    if-nez v8, :cond_0

    sub-double v8, p2, p0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 135
    :cond_0
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 162
    :goto_0
    return-object v8

    .line 136
    :cond_1
    cmpl-double v8, p0, p2

    if-lez v8, :cond_2

    .line 137
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 142
    :cond_2
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-static {p0, p1, v8, v9}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v4

    .line 143
    .local v4, "normalizedLower":D
    sub-double v8, p2, p0

    add-double v6, v4, v8

    .line 144
    .local v6, "normalizedUpper":D
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v9, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v9, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    const/4 v10, 0x0

    move-wide/from16 v0, p4

    invoke-direct {v8, v9, v10, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v2

    .line 147
    .local v2, "lowerCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_3

    .line 149
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v9, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v9, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    const/4 v10, 0x1

    move-wide/from16 v0, p4

    invoke-direct {v8, v9, v10, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v3

    .line 151
    .local v3, "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v11, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-direct {v10, v3, v11, v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-direct {v8, v2, v9, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    .end local v3    # "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_3
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v9, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v10, v6, v10

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    const/4 v10, 0x1

    move-wide/from16 v0, p4

    invoke-direct {v8, v9, v10, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v3

    .line 162
    .restart local v3    # "upperCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    invoke-direct {v9, v3, v10, v11, v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-direct {v8, v2, v9, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private check2PiConsistency()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 181
    .local v0, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_1

    .line 195
    :cond_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 189
    .local v2, "stateBefore":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getLastLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 191
    .local v1, "stateAfter":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 192
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;-><init>()V

    throw v3
.end method

.method private childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 425
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0
.end method

.method private createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, "limits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 849
    const/4 v13, 0x0

    .line 900
    :goto_0
    return-object v13

    .line 853
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 854
    add-int/lit8 v13, v2, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    rem-int v3, v13, v14

    .line 855
    .local v3, "j":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 856
    .local v4, "lA":D
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v6

    .line 857
    .local v6, "lB":D
    sub-double v14, v6, v4

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v16

    cmpg-double v13, v14, v16

    if-gtz v13, :cond_1

    .line 859
    if-lez v3, :cond_2

    .line 861
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 862
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 863
    add-int/lit8 v2, v2, -0x1

    .line 853
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 868
    .local v8, "lEnd":D
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 869
    .local v10, "lStart":D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 871
    sub-double v14, v8, v10

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    cmpl-double v13, v14, v16

    if-lez v13, :cond_3

    .line 873
    new-instance v13, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    new-instance v14, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v14, v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v13, v14, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    goto/16 :goto_0

    .line 876
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 882
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 889
    .end local v3    # "j":I
    .end local v4    # "lA":D
    .end local v6    # "lB":D
    .end local v8    # "lEnd":D
    .end local v10    # "lStart":D
    :cond_5
    new-instance v12, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 890
    .local v12, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v2, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_6

    .line 891
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15, v13}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    .line 892
    add-int/lit8 v13, v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15, v13}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    .line 890
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 895
    :cond_6
    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v13

    if-nez v13, :cond_7

    .line 897
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 900
    :cond_7
    new-instance v13, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v14

    invoke-direct {v13, v12, v14, v15}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    goto/16 :goto_0
.end method

.method private getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 245
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    .line 250
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 253
    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 257
    goto :goto_0
.end method

.method private getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 213
    .end local p1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_0
    return-object p1

    .line 208
    .restart local p1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_0
    const/4 v1, 0x0

    .line 209
    .local v1, "smallest":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    move-object v0, p1

    .local v0, "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 210
    move-object v1, v0

    .line 209
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0
.end method

.method private getLastLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 233
    .end local p1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_0
    return-object p1

    .line 228
    .restart local p1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "largest":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    move-object v1, p1

    .local v1, "n":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_1
    if-eqz v1, :cond_1

    .line 230
    move-object v0, v1

    .line 229
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    goto :goto_1

    .line 233
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 394
    .local v0, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 301
    :goto_0
    return v0

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 296
    goto :goto_0

    .line 301
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 279
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 274
    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 381
    .local v0, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->isDirect()Z

    move-result v0

    return v0
.end method

.method private leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 367
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 371
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 352
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 356
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 318
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_1

    .line 321
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 338
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Arc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/oned/Arc;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 570
    .local v0, "a":[D
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    .end local v0    # "a":[D
    :cond_0
    return-object v9
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v0

    return-object v0
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 14

    .prologue
    .line 454
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_1

    .line 455
    sget-object v5, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 456
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    :goto_0
    invoke-virtual {p0, v10, v11}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setSize(D)V

    .line 475
    :goto_1
    return-void

    .line 456
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 458
    :cond_1
    const-wide/16 v6, 0x0

    .line 459
    .local v6, "size":D
    const-wide/16 v8, 0x0

    .line 460
    .local v8, "sum":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 461
    .local v0, "a":[D
    const/4 v5, 0x1

    aget-wide v10, v0, v5

    const/4 v5, 0x0

    aget-wide v12, v0, v5

    sub-double v2, v10, v12

    .line 462
    .local v2, "length":D
    add-double/2addr v6, v2

    .line 463
    const/4 v5, 0x0

    aget-wide v10, v0, v5

    const/4 v5, 0x1

    aget-wide v12, v0, v5

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    .line 464
    goto :goto_2

    .line 465
    .end local v0    # "a":[D
    .end local v2    # "length":D
    :cond_2
    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setSize(D)V

    .line 466
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v5, 0x0

    invoke-static {v6, v7, v10, v11, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 467
    sget-object v5, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 468
    :cond_3
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v5, v6, v10

    if-ltz v5, :cond_4

    .line 469
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v6

    div-double v10, v8, v10

    invoke-direct {v5, v10, v11}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 471
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    .line 472
    .local v4, "limit":Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1
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
    .line 584
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-object v0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    move-object/from16 v23, p1

    check-cast v23, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v8

    .line 486
    .local v8, "alpha":D
    const/16 v22, 0x0

    .line 487
    .local v22, "wrapFirst":Z
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 488
    .local v12, "first":D
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 489
    .local v18, "previous":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 491
    .local v6, "a":[D
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 493
    const/16 v23, 0x0

    aget-wide v12, v6, v23

    .line 496
    :cond_0
    if-nez v22, :cond_1

    .line 497
    const/16 v23, 0x0

    aget-wide v24, v6, v23

    cmpg-double v23, v8, v24

    if-gez v23, :cond_4

    .line 500
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 502
    const/16 v22, 0x1

    .line 524
    :cond_1
    const/16 v23, 0x1

    aget-wide v18, v6, v23

    goto :goto_0

    .line 504
    :cond_2
    sub-double v20, v8, v18

    .line 505
    .local v20, "previousOffset":D
    const/16 v23, 0x0

    aget-wide v24, v6, v23

    sub-double v10, v24, v8

    .line 506
    .local v10, "currentOffset":D
    cmpg-double v23, v20, v10

    if-gez v23, :cond_3

    .line 507
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    .line 552
    .end local v6    # "a":[D
    .end local v10    # "currentOffset":D
    .end local v20    # "previousOffset":D
    :goto_1
    return-object v23

    .line 509
    .restart local v6    # "a":[D
    .restart local v10    # "currentOffset":D
    .restart local v20    # "previousOffset":D
    :cond_3
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const/16 v25, 0x0

    aget-wide v26, v6, v25

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 512
    .end local v10    # "currentOffset":D
    .end local v20    # "previousOffset":D
    :cond_4
    const/16 v23, 0x1

    aget-wide v24, v6, v23

    cmpg-double v23, v8, v24

    if-gtz v23, :cond_1

    .line 515
    const/16 v23, 0x0

    aget-wide v24, v6, v23

    sub-double v14, v24, v8

    .line 516
    .local v14, "offset0":D
    const/16 v23, 0x1

    aget-wide v24, v6, v23

    sub-double v16, v8, v24

    .line 517
    .local v16, "offset1":D
    cmpg-double v23, v14, v16

    if-gez v23, :cond_5

    .line 518
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const/16 v25, 0x1

    aget-wide v26, v6, v25

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 520
    :cond_5
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const/16 v25, 0x0

    aget-wide v26, v6, v25

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v14, v15}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 527
    .end local v6    # "a":[D
    .end local v14    # "offset0":D
    .end local v16    # "offset1":D
    :cond_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 530
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/16 v24, 0x0

    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto :goto_1

    .line 536
    :cond_7
    if-eqz v22, :cond_9

    .line 538
    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v24, v18, v24

    sub-double v20, v8, v24

    .line 539
    .restart local v20    # "previousOffset":D
    sub-double v10, v12, v8

    .line 540
    .restart local v10    # "currentOffset":D
    cmpg-double v23, v20, v10

    if-gez v23, :cond_8

    .line 541
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto/16 :goto_1

    .line 543
    :cond_8
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-object/from16 v0, v24

    invoke-direct {v0, v12, v13}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto/16 :goto_1

    .line 547
    .end local v10    # "currentOffset":D
    .end local v20    # "previousOffset":D
    :cond_9
    sub-double v20, v8, v18

    .line 548
    .restart local v20    # "previousOffset":D
    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    add-double v24, v24, v12

    sub-double v10, v24, v8

    .line 549
    .restart local v10    # "currentOffset":D
    cmpg-double v23, v20, v10

    if-gez v23, :cond_a

    .line 550
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto/16 :goto_1

    .line 552
    :cond_a
    new-instance v23, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v24, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-object/from16 v0, v24

    invoke-direct {v0, v12, v13}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    goto/16 :goto_1
.end method

.method public side(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 18
    .param p1, "arc"    # Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    .prologue
    .line 711
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v16

    add-double v8, v14, v16

    .line 712
    .local v8, "reference":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v16

    sub-double v2, v14, v16

    .line 714
    .local v2, "arcLength":D
    const/4 v6, 0x0

    .line 715
    .local v6, "inMinus":Z
    const/4 v7, 0x0

    .line 716
    .local v7, "inPlus":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 717
    .local v0, "a":[D
    const/4 v14, 0x0

    aget-wide v14, v0, v14

    invoke-static {v14, v15, v8, v9}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v16

    sub-double v12, v14, v16

    .line 718
    .local v12, "syncedStart":D
    const/4 v14, 0x0

    aget-wide v14, v0, v14

    sub-double v4, v14, v12

    .line 719
    .local v4, "arcOffset":D
    const/4 v14, 0x1

    aget-wide v14, v0, v14

    sub-double v10, v14, v4

    .line 720
    .local v10, "syncedEnd":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v14

    sub-double v14, v2, v14

    cmpg-double v14, v12, v14

    if-lez v14, :cond_1

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v16

    add-double v14, v14, v16

    cmpl-double v14, v10, v14

    if-ltz v14, :cond_2

    .line 721
    :cond_1
    const/4 v6, 0x1

    .line 723
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTolerance()D

    move-result-wide v14

    add-double/2addr v14, v2

    cmpl-double v14, v10, v14

    if-ltz v14, :cond_0

    .line 724
    const/4 v7, 0x1

    goto :goto_0

    .line 728
    .end local v0    # "a":[D
    .end local v4    # "arcOffset":D
    .end local v10    # "syncedEnd":D
    .end local v12    # "syncedStart":D
    :cond_3
    if-eqz v6, :cond_5

    .line 729
    if-eqz v7, :cond_4

    .line 730
    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 738
    :goto_1
    return-object v14

    .line 732
    :cond_4
    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_1

    .line 735
    :cond_5
    if-eqz v7, :cond_6

    .line 736
    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_1

    .line 738
    :cond_6
    sget-object v14, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_1
.end method

.method public split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    .locals 24
    .param p1, "arc"    # Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    .prologue
    .line 752
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v8, "minus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v9, "plus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v22

    add-double v14, v20, v22

    .line 756
    .local v14, "reference":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v22

    sub-double v4, v20, v22

    .line 758
    .local v4, "arcLength":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 759
    .local v2, "a":[D
    const/16 v20, 0x0

    aget-wide v20, v2, v20

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v22

    sub-double v18, v20, v22

    .line 760
    .local v18, "syncedStart":D
    const/16 v20, 0x0

    aget-wide v20, v2, v20

    sub-double v6, v20, v18

    .line 761
    .local v6, "arcOffset":D
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    sub-double v16, v20, v6

    .line 762
    .local v16, "syncedEnd":D
    cmpg-double v20, v18, v4

    if-gez v20, :cond_2

    .line 764
    const/16 v20, 0x0

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    cmpl-double v20, v16, v4

    if-lez v20, :cond_1

    .line 768
    add-double v10, v4, v6

    .line 769
    .local v10, "minusToPlus":D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v20, v16, v20

    if-lez v20, :cond_0

    .line 774
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    add-double v12, v20, v6

    .line 775
    .local v12, "plusToMinus":D
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    .end local v12    # "plusToMinus":D
    :cond_0
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 784
    .end local v10    # "minusToPlus":D
    :cond_1
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 788
    :cond_2
    const/16 v20, 0x0

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v20, v16, v20

    if-lez v20, :cond_4

    .line 792
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    add-double v12, v20, v6

    .line 793
    .restart local v12    # "plusToMinus":D
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v4

    cmpl-double v20, v16, v20

    if-lez v20, :cond_3

    .line 798
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v4

    add-double v10, v20, v6

    .line 799
    .restart local v10    # "minusToPlus":D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 804
    .end local v10    # "minusToPlus":D
    :cond_3
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 808
    .end local v12    # "plusToMinus":D
    :cond_4
    const/16 v20, 0x1

    aget-wide v20, v2, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 813
    .end local v2    # "a":[D
    .end local v6    # "arcOffset":D
    .end local v16    # "syncedEnd":D
    .end local v18    # "syncedStart":D
    :cond_5
    new-instance v20, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v22

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;)V

    return-object v20
.end method
