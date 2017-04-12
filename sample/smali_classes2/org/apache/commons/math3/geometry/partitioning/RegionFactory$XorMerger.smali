.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;
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
    name = "XorMerger"
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
    .line 241
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.XorMerger;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
    .param p2, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.XorMerger;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V

    return-void
.end method


# virtual methods
.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 4
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
    .line 246
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.XorMerger;"
    .local p1, "leaf":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    move-object v0, p2

    .line 247
    .local v0, "t":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    # invokes: Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 251
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Z)V

    invoke-virtual {v0, p3, p4, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 252
    return-object v0
.end method
