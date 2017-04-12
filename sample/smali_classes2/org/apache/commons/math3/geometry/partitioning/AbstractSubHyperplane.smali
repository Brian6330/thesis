.class public abstract Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.super Ljava/lang/Object;
.source "AbstractSubHyperplane.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 55
    return-void
.end method

.method private recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<TS;TT;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TT;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    .local p2, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p3, "transform":Lorg/apache/commons/math3/geometry/partitioning/Transform;, "Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;"
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_0

    .line 152
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 172
    .local v3, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    :goto_0
    invoke-interface {p4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v3

    .line 156
    .end local v3    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 157
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v2, v4

    .line 160
    .local v2, "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v1, v4

    .line 163
    .local v1, "tPI":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    :goto_2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .end local v0    # "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v0, v2, v1, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 166
    .end local v1    # "tPI":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    .end local v2    # "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    .restart local v0    # "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v4, v5, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {p0, v6, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .restart local v3    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    goto :goto_0

    .line 158
    .end local v3    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v5, v6, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    goto :goto_1

    .line 160
    .restart local v2    # "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TT;>;"
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v4, v5, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<TS;TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "transform":Lorg/apache/commons/math3/geometry/partitioning/Transform;, "Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;"
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p1, v9}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v6

    .line 115
    .local v6, "tHyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    invoke-direct {p0, v9, v6, p1, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    .line 120
    .local v7, "tTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 124
    .local v4, "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 127
    .local v8, "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 128
    .local v5, "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v10

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 134
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    .end local v5    # "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;"
    .end local v8    # "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TT;>;"
    :cond_1
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v9

    return-object v9
.end method

.method protected abstract buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<TS;TT;>;"
        }
    .end annotation
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    return-object v0
.end method

.method public getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    return-object v0
.end method

.method public getSize()D
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 97
    .local v0, "o":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public abstract side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation
.end method

.method public abstract split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end method
