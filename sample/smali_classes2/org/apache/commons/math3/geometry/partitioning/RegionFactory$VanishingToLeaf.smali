.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VanishingToLeaf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final inside:Z

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Z)V
    .locals 0
    .param p2, "inside"    # Z

    .prologue
    .line 332
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.VanishingToLeaf;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-boolean p2, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;->inside:Z

    .line 334
    return-void
.end method


# virtual methods
.method public fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
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
    .line 338
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.VanishingToLeaf;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 343
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;->inside:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
