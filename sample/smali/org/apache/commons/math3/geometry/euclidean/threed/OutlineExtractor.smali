.class public Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.super Ljava/lang/Object;
.source "OutlineExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
    }
.end annotation


# instance fields
.field private u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 1
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 55
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 56
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method private pointIsBetween([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z
    .locals 24
    .param p1, "loop"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "n"    # I
    .param p3, "i"    # I

    .prologue
    .line 108
    add-int v17, p3, p2

    add-int/lit8 v17, v17, -0x1

    rem-int v17, v17, p2

    aget-object v16, p1, v17

    .line 109
    .local v16, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v2, p1, p3

    .line 110
    .local v2, "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v17, p3, 0x1

    rem-int v17, v17, p2

    aget-object v3, p1, v17

    .line 111
    .local v3, "next":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v18

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v20

    sub-double v8, v18, v20

    .line 112
    .local v8, "dx1":D
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v18

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v20

    sub-double v12, v18, v20

    .line 113
    .local v12, "dy1":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v18

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v20

    sub-double v10, v18, v20

    .line 114
    .local v10, "dx2":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v18

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v20

    sub-double v14, v18, v20

    .line 115
    .local v14, "dy2":D
    mul-double v18, v8, v14

    mul-double v20, v10, v12

    sub-double v0, v18, v20

    .line 116
    .local v0, "cross":D
    mul-double v18, v8, v10

    mul-double v20, v12, v14

    add-double v6, v18, v20

    .line 117
    .local v6, "dot":D
    mul-double v18, v8, v8

    mul-double v20, v12, v12

    add-double v18, v18, v20

    mul-double v20, v10, v10

    mul-double v22, v14, v14

    add-double v20, v20, v22

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 118
    .local v4, "d1d2":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v20, v20, v4

    cmpg-double v17, v18, v20

    if-gtz v17, :cond_0

    const-wide/16 v18, 0x0

    cmpl-double v17, v6, v18

    if-ltz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_0
    const/16 v17, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getOutline(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 11
    .param p1, "polyhedronsSet"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    .prologue
    const/4 v10, 0x0

    .line 66
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v8

    invoke-direct {v6, p0, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V

    .line 67
    .local v6, "projector":Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 68
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->getProjected()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v5

    .line 71
    .local v5, "projected":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 72
    .local v4, "outline":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v4

    if-ge v1, v8, :cond_4

    .line 73
    aget-object v7, v4, v1

    .line 74
    .local v7, "rawLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v0, v7

    .line 75
    .local v0, "end":I
    const/4 v2, 0x0

    .line 76
    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 77
    invoke-direct {p0, v7, v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->pointIsBetween([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    move v3, v2

    .local v3, "k":I
    :goto_2
    add-int/lit8 v8, v0, -0x1

    if-ge v3, v8, :cond_0

    .line 80
    add-int/lit8 v8, v3, 0x1

    aget-object v8, v7, v8

    aput-object v8, v7, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 82
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 85
    .end local v3    # "k":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_2
    array-length v8, v7

    if-eq v0, v8, :cond_3

    .line 90
    new-array v8, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v8, v4, v1

    .line 91
    aget-object v8, v4, v1

    invoke-static {v7, v10, v8, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "end":I
    .end local v2    # "j":I
    .end local v7    # "rawLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_4
    return-object v4
.end method
