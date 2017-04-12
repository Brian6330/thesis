.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
.super Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectableSegment"
.end annotation


# instance fields
.field private final endNode:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

.field private final node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private previous:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

.field private processed:Z

.field private final startNode:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 1
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p5, "startNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p6, "endNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    const/4 v0, 0x0

    .line 978
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 979
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 980
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->startNode:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 981
    iput-object p6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->endNode:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 982
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->previous:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 983
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->next:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->processed:Z

    .line 985
    return-void
.end method


# virtual methods
.method public getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->endNode:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->next:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    return-object v0
.end method

.method public getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->previous:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    return-object v0
.end method

.method public getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->startNode:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public isProcessed()Z
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->processed:Z

    return v0
.end method

.method public setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V
    .locals 0
    .param p1, "next"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .prologue
    .line 1033
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->next:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 1034
    return-void
.end method

.method public setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V
    .locals 0
    .param p1, "previous"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .prologue
    .line 1019
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->previous:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 1020
    return-void
.end method

.method public setProcessed(Z)V
    .locals 0
    .param p1, "processed"    # Z

    .prologue
    .line 1040
    iput-boolean p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->processed:Z

    .line 1041
    return-void
.end method
