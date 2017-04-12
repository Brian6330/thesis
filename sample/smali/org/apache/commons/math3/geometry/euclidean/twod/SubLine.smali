.class public Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SubLine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;)V
    .locals 6
    .param p1, "segment"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 3
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p3, "tolerance"    # D

    .prologue
    .line 61
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 52
    return-void
.end method

.method private static buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 8
    .param p0, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "tolerance"    # D

    .prologue
    .line 159
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 160
    .local v0, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    return-object v1
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 99
    .local v3, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v5, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 103
    .local v2, "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    .line 104
    .local v6, "start":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    .line 105
    .local v0, "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-direct {v7, v6, v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v0    # "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v2    # "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    .end local v6    # "start":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    return-object v5
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .param p1, "subLine"    # Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
    .param p2, "includeEndPoints"    # Z

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 130
    .local v0, "line1":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 133
    .local v1, "line2":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 134
    .local v4, "v2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    if-nez v4, :cond_1

    move-object v4, v5

    .line 147
    .end local v4    # "v2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    :goto_0
    return-object v4

    .line 139
    .restart local v4    # "v2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v2

    .line 142
    .local v2, "loc1":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v3

    .line 144
    .local v3, "loc2":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    if-eqz p2, :cond_3

    .line 145
    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v2, v6, :cond_2

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v3, v6, :cond_0

    :cond_2
    move-object v4, v5

    goto :goto_0

    .line 147
    :cond_3
    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v2, v6, :cond_4

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v3, v6, :cond_0

    :cond_4
    move-object v4, v5

    goto :goto_0
.end method

.method public side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .local v5, "thisLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object v4, p1

    .line 177
    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 178
    .local v4, "otherLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    .line 180
    .local v0, "crossing":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    if-nez v0, :cond_2

    .line 182
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v2

    .line 183
    .local v2, "global":D
    const-wide v8, -0x4224832026284245L    # -1.0E-10

    cmpg-double v7, v2, v8

    if-gez v7, :cond_0

    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 189
    .end local v2    # "global":D
    :goto_0
    return-object v7

    .line 183
    .restart local v2    # "global":D
    :cond_0
    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v7, v2, v8

    if-lez v7, :cond_1

    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_1
    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    .line 187
    .end local v2    # "global":D
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v8

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_3

    const/4 v1, 0x1

    .line 188
    .local v1, "direct":Z
    :goto_1
    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v6

    .line 189
    .local v6, "x":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v7

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v10

    invoke-direct {v8, v6, v1, v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/Region;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v7

    goto :goto_0

    .line 187
    .end local v1    # "direct":Z
    .end local v6    # "x":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .local v14, "thisLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object/from16 v9, p1

    .line 198
    check-cast v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 199
    .local v9, "otherLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v14, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 200
    .local v4, "crossing":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v16

    .line 202
    .local v16, "tolerance":D
    if-nez v4, :cond_1

    .line 204
    invoke-virtual {v9, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v6

    .line 205
    .local v6, "global":D
    const-wide v18, -0x4224832026284245L    # -1.0E-10

    cmpg-double v18, v6, v18

    if-gez v18, :cond_0

    new-instance v18, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 228
    .end local v6    # "global":D
    :goto_0
    return-object v18

    .line 205
    .restart local v6    # "global":D
    :cond_0
    new-instance v18, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto :goto_0

    .line 211
    .end local v6    # "global":D
    :cond_1
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v18

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v20

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_2

    const/4 v5, 0x1

    .line 212
    .local v5, "direct":Z
    :goto_1
    invoke-virtual {v14, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v15

    .line 213
    .local v15, "x":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v19, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    if-nez v5, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v13

    .line 215
    .local v13, "subPlus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v18, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v5, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v12

    .line 218
    .local v12, "subMinus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v11

    .line 219
    .local v11, "splitTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v18

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v18

    if-eqz v18, :cond_4

    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 223
    .local v10, "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v18

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v18

    if-eqz v18, :cond_5

    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 228
    .local v8, "minusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_4
    new-instance v18, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    new-instance v19, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v20

    new-instance v21, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-direct {v0, v10, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct/range {v19 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    new-instance v20, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v21

    new-instance v22, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct/range {v20 .. v22}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-direct/range {v18 .. v20}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_0

    .line 211
    .end local v5    # "direct":Z
    .end local v8    # "minusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .end local v10    # "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .end local v11    # "splitTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .end local v12    # "subMinus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .end local v13    # "subPlus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .end local v15    # "x":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 213
    .restart local v5    # "direct":Z
    .restart local v15    # "x":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 219
    .restart local v11    # "splitTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .restart local v12    # "subMinus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .restart local v13    # "subPlus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :cond_4
    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v18, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v10, v13, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_3

    .line 223
    .restart local v10    # "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :cond_5
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v18, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v8, v12, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_4
.end method
