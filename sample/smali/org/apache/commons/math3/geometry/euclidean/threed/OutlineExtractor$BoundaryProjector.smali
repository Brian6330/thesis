.class Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
.super Ljava/lang/Object;
.source "OutlineExtractor.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundaryProjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# instance fields
.field private projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V
    .locals 4
    .param p2, "tolerance"    # D

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    .line 135
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    .line 136
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V
    .locals 36
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v12, p1

    check-cast v12, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 170
    .local v12, "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 172
    .local v29, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    # getter for: Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v34

    .line 173
    .local v34, "scal":D
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v6, v8

    if-lez v6, :cond_d

    .line 174
    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v33

    .line 177
    .local v33, "vertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const-wide/16 v6, 0x0

    cmpg-double v6, v34, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    xor-int v6, v6, p2

    if-eqz v6, :cond_4

    .line 180
    move-object/from16 v0, v33

    array-length v6, v0

    new-array v0, v6, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v28, v0

    .line 181
    .local v28, "newVertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, v33

    array-length v6, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_3

    .line 182
    aget-object v26, v33, v21

    .line 183
    .local v26, "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, v26

    array-length v6, v0

    new-array v0, v6, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v27, v0

    .line 184
    .local v27, "newLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v6, 0x0

    aget-object v6, v26, v6

    if-nez v6, :cond_1

    .line 185
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v27, v6

    .line 186
    const/16 v23, 0x1

    .local v23, "j":I
    :goto_2
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v23

    if-ge v0, v6, :cond_2

    .line 187
    move-object/from16 v0, v26

    array-length v6, v0

    sub-int v6, v6, v23

    aget-object v6, v26, v6

    aput-object v6, v27, v23

    .line 186
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 177
    .end local v21    # "i":I
    .end local v23    # "j":I
    .end local v26    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v27    # "newLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v28    # "newVertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 190
    .restart local v21    # "i":I
    .restart local v26    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v27    # "newLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v28    # "newVertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_3
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v23

    if-ge v0, v6, :cond_2

    .line 191
    move-object/from16 v0, v26

    array-length v6, v0

    add-int/lit8 v7, v23, 0x1

    sub-int/2addr v6, v7

    aget-object v6, v26, v6

    aput-object v6, v27, v23

    .line 190
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 194
    :cond_2
    aput-object v27, v28, v21

    .line 181
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 198
    .end local v23    # "j":I
    .end local v26    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v27    # "newLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_3
    move-object/from16 v33, v28

    .line 203
    .end local v21    # "i":I
    .end local v28    # "newVertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v20, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    move-object/from16 v13, v33

    .local v13, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v0, v13

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    aget-object v26, v13, v22

    .line 205
    .restart local v26    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v6, 0x0

    aget-object v6, v26, v6

    if-eqz v6, :cond_9

    const/4 v15, 0x1

    .line 206
    .local v15, "closed":Z
    :goto_5
    if-eqz v15, :cond_a

    move-object/from16 v0, v26

    array-length v6, v0

    add-int/lit8 v30, v6, -0x1

    .line 207
    .local v30, "previous":I
    :goto_6
    aget-object v6, v26, v30

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v31

    .line 208
    .local v31, "previous3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    add-int/lit8 v6, v30, 0x1

    move-object/from16 v0, v26

    array-length v7, v0

    rem-int v16, v6, v7

    .line 209
    .local v16, "current":I
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    # getter for: Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    # getter for: Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 211
    .local v3, "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :goto_7
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v16

    if-ge v0, v6, :cond_b

    .line 213
    aget-object v6, v26, v16

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v18

    .line 214
    .local v18, "current3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    # getter for: Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    # getter for: Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    invoke-direct {v14, v6, v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 216
    .local v14, "cPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v25, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v14, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 218
    .local v25, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v19

    .line 220
    .local v19, "edge":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    if-nez v15, :cond_5

    const/4 v6, 0x1

    move/from16 v0, v30

    if-eq v0, v6, :cond_6

    .line 223
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v4, v6, v8

    .line 224
    .local v4, "angle":D
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    .line 226
    .local v2, "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v19

    .line 229
    .end local v2    # "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v4    # "angle":D
    :cond_6
    if-nez v15, :cond_7

    move-object/from16 v0, v26

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v16

    if-eq v0, v6, :cond_8

    .line 232
    :cond_7
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v4, v6, v8

    .line 233
    .restart local v4    # "angle":D
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-object v6, v2

    move-object v7, v14

    move-wide v8, v4

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    .line 235
    .restart local v2    # "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v19

    .line 238
    .end local v2    # "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v4    # "angle":D
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "current":I
    .local v17, "current":I
    move/from16 v30, v16

    .line 241
    move-object/from16 v31, v18

    .line 242
    move-object v3, v14

    move/from16 v16, v17

    .line 244
    .end local v17    # "current":I
    .restart local v16    # "current":I
    goto/16 :goto_7

    .line 205
    .end local v3    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v14    # "cPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "closed":Z
    .end local v16    # "current":I
    .end local v18    # "current3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v19    # "edge":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v25    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v30    # "previous":I
    .end local v31    # "previous3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 206
    .restart local v15    # "closed":Z
    :cond_a
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 204
    .restart local v3    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v16    # "current":I
    .restart local v30    # "previous":I
    .restart local v31    # "previous3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 246
    .end local v3    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "closed":Z
    .end local v16    # "current":I
    .end local v26    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v30    # "previous":I
    .end local v31    # "previous3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_c
    new-instance v32, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    .line 249
    .local v32, "projectedFacet":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-object/from16 v0, v32

    invoke-virtual {v6, v7, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    .line 252
    .end local v13    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v20    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v32    # "projectedFacet":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .end local v33    # "vertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_d
    return-void
.end method


# virtual methods
.method public getProjected()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 148
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 151
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 154
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
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
