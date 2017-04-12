.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DifferenceMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger",
        "<TS;>;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final region1:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final region2:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.DifferenceMerger;"
    .local p2, "region1":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    .local p3, "region2":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 271
    invoke-interface {p3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region2:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 272
    return-void
.end method


# virtual methods
.method public fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 6
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
    .line 295
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.DifferenceMerger;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 296
    .local v0, "cell":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    .line 297
    .local v2, "r":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v1

    .line 298
    .local v1, "p":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v3

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region2:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v3

    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v4

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

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
    .line 278
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.DifferenceMerger;"
    .local p1, "leaf":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    if-eqz p5, :cond_0

    .end local p2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    # invokes: Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 282
    .local v0, "argTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {v0, p3, p4, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 289
    .end local v0    # "argTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    return-object v0

    .restart local p2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    move-object p2, p1

    .line 280
    goto :goto_0

    .line 286
    :cond_1
    if-eqz p5, :cond_2

    move-object v1, p1

    .line 288
    .local v1, "instanceTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_2
    invoke-virtual {v1, p3, p4, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    move-object v0, v1

    .line 289
    goto :goto_1

    .end local v1    # "instanceTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_2
    move-object v1, p2

    .line 286
    goto :goto_2
.end method
