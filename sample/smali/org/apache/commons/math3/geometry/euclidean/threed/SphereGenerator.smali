.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;
.super Ljava/lang/Object;
.source "SphereGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 8
    .param p1, "c1"    # [Lorg/apache/commons/math3/fraction/BigFraction;
    .param p2, "c2"    # [Lorg/apache/commons/math3/fraction/BigFraction;
    .param p3, "c3"    # [Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    aget-object v0, p2, v4

    aget-object v1, p3, v5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p1, v6

    aget-object v2, p1, v7

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v4

    aget-object v2, p3, v6

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v7

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v4

    aget-object v2, p3, v7

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v5

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v7

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v5

    aget-object v2, p3, v6

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v4

    aget-object v3, p1, v7

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v5

    aget-object v2, p3, v7

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v6

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v6

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v5

    aget-object v3, p1, v7

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v6

    aget-object v2, p3, v5

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v7

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v6

    aget-object v2, p3, v7

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v7

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v6

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v7

    aget-object v2, p3, v5

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v4

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v7

    aget-object v2, p3, v6

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p1, v5

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "support":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 39
    new-instance v4, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v4, v5, v12, v13, v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 120
    :goto_0
    return-object v4

    .line 41
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 42
    .local v7, "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 43
    new-instance v4, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    invoke-direct {v4, v7, v12, v13, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 45
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 46
    .local v10, "vB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 47
    new-instance v12, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v16

    mul-double v14, v14, v16

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    invoke-direct {v12, v4, v14, v15, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    move-object v4, v12

    goto :goto_0

    .line 51
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 52
    .local v11, "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 55
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v12

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v14

    add-double/2addr v12, v14

    mul-double/2addr v12, v4

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 57
    .local v8, "p":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v6, 0x0

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v27

    .line 63
    .local v27, "disk":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    new-instance v5, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/Vector;

    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v12

    const/4 v6, 0x3

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v9, 0x1

    aput-object v10, v6, v9

    const/4 v9, 0x2

    aput-object v11, v6, v9

    invoke-direct {v5, v4, v12, v13, v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    move-object v4, v5

    goto/16 :goto_0

    .line 67
    .end local v8    # "p":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v27    # "disk":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    :cond_3
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 91
    .local v36, "vD":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    const/4 v4, 0x4

    new-array v0, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v21, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v21, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v21, v4

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v21, v4

    .line 95
    .local v21, "c2":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x4

    new-array v0, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v22, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v22, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v22, v4

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v22, v4

    .line 99
    .local v22, "c3":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x4

    new-array v0, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v23, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v23, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v23, v4

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v23, v4

    .line 103
    .local v23, "c4":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x4

    new-array v0, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v21, v5

    const/4 v6, 0x0

    aget-object v6, v21, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v22, v6

    const/4 v9, 0x0

    aget-object v9, v22, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v23, v6

    const/4 v9, 0x0

    aget-object v9, v23, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v21, v5

    const/4 v6, 0x1

    aget-object v6, v21, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v22, v6

    const/4 v9, 0x1

    aget-object v9, v22, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v23, v6

    const/4 v9, 0x1

    aget-object v9, v23, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    aput-object v5, v20, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v21, v5

    const/4 v6, 0x2

    aget-object v6, v21, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v22, v6

    const/4 v9, 0x2

    aget-object v9, v22, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v23, v6

    const/4 v9, 0x2

    aget-object v9, v23, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    aput-object v5, v20, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x3

    aget-object v6, v21, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v22, v6

    const/4 v9, 0x3

    aget-object v9, v22, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v23, v6

    const/4 v9, 0x3

    aget-object v9, v23, v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    aput-object v5, v20, v4

    .line 109
    .local v20, "c1":[Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v35

    .line 110
    .local v35, "twoM11":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v31

    .line 111
    .local v31, "m12":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v32

    .line 112
    .local v32, "m13":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v33

    .line 113
    .local v33, "m14":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v24

    .line 114
    .local v24, "centerX":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v25

    .line 115
    .local v25, "centerY":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v26

    .line 116
    .local v26, "centerZ":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v28

    .line 117
    .local v28, "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x0

    aget-object v4, v22, v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v29

    .line 118
    .local v29, "dy":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x0

    aget-object v4, v23, v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v30

    .line 119
    .local v30, "dz":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v34

    .line 120
    .local v34, "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    new-instance v4, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v13, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v18

    invoke-direct/range {v13 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    invoke-virtual/range {v34 .. v34}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    const/4 v6, 0x2

    aput-object v11, v5, v6

    const/4 v6, 0x3

    aput-object v36, v5, v6

    invoke-direct {v4, v13, v14, v15, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_0
.end method
