.class Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;
.super Ljava/lang/Object;
.source "BoundarySizeVisitor.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private boundarySize:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->boundarySize:D

    .line 34
    return-void
.end method


# virtual methods
.method public getSize()D
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor<TS;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->boundarySize:D

    return-wide v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 46
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->boundarySize:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getSize()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->boundarySize:D

    .line 49
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->boundarySize:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getSize()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->boundarySize:D

    .line 52
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
