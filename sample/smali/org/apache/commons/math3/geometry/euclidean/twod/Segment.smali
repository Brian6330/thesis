.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 43
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 44
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 45
    return-void
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 24
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v20

    sub-double v2, v18, v20

    .line 85
    .local v2, "deltaX":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v20

    sub-double v4, v18, v20

    .line 87
    .local v4, "deltaY":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v20

    sub-double v18, v18, v20

    mul-double v18, v18, v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v22

    sub-double v20, v20, v22

    mul-double v20, v20, v4

    add-double v18, v18, v20

    mul-double v20, v2, v2

    mul-double v22, v4, v4

    add-double v20, v20, v22

    div-double v16, v18, v20

    .line 97
    .local v16, "r":D
    const-wide/16 v18, 0x0

    cmpg-double v11, v16, v18

    if-ltz v11, :cond_0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v16, v18

    if-lez v11, :cond_1

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v6

    .line 99
    .local v6, "dist1":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    .line 101
    .local v8, "dist2":D
    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v18

    .line 109
    .end local v6    # "dist1":D
    .end local v8    # "dist2":D
    :goto_0
    return-wide v18

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v18

    mul-double v20, v16, v2

    add-double v12, v18, v20

    .line 106
    .local v12, "px":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v18

    mul-double v20, v16, v4

    add-double v14, v18, v20

    .line 108
    .local v14, "py":D
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v10, v12, v13, v14, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 109
    .local v10, "interPt":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v18

    goto :goto_0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method
