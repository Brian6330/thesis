.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$1;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    .line 163
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 56
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 13
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(DDDDD)V

    .line 217
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .param p9, "tolerance"    # D

    .prologue
    .line 120
    invoke-static/range {p1 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-direct {p0, v0, p9, p10}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;D)V

    .line 121
    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 1
    .param p1, "hyperplaneThickness"    # D
    .param p3, "vertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 154
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 155
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
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    .line 204
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
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;D)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 178
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
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 81
    return-void
.end method

.method private static boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 10
    .param p0, "xMin"    # D
    .param p2, "xMax"    # D
    .param p4, "yMin"    # D
    .param p6, "yMax"    # D
    .param p8, "tolerance"    # D

    .prologue
    .line 230
    sub-double v6, p2, p8

    cmpl-double v6, p0, v6

    if-gez v6, :cond_0

    sub-double v6, p6, p8

    cmpl-double v6, p4, v6

    if-ltz v6, :cond_1

    .line 232
    :cond_0
    const/4 v6, 0x0

    .line 238
    :goto_0
    return-object v6

    .line 234
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v5, p0, p1, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 235
    .local v5, "minMin":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-wide/from16 v0, p6

    invoke-direct {v4, p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 236
    .local v4, "minMax":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v3, p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 237
    .local v3, "maxMin":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-wide/from16 v0, p6

    invoke-direct {v2, p2, p3, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 238
    .local v2, "maxMax":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v6, 0x4

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 v7, 0x0

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-wide/from16 v0, p8

    invoke-direct {v8, v5, v3, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-wide/from16 v0, p8

    invoke-direct {v8, v3, v2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-wide/from16 v0, p8

    invoke-direct {v8, v2, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-wide/from16 v0, p8

    invoke-direct {v8, v4, v5, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    aput-object v8, v6, v7

    goto :goto_0
.end method

.method private closeVerticesConnections(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const/4 v1, 0x0

    .line 843
    .local v1, "connected":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 844
    .local v7, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 845
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 846
    .local v4, "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v10, 0x0

    .line 847
    .local v10, "selectedNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 848
    .local v8, "min":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 849
    .local v0, "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 850
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    invoke-static {v4, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v2

    .line 851
    .local v2, "distance":D
    cmpg-double v11, v2, v8

    if-gez v11, :cond_1

    .line 852
    move-object v10, v0

    .line 853
    move-wide v8, v2

    goto :goto_1

    .line 857
    .end local v0    # "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v2    # "distance":D
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v12

    cmpg-double v11, v8, v12

    if-gtz v11, :cond_0

    .line 859
    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 860
    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v4    # "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v8    # "min":D
    .end local v10    # "selectedNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_3
    return v1
.end method

.method private filterSpuriousVertices(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 932
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 933
    .local v10, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    add-int/lit8 v0, v6, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v8, v0, v1

    .line 934
    .local v8, "j":I
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 935
    .local v9, "next":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    if-eqz v9, :cond_0

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v0

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v2

    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {p1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 940
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v6, v7

    .line 931
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 943
    .end local v8    # "j":I
    .end local v9    # "next":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .end local v10    # "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    :cond_1
    return-void
.end method

.method private followLoop(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)Ljava/util/List;
    .locals 6
    .param p1, "defining"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v0, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 897
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v1

    .line 898
    .local v1, "next":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_0
    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    .line 899
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 901
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v1

    goto :goto_0

    .line 904
    :cond_0
    if-nez v1, :cond_1

    .line 907
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v2

    .line 908
    .local v2, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_1
    if-eqz v2, :cond_1

    .line 909
    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 910
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 911
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v2

    goto :goto_1

    .line 916
    .end local v2    # "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->filterSpuriousVertices(Ljava/util/List;)V

    .line 918
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 920
    const/4 v0, 0x0

    .line 922
    .end local v0    # "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    :cond_2
    return-object v0
.end method

.method private getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 875
    .local v1, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->isProcessed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 879
    .end local v1    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 22
    .param p0, "hyperplaneThickness"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p3, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    const/4 v9, 0x0

    .line 327
    .local v9, "index":I
    const/4 v11, 0x0

    .local v11, "inserted":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    move v10, v9

    .line 328
    .end local v9    # "index":I
    .local v10, "index":I
    :goto_0
    if-nez v11, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 329
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "inserted":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 330
    .restart local v11    # "inserted":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    if-nez v19, :cond_1

    .line 331
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 332
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->setNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_0

    .line 334
    .end local v10    # "index":I
    .restart local v9    # "index":I
    :cond_0
    const/4 v11, 0x0

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_0

    .line 337
    .end local v10    # "index":I
    .restart local v9    # "index":I
    :cond_1
    const/4 v11, 0x0

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_0

    .line 341
    :cond_2
    if-nez v11, :cond_5

    .line 344
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v13

    .line 345
    .local v13, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 346
    :cond_3
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 409
    .end local v13    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_1
    return-void

    .line 348
    .restart local v13    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_4
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_1

    .line 355
    .end local v13    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v14, "plusList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v12, "minusList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 358
    .local v4, "edge":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    if-eq v4, v11, :cond_6

    .line 359
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v16

    .line 360
    .local v16, "startOffset":D
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v6

    .line 361
    .local v6, "endOffset":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpg-double v19, v20, p0

    if-gtz v19, :cond_7

    sget-object v18, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 363
    .local v18, "startSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :goto_3
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpg-double v19, v20, p0

    if-gtz v19, :cond_9

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 365
    .local v5, "endSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :goto_4
    sget-object v19, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 387
    sget-object v19, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-object/from16 v0, v19

    if-ne v5, v0, :cond_d

    .line 388
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    .end local v5    # "endSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    .end local v18    # "startSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :cond_7
    const-wide/16 v20, 0x0

    cmpg-double v19, v16, v20

    if-gez v19, :cond_8

    sget-object v18, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_3

    :cond_8
    sget-object v18, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_3

    .line 363
    .restart local v18    # "startSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :cond_9
    const-wide/16 v20, 0x0

    cmpg-double v19, v6, v20

    if-gez v19, :cond_a

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_4

    :cond_a
    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_4

    .line 367
    .restart local v5    # "endSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :pswitch_0
    sget-object v19, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-object/from16 v0, v19

    if-ne v5, v0, :cond_b

    .line 369
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v15

    .line 370
    .local v15, "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 373
    .end local v15    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    :cond_b
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 377
    :pswitch_1
    sget-object v19, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-object/from16 v0, v19

    if-ne v5, v0, :cond_c

    .line 379
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v15

    .line 380
    .restart local v15    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 383
    .end local v15    # "splitPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    :cond_c
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 389
    :cond_d
    sget-object v19, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-object/from16 v0, v19

    if-ne v5, v0, :cond_6

    .line 390
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 398
    .end local v4    # "edge":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    .end local v5    # "endSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    .end local v6    # "endOffset":D
    .end local v16    # "startOffset":D
    .end local v18    # "startSide":Lorg/apache/commons/math3/geometry/partitioning/Side;
    :cond_e
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_f

    .line 399
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    move-wide/from16 v0, p0

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    .line 403
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    .line 404
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    move-wide/from16 v0, p0

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto/16 :goto_1

    .line 401
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_5

    .line 406
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private naturalFollowerConnections(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const/4 v1, 0x0

    .line 787
    .local v1, "connected":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 788
    .local v6, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_0

    .line 789
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    .line 790
    .local v5, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 791
    .local v2, "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 792
    .local v0, "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v5, :cond_1

    .line 796
    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 797
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 798
    add-int/lit8 v1, v1, 0x1

    .line 799
    goto :goto_0

    .line 804
    .end local v0    # "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v2    # "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v6    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_2
    return v1
.end method

.method private splitEdgeConnections(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    const/4 v1, 0x0

    .line 813
    .local v1, "connected":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 814
    .local v6, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_0

    .line 815
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    .line 816
    .local v3, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 817
    .local v2, "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 818
    .local v0, "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    if-ne v7, v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 822
    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 823
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 824
    add-int/lit8 v1, v1, 0x1

    .line 825
    goto :goto_0

    .line 830
    .end local v0    # "candidateNext":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .end local v2    # "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v3    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :cond_2
    return v1
.end method

.method private static varargs verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 16
    .param p0, "hyperplaneThickness"    # D
    .param p2, "vertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    move-object/from16 v0, p2

    array-length v9, v0

    .line 265
    .local v9, "n":I
    if-nez v9, :cond_0

    .line 267
    new-instance v11, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v11, v14}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 309
    :goto_0
    return-object v11

    .line 271
    :cond_0
    new-array v12, v9, [Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .line 272
    .local v12, "vArray":[Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 273
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    aget-object v15, p2, v5

    invoke-direct {v14, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    aput-object v14, v12, v5

    .line 272
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 277
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v3, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;>;"
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_5

    .line 281
    aget-object v10, v12, v5

    .line 282
    .local v10, "start":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    add-int/lit8 v14, v5, 0x1

    rem-int/2addr v14, v9

    aget-object v4, v12, v14

    .line 287
    .local v4, "end":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual {v10, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->sharedLineWith(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    .line 288
    .local v8, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    if-nez v8, :cond_2

    .line 289
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .end local v8    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v14

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v15

    move-wide/from16 v0, p0

    invoke-direct {v8, v14, v15, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 293
    .restart local v8    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    :cond_2
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    invoke-direct {v14, v10, v4, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    move-object v2, v12

    .local v2, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_4

    aget-object v13, v2, v6

    .line 297
    .local v13, "vertex":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    if-eq v13, v10, :cond_3

    if-eq v13, v4, :cond_3

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, p0

    if-gtz v14, :cond_3

    .line 299
    invoke-virtual {v13, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 296
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 278
    .end local v13    # "vertex":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 306
    .end local v2    # "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .end local v4    # "end":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v10    # "start":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    :cond_5
    new-instance v11, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    .line 307
    .local v11, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v11, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 38

    .prologue
    .line 611
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v23

    .line 613
    .local v23, "v":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 614
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v22

    .line 615
    .local v22, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v32

    if-nez v32, :cond_0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 617
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 618
    sget-object v32, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 660
    .end local v22    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_0
    return-void

    .line 620
    .restart local v22    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_0
    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 621
    new-instance v32, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 623
    .end local v22    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_1
    const/16 v32, 0x0

    aget-object v32, v23, v32

    const/16 v33, 0x0

    aget-object v32, v32, v33

    if-nez v32, :cond_2

    .line 625
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 626
    sget-object v32, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 630
    :cond_2
    const-wide/16 v16, 0x0

    .line 631
    .local v16, "sum":D
    const-wide/16 v18, 0x0

    .line 632
    .local v18, "sumX":D
    const-wide/16 v20, 0x0

    .line 634
    .local v20, "sumY":D
    move-object/from16 v6, v23

    .local v6, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v6    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v14, v6, v11

    .line 635
    .local v14, "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v0, v14

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-object v32, v14, v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v26

    .line 636
    .local v26, "x1":D
    array-length v0, v14

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-object v32, v14, v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v30

    .line 637
    .local v30, "y1":D
    move-object v7, v14

    .local v7, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_2
    if-ge v10, v13, :cond_3

    aget-object v15, v7, v10

    .line 638
    .local v15, "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-wide/from16 v24, v26

    .line 639
    .local v24, "x0":D
    move-wide/from16 v28, v30

    .line 640
    .local v28, "y0":D
    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v26

    .line 641
    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v30

    .line 642
    mul-double v32, v24, v30

    mul-double v34, v28, v26

    sub-double v8, v32, v34

    .line 643
    .local v8, "factor":D
    add-double v16, v16, v8

    .line 644
    add-double v32, v24, v26

    mul-double v32, v32, v8

    add-double v18, v18, v32

    .line 645
    add-double v32, v28, v30

    mul-double v32, v32, v8

    add-double v20, v20, v32

    .line 637
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 634
    .end local v8    # "factor":D
    .end local v15    # "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v24    # "x0":D
    .end local v28    # "y0":D
    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_1

    .line 649
    .end local v7    # "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v13    # "len$":I
    .end local v14    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v26    # "x1":D
    .end local v30    # "y1":D
    :cond_4
    const-wide/16 v32, 0x0

    cmpg-double v32, v16, v32

    if-gez v32, :cond_5

    .line 651
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 652
    sget-object v32, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_0

    .line 654
    :cond_5
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v16, v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 655
    new-instance v32, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v34, v34, v16

    div-double v34, v18, v34

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    mul-double v36, v36, v16

    div-double v36, v20, v36

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_0
.end method

.method public getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 28

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 687
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v19

    if-nez v19, :cond_1

    .line 688
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 777
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v19

    .line 692
    :cond_1
    new-instance v18, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;-><init>(D)V

    .line 693
    .local v18, "visitor":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 694
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->getSegments()Ljava/util/List;

    move-result-object v17

    .line 698
    .local v17, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    .line 699
    .local v14, "pending":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->naturalFollowerConnections(Ljava/util/List;)I

    move-result v19

    sub-int v14, v14, v19

    .line 700
    if-lez v14, :cond_2

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->splitEdgeConnections(Ljava/util/List;)I

    move-result v19

    sub-int v14, v14, v19

    .line 703
    :cond_2
    if-lez v14, :cond_3

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->closeVerticesConnections(Ljava/util/List;)I

    move-result v19

    sub-int v14, v14, v19

    .line 708
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v13, "loops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v15

    .local v15, "s":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    :goto_0
    if-eqz v15, :cond_6

    .line 710
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->followLoop(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)Ljava/util/List;

    move-result-object v12

    .line 711
    .local v12, "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    if-eqz v12, :cond_4

    .line 712
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    if-nez v19, :cond_5

    .line 714
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 709
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v15

    goto :goto_0

    .line 717
    :cond_5
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 723
    .end local v12    # "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 724
    const/4 v5, 0x0

    .line 726
    .local v5, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 727
    .restart local v12    # "loop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    if-nez v19, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    if-nez v19, :cond_8

    .line 730
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v11

    .line 731
    .local v11, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v26, -0x3810000020000000L    # -3.4028234663852886E38

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    new-instance v24, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v26, 0x47efffffe0000000L    # 3.4028234663852886E38

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v24

    aput-object v24, v22, v23

    aput-object v22, v19, v5

    move v5, v6

    .line 736
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2

    .end local v11    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    if-nez v19, :cond_d

    .line 738
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 739
    .local v4, "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v9, 0x0

    .line 740
    .local v9, "j":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 742
    .local v16, "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    if-nez v9, :cond_a

    .line 744
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v20

    .line 745
    .local v20, "x":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, v20, v24

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v22

    sub-double v20, v20, v22

    .line 746
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .local v10, "j":I
    const/16 v19, 0x0

    aput-object v19, v4, v9

    .line 747
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    new-instance v22, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    aput-object v19, v4, v10

    .line 750
    .end local v20    # "x":D
    :cond_a
    array-length v0, v4

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v9, v0, :cond_b

    .line 752
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    aput-object v19, v4, v9

    move v9, v10

    .line 755
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_b
    array-length v0, v4

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 757
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v20

    .line 758
    .restart local v20    # "x":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, v20, v24

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    .line 759
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v19

    new-instance v22, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    aput-object v19, v4, v9

    move v9, v10

    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_3

    .line 763
    .end local v16    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .end local v20    # "x":D
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aput-object v4, v19, v5

    move v5, v6

    .line 764
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2

    .line 765
    .end local v4    # "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "j":I
    :cond_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v4, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 766
    .restart local v4    # "array":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v9, 0x0

    .line 767
    .restart local v9    # "j":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 768
    .restart local v16    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    aput-object v19, v4, v9

    move v9, v10

    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto :goto_4

    .line 770
    .end local v16    # "segment":Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v19, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aput-object v4, v19, v5

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2
.end method
