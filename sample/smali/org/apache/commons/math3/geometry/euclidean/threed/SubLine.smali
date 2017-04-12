.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;
.super Ljava/lang/Object;
.source "SubLine.java"


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private final line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

.field private final remainingRegion:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V
    .locals 0
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .param p2, "remainingRegion"    # Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .line 50
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->remainingRegion:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;)V
    .locals 6
    .param p1, "segment"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getTolerance()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 3
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    .line 63
    return-void
.end method

.method private static buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 8
    .param p0, "start"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "end"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 160
    .local v0, "line":Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    return-object v1
.end method


# virtual methods
.method public getSegments()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->remainingRegion:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v3

    .line 102
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 105
    .local v2, "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 106
    .local v5, "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 107
    .local v0, "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-direct {v6, v5, v0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v2    # "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    .end local v5    # "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_0
    return-object v4
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 6
    .param p1, "subLine"    # Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;
    .param p2, "includeEndPoints"    # Z

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 132
    .local v2, "v1D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 145
    .end local v2    # "v1D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_0
    :goto_0
    return-object v2

    .line 137
    .restart local v2    # "v1D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->remainingRegion:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    .line 140
    .local v0, "loc1":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->remainingRegion:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v1

    .line 142
    .local v1, "loc2":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    if-eqz p2, :cond_3

    .line 143
    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v0, v4, :cond_2

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v1, v4, :cond_0

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 145
    :cond_3
    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v0, v4, :cond_4

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v1, v4, :cond_0

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method
