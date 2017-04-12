.class public Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.super Ljava/lang/Object;
.source "RegionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory",
            "<TS;>.NodesCleaner;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    .line 42
    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method private recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    .line 153
    .local v7, "transformedTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 157
    .local v4, "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    if-eqz v4, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 160
    .local v6, "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 161
    .local v5, "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v9

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 167
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    .end local v5    # "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v6    # "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    :cond_1
    return-object v7
.end method

.method private recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_1

    .line 181
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 201
    .local v3, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object v3

    .line 181
    .end local v3    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 186
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v2, v4

    .line 189
    .local v2, "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v1, v4

    .line 192
    .local v1, "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :goto_3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .end local v0    # "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v0, v2, v1, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 195
    .end local v1    # "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v2    # "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .restart local v0    # "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .restart local v3    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_1

    .line 187
    .end local v3    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    goto :goto_2

    .line 189
    .restart local v2    # "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public varargs buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "hyperplanes":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 49
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_2

    :cond_0
    move-object v5, v6

    .line 68
    :cond_1
    return-object v5

    .line 54
    :cond_2
    aget-object v7, p1, v8

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v5

    .line 57
    .local v5, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    invoke-interface {v5, v8}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 58
    .local v4, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 59
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 60
    .local v1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 64
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 59
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public difference(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v2, 0x0

    .line 122
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;

    invoke-direct {v3, p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 124
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 125
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method

.method public getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    return-object v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v2, 0x0

    .line 94
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 96
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 97
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method

.method public union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v2, 0x0

    .line 80
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 82
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 83
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method

.method public xor(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>;"
    .local p1, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p2, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v2, 0x0

    .line 108
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 110
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 111
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    return-object v1
.end method
