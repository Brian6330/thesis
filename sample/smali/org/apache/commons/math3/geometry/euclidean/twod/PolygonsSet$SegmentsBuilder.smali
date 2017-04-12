.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
.super Ljava/lang/Object;
.source "PolygonsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->tolerance:D

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    .line 1067
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Iterable;Z)V
    .locals 20
    .param p4, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p3, "splitters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    move-object/from16 v16, p1

    check-cast v16, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 1104
    .local v16, "absSub":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 1105
    .local v12, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v19

    .line 1106
    .local v19, "intervals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 1109
    .local v17, "i":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .line 1111
    .local v4, "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 1115
    .local v3, "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->selectClosest(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    .line 1116
    .local v8, "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->selectClosest(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    .line 1118
    .local v7, "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    if-eqz p4, :cond_2

    .line 1119
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1109
    .end local v3    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v4    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v7    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v8    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    goto :goto_1

    .line 1111
    .restart local v4    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    goto :goto_2

    .line 1122
    .restart local v3    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v7    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v8    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-object v10, v4

    move-object v11, v3

    move-object/from16 v13, p2

    move-object v14, v8

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1127
    .end local v3    # "endV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v4    # "startV":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v7    # "endN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v8    # "startN":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v17    # "i":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    :cond_3
    return-void
.end method

.method private selectClosest(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 10
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1136
    .local p2, "candidates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    const/4 v6, 0x0

    .line 1137
    .local v6, "selected":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1139
    .local v4, "min":D
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 1140
    .local v3, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    invoke-interface {v7, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 1141
    .local v0, "distance":D
    cmpg-double v7, v0, v4

    if-gez v7, :cond_0

    .line 1142
    move-object v6, v3

    .line 1143
    move-wide v4, v0

    goto :goto_0

    .line 1147
    .end local v0    # "distance":D
    .end local v3    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->tolerance:D

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_2

    .end local v6    # "selected":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_1
    return-object v6

    .restart local v6    # "selected":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->segments:Ljava/util/List;

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 1078
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v1

    .line 1079
    .local v1, "splitters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Iterable;Z)V

    .line 1082
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1083
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Iterable;Z)V

    .line 1085
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
