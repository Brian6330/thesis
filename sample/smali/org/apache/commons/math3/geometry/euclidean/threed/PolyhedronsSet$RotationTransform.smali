.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;
.super Ljava/lang/Object;
.source "PolyhedronsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

.field private cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation
.end field

.field private center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V
    .locals 0
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 632
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 633
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .end local p1    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 637
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    .line 638
    .local v8, "delta":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    move-wide v5, v2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p3, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    move-object/from16 v2, p2

    .line 653
    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .local v2, "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    move-object/from16 v22, p3

    .line 654
    check-cast v22, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 655
    .local v22, "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v16

    .line 656
    .local v16, "p00":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v18

    .line 657
    .local v18, "p10":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v17

    .line 658
    .local v17, "p01":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v19

    .line 659
    .local v19, "tP00":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v21

    .line 660
    .local v21, "tP10":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v20

    .line 661
    .local v20, "tP01":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v12

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v14

    invoke-direct/range {v3 .. v15}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    .line 666
    .local v3, "at":Ljava/awt/geom/AffineTransform;
    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .end local p2    # "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 667
    invoke-static {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    .line 670
    .end local v2    # "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "at":Ljava/awt/geom/AffineTransform;
    .end local v16    # "p00":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v17    # "p01":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v18    # "p10":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v19    # "tP00":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v20    # "tP01":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v21    # "tP10":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v22    # "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    :cond_0
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    .end local p1    # "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v4

    return-object v4
.end method
