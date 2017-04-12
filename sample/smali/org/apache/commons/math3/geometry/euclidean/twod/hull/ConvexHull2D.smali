.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
.super Ljava/lang/Object;
.source "ConvexHull2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/hull/ConvexHull;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/hull/ConvexHull",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1335061L


# instance fields
.field private transient lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

.field private final tolerance:D

.field private final vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 4
    .param p1, "vertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_CONVEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 73
    return-void
.end method

.method private isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 18
    .param p1, "hullVertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 81
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 82
    const/4 v4, 0x1

    .line 105
    :goto_0
    return v4

    .line 85
    :cond_0
    const/16 v17, 0x0

    .line 86
    .local v17, "sign":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v13, v4, :cond_5

    .line 87
    if-nez v13, :cond_1

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_2
    aget-object v14, p1, v4

    .line 88
    .local v14, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v15, p1, v13

    .line 89
    .local v15, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v13, v4, :cond_2

    const/4 v4, 0x0

    :goto_3
    aget-object v16, p1, v4

    .line 91
    .local v16, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    .line 92
    .local v11, "d1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v12

    .line 94
    .local v12, "d2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    .line 95
    .local v2, "crossProduct":D
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v10

    .line 97
    .local v10, "cmp":I
    int-to-double v4, v10

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    .line 98
    move/from16 v0, v17

    int-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    move/from16 v0, v17

    if-eq v10, v0, :cond_3

    .line 99
    const/4 v4, 0x0

    goto :goto_0

    .line 87
    .end local v2    # "crossProduct":D
    .end local v10    # "cmp":I
    .end local v11    # "d1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v12    # "d2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v14    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v16    # "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    add-int/lit8 v4, v13, -0x1

    goto :goto_2

    .line 89
    .restart local v14    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v15    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_2
    add-int/lit8 v4, v13, 0x1

    goto :goto_3

    .line 101
    .restart local v2    # "crossProduct":D
    .restart local v10    # "cmp":I
    .restart local v11    # "d1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v12    # "d2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v16    # "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_3
    move/from16 v17, v10

    .line 86
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "crossProduct":D
    .end local v10    # "cmp":I
    .end local v11    # "d1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v12    # "d2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v14    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v16    # "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 22

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    if-nez v15, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v14, v15

    .line 130
    .local v14, "size":I
    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 131
    const/4 v15, 0x0

    new-array v15, v15, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 156
    .end local v14    # "size":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object v15

    .line 132
    .restart local v14    # "size":I
    :cond_1
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 133
    const/4 v15, 0x1

    new-array v15, v15, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/16 v16, 0x0

    aget-object v11, v15, v16

    .line 135
    .local v11, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/16 v16, 0x1

    aget-object v12, v15, v16

    .line 136
    .local v12, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    const/16 v16, 0x0

    new-instance v17, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v18, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v11, v12, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v12, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v17, v15, v16

    goto :goto_0

    .line 138
    .end local v11    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v12    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_2
    new-array v15, v14, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 139
    const/4 v5, 0x0

    .line 140
    .local v5, "firstPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v9, 0x0

    .line 141
    .local v9, "lastPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v7, 0x0

    .line 142
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .local v4, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v8, v7

    .end local v7    # "index":I
    .local v8, "index":I
    :goto_1
    if-ge v6, v10, :cond_4

    aget-object v13, v4, v6

    .line 143
    .local v13, "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    if-nez v9, :cond_3

    .line 144
    move-object v5, v13

    .line 145
    move-object v9, v13

    move v7, v8

    .line 142
    .end local v8    # "index":I
    .restart local v7    # "index":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_1

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    new-instance v16, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v17, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v13, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v13, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v16, v15, v8

    .line 149
    move-object v9, v13

    goto :goto_2

    .line 152
    .end local v7    # "index":I
    .end local v13    # "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v8    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v16, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v17, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v5, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v5, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v16, v15, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public createRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v4, v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 162
    new-instance v4, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw v4

    .line 164
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 165
    .local v0, "factory":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object v3

    .line 166
    .local v3, "segments":[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    array-length v4, v3

    new-array v2, v4, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 167
    .local v2, "lineArray":[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 168
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    aput-object v4, v2, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v4

    return-object v4
.end method

.method public getLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object v0

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object v0
.end method

.method public bridge synthetic getVertices()[Lorg/apache/commons/math3/geometry/Point;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method
