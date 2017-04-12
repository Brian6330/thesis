.class Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;
.super Ljava/lang/Object;
.source "BoundaryProjector.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation
.end field

.field private offset:D

.field private final original:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end field

.field private projected:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "original":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    .line 51
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 53
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 54
    return-void
.end method

.method private addRegion(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    if-eqz p1, :cond_0

    .line 158
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .end local p1    # "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    .line 159
    .local v0, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v0    # "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    :cond_0
    return-void
.end method

.method private belongsToPart(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p2, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p3, "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/Embedding;

    .line 177
    .local v0, "embedding":Lorg/apache/commons/math3/geometry/partitioning/Embedding;, "Lorg/apache/commons/math3/geometry/partitioning/Embedding<TS;TT;>;"
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private boundaryRegions(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 144
    .local v0, "ba":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->addRegion(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 145
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->addRegion(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 147
    return-object v1
.end method

.method private singularProjection(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p2, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p3, "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    move-object v1, p2

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/Embedding;

    .line 193
    .local v1, "embedding":Lorg/apache/commons/math3/geometry/partitioning/Embedding;, "Lorg/apache/commons/math3/geometry/partitioning/Embedding<TS;TT;>;"
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object v0

    .line 196
    .local v0, "bp":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getProjection()Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 130
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 128
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    .line 72
    .local v3, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v3, v13}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v10

    .line 73
    .local v10, "signedOffset":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_3

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v3, v13}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v8

    .line 79
    .local v8, "regular":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->boundaryRegions(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "boundaryParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    const/4 v9, 0x0

    .line 83
    .local v9, "regularFound":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 84
    .local v7, "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v7}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->belongsToPart(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 86
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 87
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 88
    const/4 v9, 0x1

    goto :goto_0

    .line 92
    .end local v7    # "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    :cond_1
    if-nez v9, :cond_3

    .line 96
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 97
    .restart local v7    # "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v7}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->singularProjection(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v12

    .line 98
    .local v12, "spI":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    if-eqz v12, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v13, v12}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v4

    .line 100
    .local v4, "distance":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    cmpg-double v13, v4, v14

    if-gez v13, :cond_2

    .line 101
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 102
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    goto :goto_1

    .line 111
    .end local v2    # "boundaryParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    .end local v4    # "distance":D
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    .end local v8    # "regular":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .end local v9    # "regularFound":Z
    .end local v12    # "spI":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    :cond_3
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_0

    .line 118
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 120
    :cond_0
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 61
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    goto :goto_0
.end method
