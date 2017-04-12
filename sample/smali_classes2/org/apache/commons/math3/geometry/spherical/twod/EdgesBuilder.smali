.class Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;
.super Ljava/lang/Object;
.source "EdgesBuilder.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final edgeToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nodeToEdgesList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;>;"
        }
    .end annotation
.end field

.field private final root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 2
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 57
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    .line 58
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 15
    .param p1, "sub"    # Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;",
            "Z",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 92
    .local v12, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->asList()Ljava/util/List;

    move-result-object v13

    .line 93
    .local v13, "arcs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/oned/Arc;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    .line 94
    .local v2, "a":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v12, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 95
    .local v5, "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v12, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 96
    .local v4, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    invoke-virtual {v5, v12}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 97
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 99
    if-eqz p2, :cond_0

    .line 100
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v6

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getReverse()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 104
    .local v3, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v3    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v10

    move-object v7, v3

    move-object v8, v5

    move-object v9, v4

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .restart local v3    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    goto :goto_1

    .line 107
    .end local v2    # "a":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .end local v3    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .end local v4    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v5    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_1
    return-void
.end method

.method private getFollowingEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 20
    .param p1, "previous"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v13

    .line 120
    .local v13, "point":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v13, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;

    move-result-object v2

    .line 123
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    .line 124
    .local v4, "closest":D
    const/4 v7, 0x0

    .line 125
    .local v7, "following":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 126
    .local v12, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 127
    .local v3, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    move-object/from16 v0, p1

    if-eq v3, v0, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v15

    if-nez v15, :cond_1

    .line 128
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 129
    .local v6, "edgeStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v15

    invoke-static {v15, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v8

    .line 130
    .local v8, "gap":D
    cmpg-double v15, v8, v4

    if-gtz v15, :cond_1

    .line 131
    move-wide v4, v8

    .line 132
    move-object v7, v3

    goto :goto_0

    .line 138
    .end local v3    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .end local v6    # "edgeStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v8    # "gap":D
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    :cond_2
    if-nez v7, :cond_4

    .line 139
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v14

    .line 140
    .local v14, "previousStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v15

    invoke-static {v15, v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    move-wide/from16 v18, v0

    cmpg-double v15, v16, v18

    if-gtz v15, :cond_3

    .line 150
    .end local v14    # "previousStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local p1    # "previous":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :goto_1
    return-object p1

    .line 146
    .restart local v14    # "previousStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local p1    # "previous":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_3
    new-instance v15, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v16, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v15

    .end local v14    # "previousStart":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_4
    move-object/from16 p1, v7

    .line 150
    goto :goto_1
.end method


# virtual methods
.method public getEdges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 162
    .local v1, "previous":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->getFollowingEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    goto :goto_0

    .line 165
    .end local v1    # "previous":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 72
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 78
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
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
