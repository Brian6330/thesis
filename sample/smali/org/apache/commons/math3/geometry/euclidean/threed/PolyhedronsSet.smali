.class public Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolyhedronsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;,
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;,
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
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
    .line 157
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    .line 158
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 17
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .param p9, "zMin"    # D
    .param p11, "zMax"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v1 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(DDDDDDD)V

    .line 215
    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 1
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .param p9, "zMin"    # D
    .param p11, "zMax"    # D
    .param p13, "tolerance"    # D

    .prologue
    .line 149
    invoke-static/range {p1 .. p14}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildBoundary(DDDDDDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p13, p14}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 150
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
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Ljava/util/Collection;D)V

    .line 198
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
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;D)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;D)V
    .locals 1
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List",
            "<[I>;D)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p2, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildBoundary(Ljava/util/List;Ljava/util/List;D)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 173
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
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # D

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # D

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # D

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method private boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 4
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    .line 588
    .local v1, "point2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 590
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v2, v3, :cond_0

    .line 592
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 598
    :goto_0
    return-object v2

    .line 594
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v2, v3, :cond_1

    .line 596
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    goto :goto_0

    .line 598
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static buildBoundary(Ljava/util/List;Ljava/util/List;D)Ljava/util/List;
    .locals 32
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List",
            "<[I>;D)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p1, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v16

    if-ge v0, v5, :cond_2

    .line 262
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 263
    .local v29, "vi":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    add-int/lit8 v19, v16, 0x1

    .local v19, "j":I
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_1

    .line 264
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v6

    cmpg-double v5, v6, p2

    if-gtz v5, :cond_0

    .line 265
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSE_VERTICES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 263
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 261
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 272
    .end local v19    # "j":I
    .end local v29    # "vi":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->findReferences(Ljava/util/List;Ljava/util/List;)[[I

    move-result-object v22

    .line 275
    .local v22, "references":[[I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->successors(Ljava/util/List;Ljava/util/List;[[I)[[I

    move-result-object v24

    .line 278
    .local v24, "successors":[[I
    const/16 v27, 0x0

    .local v27, "vA":I
    :goto_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 279
    aget-object v10, v24, v27

    .local v10, "arr$":[I
    array-length v0, v10

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v10    # "arr$":[I
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    .local v18, "i$":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget v28, v10, v18

    .line 281
    .local v28, "vB":I
    if-ltz v28, :cond_6

    .line 284
    const/4 v15, 0x0

    .line 285
    .local v15, "found":Z
    aget-object v11, v24, v28

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .end local v18    # "i$":I
    .restart local v17    # "i$":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget v26, v11, v17

    .line 286
    .local v26, "v":I
    if-nez v15, :cond_3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v15, 0x1

    .line 285
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 286
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 288
    .end local v26    # "v":I
    :cond_5
    if-nez v15, :cond_6

    .line 289
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 290
    .local v23, "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 291
    .local v13, "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EDGE_CONNECTED_TO_ONE_FACET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 279
    .end local v11    # "arr$":[I
    .end local v13    # "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v15    # "found":Z
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v23    # "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_6
    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "i$":I
    move/from16 v18, v17

    .end local v17    # "i$":I
    .restart local v18    # "i$":I
    goto/16 :goto_3

    .line 278
    .end local v28    # "vB":I
    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 299
    .end local v18    # "i$":I
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v12, "boundary":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 304
    .local v14, "facet":[I
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v6, 0x1

    aget v6, v14, v6

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v7, 0x2

    aget v7, v14, v7

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 308
    .local v4, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    array-length v5, v14

    new-array v0, v5, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v25, v0

    .line 309
    .local v25, "two2Points":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/16 v16, 0x0

    :goto_7
    array-length v5, v14

    move/from16 v0, v16

    if-ge v0, v5, :cond_a

    .line 310
    aget v5, v14, v16

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 311
    .local v26, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 312
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_PLANE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 315
    :cond_9
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    aput-object v5, v25, v16

    .line 309
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 319
    .end local v26    # "v":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_a
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-wide/from16 v0, p2

    move-object/from16 v2, v25

    invoke-direct {v6, v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    invoke-direct {v5, v4, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 323
    .end local v4    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v14    # "facet":[I
    .end local v25    # "two2Points":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_b
    return-object v12
.end method

.method private static buildBoundary(DDDDDDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 16
    .param p0, "xMin"    # D
    .param p2, "xMax"    # D
    .param p4, "yMin"    # D
    .param p6, "yMax"    # D
    .param p8, "zMin"    # D
    .param p10, "zMax"    # D
    .param p12, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    sub-double v4, p2, p12

    cmpl-double v3, p0, v4

    if-gez v3, :cond_0

    sub-double v4, p6, p12

    cmpl-double v3, p4, v4

    if-gez v3, :cond_0

    sub-double v4, p10, p12

    cmpl-double v3, p8, v4

    if-ltz v3, :cond_1

    .line 234
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-object v3

    .line 236
    :cond_1
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v0, p12

    invoke-direct {v11, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 237
    .local v11, "pxMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v4, p2

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v0, p12

    invoke-direct {v10, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 238
    .local v10, "pxMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v13, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v0, p12

    invoke-direct {v13, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 239
    .local v13, "pyMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v6, p6

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v0, p12

    invoke-direct {v12, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 240
    .local v12, "pyMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p8

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v0, p12

    invoke-direct {v15, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 241
    .local v15, "pzMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p10

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v0, p12

    invoke-direct {v14, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 243
    .local v14, "pzMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    const/4 v4, 0x6

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    const/4 v5, 0x2

    aput-object v13, v4, v5

    const/4 v5, 0x3

    aput-object v12, v4, v5

    const/4 v5, 0x4

    aput-object v15, v4, v5

    const/4 v5, 0x5

    aput-object v14, v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    .line 245
    .local v2, "boundary":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static findReferences(Ljava/util/List;Ljava/util/List;)[[I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List",
            "<[I>;)[[I"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p1, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    new-array v10, v14, [I

    .line 338
    .local v10, "nbFacets":[I
    const/4 v9, 0x0

    .line 339
    .local v9, "maxFacets":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 340
    .local v3, "facet":[I
    array-length v14, v3

    const/4 v15, 0x3

    if-ge v14, v15, :cond_1

    .line 341
    new-instance v14, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v15, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    array-length v0, v3

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v18}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v14

    .line 344
    :cond_1
    move-object v1, v3

    .local v1, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_0

    aget v6, v1, v5

    .line 345
    .local v6, "index":I
    aget v14, v10, v6

    add-int/lit8 v14, v14, 0x1

    aput v14, v10, v6

    invoke-static {v9, v14}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v9

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "arr$":[I
    .end local v3    # "facet":[I
    .end local v5    # "i$":I
    .end local v6    # "index":I
    .end local v8    # "len$":I
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    filled-new-array {v14, v9}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    .line 351
    .local v12, "references":[[I
    move-object v1, v12

    .local v1, "arr$":[[I
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v11, v1, v4

    .line 352
    .local v11, "r":[I
    const/4 v14, -0x1

    invoke-static {v11, v14}, Ljava/util/Arrays;->fill([II)V

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 354
    .end local v11    # "r":[I
    :cond_3
    const/4 v2, 0x0

    .end local v1    # "arr$":[[I
    .local v2, "f":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_6

    .line 355
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .local v1, "arr$":[I
    array-length v8, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_5

    aget v13, v1, v4

    .line 357
    .local v13, "v":I
    const/4 v7, 0x0

    .line 358
    .local v7, "k":I
    :goto_4
    if-ge v7, v9, :cond_4

    aget-object v14, v12, v13

    aget v14, v14, v7

    if-ltz v14, :cond_4

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 361
    :cond_4
    aget-object v14, v12, v13

    aput v2, v14, v7

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 354
    .end local v7    # "k":I
    .end local v13    # "v":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 365
    .end local v1    # "arr$":[I
    :cond_6
    return-object v12
.end method

.method private recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 20
    .param p2, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Line;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    .line 528
    .local v5, "cut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-nez v5, :cond_1

    .line 529
    const/4 v6, 0x0

    .line 574
    :cond_0
    :goto_0
    return-object v6

    .line 531
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v10

    .line 532
    .local v10, "minus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v15

    .line 533
    .local v15, "plus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 536
    .local v14, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v12

    .line 537
    .local v12, "offset":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    const/4 v9, 0x1

    .line 540
    .local v9, "in":Z
    :goto_1
    const-wide/16 v16, 0x0

    cmpg-double v16, v12, v16

    if-gez v16, :cond_4

    .line 541
    move-object v11, v10

    .line 542
    .local v11, "near":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v7, v15

    .line 548
    .local v7, "far":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :goto_2
    if-eqz v9, :cond_2

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    .line 551
    .local v6, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-nez v6, :cond_0

    .line 557
    .end local v6    # "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v11, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    .line 558
    .local v4, "crossed":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-eqz v4, :cond_5

    move-object v6, v4

    .line 559
    goto :goto_0

    .line 537
    .end local v4    # "crossed":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .end local v7    # "far":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .end local v9    # "in":Z
    .end local v11    # "near":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 544
    .restart local v9    # "in":Z
    :cond_4
    move-object v11, v15

    .line 545
    .restart local v11    # "near":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v7, v10

    .restart local v7    # "far":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    goto :goto_2

    .line 562
    .restart local v4    # "crossed":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_5
    if-nez v9, :cond_6

    .line 564
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    .line 565
    .local v8, "hit3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    if-eqz v8, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v16

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-lez v16, :cond_6

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    .line 567
    .restart local v6    # "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-nez v6, :cond_0

    .line 574
    .end local v6    # "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .end local v8    # "hit3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    goto :goto_0
.end method

.method private static successors(Ljava/util/List;Ljava/util/List;[[I)[[I
    .locals 20
    .param p2, "references"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List",
            "<[I>;[[I)[[I"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p1, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    aget-object v15, p2, v15

    array-length v15, v15

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    .line 384
    .local v12, "successors":[[I
    move-object v2, v12

    .local v2, "arr$":[[I
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v10, v2, v6

    .line 385
    .local v10, "s":[I
    const/4 v14, -0x1

    invoke-static {v10, v14}, Ljava/util/Arrays;->fill([II)V

    .line 384
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 388
    .end local v10    # "s":[I
    :cond_0
    const/4 v13, 0x0

    .local v13, "v":I
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 389
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    aget-object v14, v12, v13

    array-length v14, v14

    if-ge v7, v14, :cond_4

    aget-object v14, p2, v13

    aget v14, v14, v7

    if-ltz v14, :cond_4

    .line 392
    aget-object v14, p2, v13

    aget v14, v14, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 393
    .local v4, "facet":[I
    const/4 v5, 0x0

    .line 394
    .local v5, "i":I
    :goto_3
    array-length v14, v4

    if-ge v5, v14, :cond_1

    aget v14, v4, v5

    if-eq v14, v13, :cond_1

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 399
    :cond_1
    aget-object v14, v12, v13

    add-int/lit8 v15, v5, 0x1

    array-length v0, v4

    move/from16 v16, v0

    rem-int v15, v15, v16

    aget v15, v4, v15

    aput v15, v14, v7

    .line 400
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_4
    if-ge v8, v7, :cond_3

    .line 401
    aget-object v14, v12, v13

    aget v14, v14, v8

    aget-object v15, v12, v13

    aget v15, v15, v7

    if-ne v14, v15, :cond_2

    .line 402
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 403
    .local v11, "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    aget-object v14, v12, v13

    aget v14, v14, v7

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 404
    .local v3, "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v14, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v15, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACET_ORIENTATION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-direct/range {v14 .. v16}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v14

    .line 400
    .end local v3    # "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v11    # "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 389
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 388
    .end local v4    # "facet":[I
    .end local v5    # "i":I
    .end local v8    # "l":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 413
    .end local v7    # "k":I
    :cond_5
    return-object v12
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 8

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 430
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 433
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    .line 434
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 441
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    .line 438
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0
.end method

.method public firstIntersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Line;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 1
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 608
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    return-object v0
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 1
    .param p1, "translation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 681
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    return-object v0
.end method
