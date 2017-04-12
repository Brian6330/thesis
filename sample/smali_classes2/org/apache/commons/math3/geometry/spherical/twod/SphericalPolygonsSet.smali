.class public Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "SphericalPolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private loops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 54
    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 1
    .param p1, "hyperplaneThickness"    # D
    .param p3, "vertices"    # [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .prologue
    .line 151
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->verticesToTree(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 152
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
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;>;D)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 6
    .param p1, "pole"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "tolerance"    # D

    .prologue
    .line 61
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DID)V
    .locals 1
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "meridian"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "outsideRadius"    # D
    .param p5, "n"    # I
    .param p6, "tolerance"    # D

    .prologue
    .line 78
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->createRegularPolygonVertices(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DI)[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    invoke-direct {p0, p6, p7, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 79
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
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 93
    return-void
.end method

.method private static createRegularPolygonVertices(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DI)[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 8
    .param p0, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "meridian"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "outsideRadius"    # D
    .param p4, "n"    # I

    .prologue
    .line 163
    new-array v0, p4, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 164
    .local v0, "array":[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v3, v4, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 165
    .local v3, "r0":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object v5, v0, v4

    .line 167
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, p4

    div-double/2addr v4, v6

    invoke-direct {v2, p0, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 168
    .local v2, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 169
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object v4, v0, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-object v0
.end method

.method private getInsidePoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;-><init>(D)V

    .line 548
    .local v0, "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 549
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getConvexCellsInsidePoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getOutsidePoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    invoke-virtual {v2, p0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    .line 558
    .local v0, "complement":Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;-><init>(D)V

    .line 559
    .local v1, "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 560
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getConvexCellsInsidePoints()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 10
    .param p0, "hyperplaneThickness"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p3, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    const/4 v2, 0x0

    .line 263
    .local v2, "index":I
    const/4 v4, 0x0

    .local v4, "inserted":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    move v3, v2

    .line 264
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-nez v4, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 265
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "inserted":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    check-cast v4, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 266
    .restart local v4    # "inserted":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 267
    const/4 v4, 0x0

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 271
    :cond_0
    if-nez v4, :cond_3

    .line 274
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    .line 275
    .local v7, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    if-ne p2, v8, :cond_2

    .line 276
    :cond_1
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 305
    .end local v7    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    :goto_1
    return-void

    .line 278
    .restart local v7    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    :cond_2
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_1

    .line 285
    .end local v7    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v6, "outsideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v5, "insideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 288
    .local v0, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    if-eq v0, v4, :cond_4

    .line 289
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v8

    invoke-virtual {v0, v8, v6, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->split(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 294
    .end local v0    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 295
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    invoke-static {p0, p1, v8, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    .line 299
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 300
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    invoke-static {p0, p1, v8, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_1

    .line 297
    :cond_6
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_3

    .line 302
    :cond_7
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v5    # "insideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    .end local v6    # "outsideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    .restart local v2    # "index":I
    :cond_8
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_0
.end method

.method private static varargs verticesToTree(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 18
    .param p0, "hyperplaneThickness"    # D
    .param p2, "vertices"    # [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p2

    array-length v13, v0

    .line 197
    .local v13, "n":I
    if-nez v13, :cond_0

    .line 199
    new-instance v14, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v14, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-object v14

    .line 203
    :cond_0
    new-array v15, v13, [Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 204
    .local v15, "vArray":[Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 205
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    aget-object v6, p2, v10

    invoke-direct {v3, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    aput-object v3, v15, v10

    .line 204
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 209
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v9, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    add-int/lit8 v3, v13, -0x1

    aget-object v5, v15, v3

    .line 211
    .local v5, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v13, :cond_5

    .line 214
    move-object v4, v5

    .line 215
    .local v4, "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    aget-object v5, v15, v10

    .line 220
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->sharedCircleWith(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v8

    .line 221
    .local v8, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    if-nez v8, :cond_2

    .line 222
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .end local v8    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v3

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-direct {v8, v3, v6, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;D)V

    .line 226
    .restart local v8    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v6

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    move-object v2, v15

    .local v2, "arr$":[Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v12, :cond_4

    aget-object v16, v2, v11

    .line 233
    .local v16, "vertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    move-object/from16 v0, v16

    if-eq v0, v4, :cond_3

    move-object/from16 v0, v16

    if-eq v0, v5, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v3, v6, p0

    if-gtz v3, :cond_3

    .line 235
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 232
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 211
    .end local v16    # "vertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 242
    .end local v2    # "arr$":[Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v4    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v8    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_5
    new-instance v14, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v14}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    .line 243
    .local v14, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v14, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object v0

    return-object v0
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 320
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 322
    .local v1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_1

    .line 326
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setSize(D)V

    .line 329
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v2, v4, v5, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DD)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 345
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setSize(D)V

    .line 332
    sget-object v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;-><init>(D)V

    .line 339
    .local v0, "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 340
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getArea()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setSize(D)V

    .line 341
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getBarycenter()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0
.end method

.method public getBoundaryLoops()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 372
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    if-nez v6, :cond_0

    .line 373
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    if-nez v6, :cond_1

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    .line 414
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 378
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 379
    .local v3, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v6

    invoke-direct {v5, v3, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 380
    .local v5, "visitor":Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 381
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->getEdges()Ljava/util/List;

    move-result-object v1

    .line 385
    .local v1, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    .line 386
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 389
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 390
    .local v0, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    .line 391
    .local v4, "startVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 398
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 405
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v6

    if-ne v6, v4, :cond_2

    goto :goto_0
.end method

.method public getEnclosingCap()Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 469
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 539
    :cond_0
    :goto_0
    return-object v9

    .line 471
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isFull()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 472
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v28, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 476
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v22

    .line 477
    .local v22, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 479
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 480
    .local v5, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v26

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 483
    .end local v5    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 485
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 486
    .restart local v5    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_0

    .line 491
    .end local v5    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getInsidePoints()Ljava/util/List;

    move-result-object v18

    .line 494
    .local v18, "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getBoundaryLoops()Ljava/util/List;

    move-result-object v4

    .line 495
    .local v4, "boundary":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 496
    .local v15, "loopStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    const/4 v6, 0x0

    .line 497
    .local v6, "count":I
    move-object/from16 v25, v15

    .local v25, "v":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :goto_1
    if-eqz v6, :cond_6

    move-object/from16 v0, v25

    if-eq v0, v15, :cond_5

    .line 498
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 499
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v25

    goto :goto_1

    .line 504
    .end local v6    # "count":I
    .end local v15    # "loopStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v25    # "v":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_7
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;

    invoke-direct {v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;-><init>()V

    .line 505
    .local v10, "generator":Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;
    new-instance v7, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v7, v0, v1, v10}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;-><init>(DLorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;)V

    .line 507
    .local v7, "encloser":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v8

    .line 508
    .local v8, "enclosing3D":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupport()[Lorg/apache/commons/math3/geometry/Point;

    move-result-object v24

    check-cast v24, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 511
    .local v24, "support3D":[Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v20

    .line 512
    .local v20, "r":D
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v12

    .line 513
    .local v12, "h":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v26

    cmpg-double v26, v12, v26

    if-gez v26, :cond_9

    .line 516
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v28, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 518
    .local v9, "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getOutsidePoints()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 519
    .local v16, "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v17, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 520
    .local v17, "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object v19

    .line 521
    .local v19, "projection":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    const-wide v26, 0x400921fb54442d18L    # Math.PI

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getOffset()D

    move-result-wide v28

    sub-double v26, v26, v28

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v28

    cmpg-double v26, v26, v28

    if-gez v26, :cond_8

    .line 522
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    .end local v9    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v27

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getOffset()D

    move-result-wide v30

    sub-double v28, v28, v30

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    aput-object v26, v30, v31

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .restart local v9    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    goto :goto_2

    .line 529
    .end local v9    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    .end local v16    # "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v17    # "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .end local v19    # "projection":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    :cond_9
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v23, v0

    .line 530
    .local v23, "support":[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_a

    .line 531
    new-instance v26, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    aget-object v27, v24, v11

    invoke-direct/range {v26 .. v27}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object v26, v23, v11

    .line 530
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 534
    :cond_a
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v27, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v30, v12, v12

    add-double v28, v28, v30

    mul-double v30, v20, v20

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v12

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v23

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 539
    .restart local v9    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    goto/16 :goto_0
.end method
