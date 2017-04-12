.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
.super Ljava/lang/Object;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Edge"
.end annotation


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 1
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .line 534
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .line 535
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 539
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->setOutgoing(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V

    .line 540
    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V

    .line 542
    return-void
.end method


# virtual methods
.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

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
    .line 577
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    return-object v0
.end method

.method public setNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 570
    return-void
.end method

.method public split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .locals 5
    .param p1, "splitLine"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .prologue
    .line 590
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 591
    .local v1, "splitVertex":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 592
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 593
    .local v2, "startHalf":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 594
    .local v0, "endHalf":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 595
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 596
    return-object v1
.end method
