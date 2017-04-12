.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SubPlane.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v5, p1

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 58
    .local v5, "otherPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 59
    .local v8, "thisPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    move-result-object v1

    .line 60
    .local v1, "inter":Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getTolerance()D

    move-result-wide v10

    .line 62
    .local v10, "tolerance":D
    if-nez v1, :cond_2

    .line 65
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D

    move-result-wide v2

    .line 66
    .local v2, "global":D
    const-wide v12, -0x4224832026284245L    # -1.0E-10

    cmpg-double v12, v2, v12

    if-gez v12, :cond_0

    sget-object v12, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 88
    .end local v2    # "global":D
    :goto_0
    return-object v12

    .line 66
    .restart local v2    # "global":D
    :cond_0
    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v12, v2, v12

    if-lez v12, :cond_1

    sget-object v12, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_1
    sget-object v12, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    .line 76
    .end local v2    # "global":D
    :cond_2
    sget-object v12, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    .line 77
    .local v6, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    sget-object v12, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    .line 78
    .local v7, "q":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v12

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 79
    .local v0, "crossP":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    .line 80
    move-object v9, v6

    .line 81
    .local v9, "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object v6, v7

    .line 82
    move-object v7, v9

    .line 84
    .end local v9    # "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v4, v6, v7, v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 88
    .local v4, "line2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v12

    invoke-interface {v12, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v12

    goto :goto_0
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v11, p1

    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 102
    .local v11, "otherPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 103
    .local v16, "thisPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    move-result-object v5

    .line 104
    .local v5, "inter":Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getTolerance()D

    move-result-wide v18

    .line 106
    .local v18, "tolerance":D
    if-nez v5, :cond_1

    .line 108
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D

    move-result-wide v6

    .line 109
    .local v6, "global":D
    const-wide v20, -0x4224832026284245L    # -1.0E-10

    cmpg-double v20, v6, v20

    if-gez v20, :cond_0

    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 139
    .end local v6    # "global":D
    :goto_0
    return-object v20

    .line 109
    .restart local v6    # "global":D
    :cond_0
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto :goto_0

    .line 115
    .end local v6    # "global":D
    :cond_1
    sget-object v20, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v12

    .line 116
    .local v12, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    sget-object v20, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v14

    .line 117
    .local v14, "q":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 118
    .local v4, "crossP":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 119
    move-object/from16 v17, v12

    .line 120
    .local v17, "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object v12, v14

    .line 121
    move-object/from16 v14, v17

    .line 123
    .end local v17    # "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_2
    new-instance v20, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v12, v14, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v8

    .line 125
    .local v8, "l2DMinus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    new-instance v20, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v12, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v9

    .line 128
    .local v9, "l2DPlus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v15

    .line 129
    .local v15, "splitTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v20

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 134
    .local v13, "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v20

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v20

    if-eqz v20, :cond_4

    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 139
    .local v10, "minusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_2
    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    new-instance v21, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v22

    new-instance v23, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct/range {v21 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    new-instance v22, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v23

    new-instance v24, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-direct {v0, v10, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct/range {v22 .. v24}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-direct/range {v20 .. v22}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_0

    .line 129
    .end local v10    # "minusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v13    # "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_3
    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v20 .. v21}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v13, v9, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    .restart local v13    # "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :cond_4
    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v20, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v20 .. v21}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v10, v8, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_2
.end method
