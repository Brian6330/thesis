.class Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;
.super Ljava/lang/Object;
.source "BoundaryBuilder.java"

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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v3, 0x0

    .line 40
    .local v3, "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v2, 0x0

    .line 41
    .local v2, "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v4, 0x0

    .line 45
    .local v4, "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 47
    .local v1, "plusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchOutside()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 52
    .local v0, "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchInside()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    .line 56
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .end local v4    # "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    .line 57
    .restart local v4    # "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 58
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 62
    .end local v0    # "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchInside()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 67
    .restart local v0    # "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchOutside()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 71
    if-nez v4, :cond_1

    .line 72
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .end local v4    # "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    .line 74
    .restart local v4    # "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 75
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 79
    .end local v0    # "minusChar":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    :cond_2
    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    .local v5, "up":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    if-eqz v5, :cond_3

    .line 82
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 81
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    goto :goto_0

    .line 87
    .end local v5    # "up":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    invoke-direct {v6, v3, v2, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 89
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
    .line 93
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
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
    .line 33
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
