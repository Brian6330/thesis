.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntersectionMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V
    .locals 0

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.IntersectionMerger;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
    .param p2, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.IntersectionMerger;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V

    return-void
.end method


# virtual methods
.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 3
    .param p4, "isPlusChild"    # Z
    .param p5, "leafFromInstance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;ZZ)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.IntersectionMerger;"
    .local p1, "leaf":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Z)V

    invoke-virtual {p2, p3, p4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 236
    .end local p2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    return-object p2

    .line 235
    .restart local p2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Z)V

    invoke-virtual {p1, p3, p4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    move-object p2, p1

    .line 236
    goto :goto_0
.end method
