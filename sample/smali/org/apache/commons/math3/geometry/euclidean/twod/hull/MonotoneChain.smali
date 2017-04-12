.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;
.super Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;
.source "MonotoneChain.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;-><init>(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "includeCollinearPoints"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(ZD)V
    .locals 0
    .param p1, "includeCollinearPoints"    # Z
    .param p2, "tolerance"    # D

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(ZD)V

    .line 74
    return-void
.end method

.method private updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V
    .locals 16
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "hull":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->getTolerance()D

    move-result-wide v12

    .line 136
    .local v12, "tolerance":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 138
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 139
    .local v7, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v14

    cmpg-double v14, v14, v12

    if-gez v14, :cond_2

    .line 177
    .end local v7    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v7    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v8, "offset":D
    .local v10, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v11, "size":I
    :cond_1
    const-wide/16 v14, 0x0

    cmpl-double v14, v8, v14

    if-lez v14, :cond_5

    .line 171
    add-int/lit8 v14, v11, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    .end local v7    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v8    # "offset":D
    .end local v10    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v11    # "size":I
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_5

    .line 145
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    .line 146
    .restart local v11    # "size":I
    add-int/lit8 v14, v11, -0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 147
    .restart local v7    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v14, v11, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 149
    .restart local v10    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v14, v7, v10, v12, v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    .line 150
    .restart local v8    # "offset":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v12

    if-gez v14, :cond_1

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    .line 154
    .local v2, "distanceToCurrent":D
    cmpg-double v14, v2, v12

    if-ltz v14, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v14

    cmpg-double v14, v14, v12

    if-ltz v14, :cond_0

    .line 159
    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    .line 160
    .local v4, "distanceToLast":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->isIncludeCollinearPoints()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 161
    cmpg-double v14, v2, v4

    if-gez v14, :cond_3

    add-int/lit8 v6, v11, -0x1

    .line 162
    .local v6, "index":I
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .end local v6    # "index":I
    :cond_3
    move v6, v11

    .line 161
    goto :goto_1

    .line 164
    :cond_4
    cmpl-double v14, v2, v4

    if-lez v14, :cond_0

    .line 165
    add-int/lit8 v14, v11, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v2    # "distanceToCurrent":D
    .end local v4    # "distanceToLast":D
    .end local v7    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v8    # "offset":D
    .end local v10    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v11    # "size":I
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .local v5, "pointsSortedByXAxis":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;

    invoke-direct {v7, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v3, "lowerHull":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 99
    .local v4, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct {p0, v4, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V

    goto :goto_0

    .line 103
    .end local v4    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, "upperHull":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "idx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 105
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 106
    .restart local v4    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct {p0, v4, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V

    .line 104
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 111
    .end local v4    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "hullVertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_2

    .line 113
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3

    .line 116
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 120
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 121
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_4
    return-object v0
.end method

.method public bridge synthetic generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTolerance()D
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->getTolerance()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isIncludeCollinearPoints()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->isIncludeCollinearPoints()Z

    move-result v0

    return v0
.end method
