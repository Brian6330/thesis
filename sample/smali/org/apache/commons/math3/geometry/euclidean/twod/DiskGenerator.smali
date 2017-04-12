.class public Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;
.super Ljava/lang/Object;
.source "DiskGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 7
    .param p1, "c1"    # [Lorg/apache/commons/math3/fraction/BigFraction;
    .param p2, "c2"    # [Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    aget-object v0, p2, v4

    aget-object v1, p1, v6

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v5

    aget-object v2, p1, v4

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aget-object v1, p2, v6

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
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "support":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 35
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v2, v3, v6, v7, v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 88
    :goto_0
    return-object v2

    .line 37
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 38
    .local v5, "vA":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 39
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-direct {v2, v5, v6, v7, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 42
    .local v8, "vB":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 43
    new-instance v21, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v22

    mul-double v6, v6, v22

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v6, v7, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    move-object/from16 v2, v21

    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 69
    .local v20, "vC":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v2, 0x3

    new-array v10, v2, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v10, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v10, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v10, v2

    .line 72
    .local v10, "c2":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x3

    new-array v11, v2, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v11, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v11, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v11, v2

    .line 75
    .local v11, "c3":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x3

    new-array v9, v2, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v10, v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v11, v4

    const/4 v6, 0x0

    aget-object v6, v11, v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v10, v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    const/4 v6, 0x1

    aget-object v6, v11, v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v10, v3

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v11, v4

    const/4 v6, 0x2

    aget-object v6, v11, v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aput-object v3, v9, v2

    .line 80
    .local v9, "c1":[Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v19

    .line 81
    .local v19, "twoM11":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v16

    .line 82
    .local v16, "m12":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    .line 83
    .local v17, "m13":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    .line 84
    .local v12, "centerX":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    .line 85
    .local v13, "centerY":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v14

    .line 86
    .local v14, "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 87
    .local v15, "dy":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v14, v14}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v15, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v18

    .line 88
    .local v18, "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v12}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v13}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-direct {v3, v6, v7, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/16 v21, 0x0

    aput-object v5, v4, v21

    const/16 v21, 0x1

    aput-object v8, v4, v21

    const/16 v21, 0x2

    aput-object v20, v4, v21

    invoke-direct {v2, v3, v6, v7, v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_0
.end method
