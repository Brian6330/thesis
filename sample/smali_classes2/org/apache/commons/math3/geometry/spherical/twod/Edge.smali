.class public Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field private final circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

.field private end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

.field private final length:D

.field private final start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 1
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p3, "length"    # D
    .param p5, "circle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    .line 56
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 59
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 60
    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 62
    return-void
.end method

.method private addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 7
    .param p1, "subStart"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p2, "subEnd"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .param p3, "subLength"    # D
    .param p6, "splitCircle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "D",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ")",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;"
        }
    .end annotation

    .prologue
    .line 209
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v2

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_0

    .line 218
    .end local p1    # "subStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :goto_0
    return-object p1

    .line 215
    .restart local p1    # "subStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_0
    invoke-virtual {p2, p6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 216
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 217
    .local v1, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    .line 218
    goto :goto_0
.end method


# virtual methods
.method public getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    return-object v0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 5
    .param p1, "alpha"    # D

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v2

    add-double/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 2
    .param p1, "next"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 113
    return-void
.end method

.method split(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V
    .locals 26
    .param p1, "splitCircle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "outsideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    .local p3, "insideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v22

    .line 130
    .local v22, "edgeStart":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v2

    .line 131
    .local v2, "arc":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    add-double v10, v10, v22

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v8

    sub-double v20, v8, v22

    .line 132
    .local v20, "arcRelativeStart":D
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v8

    add-double v18, v20, v8

    .line 133
    .local v18, "arcRelativeEnd":D
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v6, v18, v8

    .line 136
    .local v6, "unwrappedEnd":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v24

    .line 137
    .local v24, "tolerance":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 138
    .local v4, "previousVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v8, v8, v24

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_0

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_0
    return-void

    .line 148
    :cond_0
    const-wide/16 v16, 0x0

    .line 149
    .local v16, "alreadyManagedLength":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_1

    .line 151
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double v10, v22, v6

    invoke-virtual {v8, v10, v11}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    move-object/from16 v3, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    .line 154
    move-wide/from16 v16, v6

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v8, v8, v24

    cmpl-double v3, v20, v8

    if-ltz v3, :cond_3

    .line 159
    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v12, v8, v16

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    goto :goto_0

    .line 165
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_3
    new-instance v11, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double v8, v22, v20

    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v11, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v12, v20, v16

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    .line 172
    move-wide/from16 v16, v20

    .line 174
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v8, v8, v24

    cmpl-double v3, v18, v8

    if-ltz v3, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v12, v8, v16

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v14, p3

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    goto/16 :goto_0

    .line 180
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double v8, v22, v20

    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v11, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v12, v20, v16

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v14, p3

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    .line 183
    move-wide/from16 v16, v20

    .line 184
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v12, v8, v16

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    goto/16 :goto_0
.end method
