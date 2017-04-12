.class public Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
.super Ljava/lang/Object;
.source "BSPTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;,
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;,
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
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
.field private attribute:Ljava/lang/Object;

.field private cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end field

.field private minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation
.end field

.field private plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 89
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 90
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 91
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 92
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 100
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 101
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 102
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V
    .locals 1
    .param p4, "attribute"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "cut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "plus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "minus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 122
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 123
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 125
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 126
    iput-object p0, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 127
    iput-object p0, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 128
    return-void
.end method

.method private chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p2, "vanishingHandler":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 778
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 779
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 781
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v1, :cond_0

    .line 783
    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 784
    .local v0, "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 785
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 786
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 787
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 791
    .end local v0    # "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    return-void
.end method

.method private chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p2, "vanishingHandler":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 805
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 806
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 808
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v1, :cond_0

    .line 810
    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 811
    .local v0, "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 812
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 813
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 814
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 818
    .end local v0    # "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    return-void
.end method

.method private condense()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 402
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 403
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 404
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 406
    :cond_2
    return-void

    .line 401
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    goto :goto_0
.end method

.method private fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v0, p1

    .line 298
    .local v0, "s":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    move-object v1, p0

    .local v1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 299
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    .line 298
    :goto_1
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    goto :goto_1

    .line 305
    :cond_1
    return-object v0
.end method

.method private merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 8
    .param p4, "isPlusChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;Z)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    .local p3, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 447
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    .line 449
    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    .line 473
    :cond_0
    :goto_0
    return-object v6

    .line 450
    :cond_1
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_2

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, v7

    .line 452
    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    .line 456
    .local v6, "merged":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    if-eqz p3, :cond_3

    .line 457
    iput-object p3, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 458
    if-eqz p4, :cond_4

    .line 459
    iput-object v6, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 466
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, v1, p2, v6, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 467
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, v1, p2, v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 468
    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 469
    iget-object v0, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    goto :goto_0

    .line 461
    :cond_4
    iput-object v6, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1
.end method

.method private recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V
    .locals 4
    .param p2, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;D",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p4, "close":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 377
    .local v0, "offset":D
    neg-double v2, p2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 379
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 391
    .end local v0    # "offset":D
    :cond_0
    :goto_0
    return-void

    .line 380
    .restart local v0    # "offset":D
    :cond_1
    cmpl-double v2, v0, p2

    if-lez v2, :cond_2

    .line 382
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 387
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAttribute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-object v0
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 4
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;D)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v2, :cond_1

    .line 346
    .end local p0    # "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 337
    .restart local p0    # "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 339
    .local v0, "offset":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-ltz v2, :cond_0

    .line 341
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 343
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    goto :goto_0

    .line 346
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    goto :goto_0
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<TS;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method public getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;
    .locals 2
    .param p2, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;D)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "close":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 361
    return-object v0
.end method

.method public getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 157
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 160
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    .line 161
    .local v0, "chopped":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 163
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 164
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 165
    const/4 v1, 0x0

    .line 173
    :goto_0
    return v1

    .line 168
    :cond_2
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 169
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 170
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p0, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 171
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 172
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p0, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 173
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)V
    .locals 1
    .param p2, "isPlusChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 655
    return-void
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 4
    .param p2, "isPlusChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;Z",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "parentTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p3, "vanishingHandler":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 674
    if-eqz p1, :cond_0

    .line 675
    if-eqz p2, :cond_3

    .line 676
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 683
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v3, :cond_2

    .line 686
    move-object v2, p0

    .local v2, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v3, :cond_1

    .line 689
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    .line 693
    .local v1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    iget-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v2, v3, :cond_4

    .line 694
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 695
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 696
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 703
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v3, :cond_5

    .line 705
    invoke-interface {p3, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 706
    .local v0, "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 707
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 708
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 709
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 710
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v3, :cond_5

    .line 719
    .end local v0    # "fixed":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v1    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 723
    .end local v2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_2
    return-void

    .line 678
    :cond_3
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 698
    .restart local v1    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .restart local v2    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 699
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 700
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    goto :goto_2

    .line 686
    :cond_5
    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1
.end method

.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "leafMerger":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0
.end method

.method public pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 6
    .param p1, "cellAttribute"    # Ljava/lang/Object;
    .param p2, "otherLeafsAttributes"    # Ljava/lang/Object;
    .param p3, "internalAttributes"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 752
    .local v3, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    move-object v0, p0

    .local v0, "current":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v5, :cond_1

    .line 753
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 754
    .local v1, "parentCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 755
    .local v2, "sibling":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v0, v5, :cond_0

    .line 756
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4, v1, v3, v2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .end local v3    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local v4, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    move-object v3, v4

    .line 752
    .end local v4    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local v3    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_1
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 758
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4, v1, v2, v3, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .end local v3    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local v4    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    move-object v3, v4

    .end local v4    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .restart local v3    # "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_1

    .line 762
    .end local v1    # "parentCut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v2    # "sibling":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_1
    return-object v3
.end method

.method public setAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v9, 0x0

    .line 571
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v6, :cond_0

    .line 572
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    new-instance v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, p1, v6, v7, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 629
    :goto_0
    return-object v3

    .line 575
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 576
    .local v0, "cHyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    .line 577
    .local v2, "sHyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 629
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v6, p1, v7, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    :goto_1
    move-object v3, v6

    goto :goto_0

    .line 580
    :pswitch_0
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v6, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 581
    .local v3, "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v6, v7, :cond_1

    .line 582
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    iget-object v8, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 584
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 585
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 587
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    iget-object v8, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 589
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 590
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto/16 :goto_0

    .line 596
    .end local v3    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :pswitch_1
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v6, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 597
    .restart local v3    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v6, v7, :cond_2

    .line 598
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    iget-object v9, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 600
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 601
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto/16 :goto_0

    .line 603
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    iget-object v9, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 605
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 606
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v3, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto/16 :goto_0

    .line 612
    .end local v3    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :pswitch_2
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v1

    .line 613
    .local v1, "cutParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v4

    .line 614
    .local v4, "subParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-direct {v3, p1, v6, v7, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 617
    .restart local v3    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 618
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 619
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v5, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 620
    .local v5, "tmp":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 621
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v6, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 622
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v5, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 623
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v6, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v7, v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 624
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 625
    iget-object v6, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    goto/16 :goto_0

    .line 629
    .end local v1    # "cutParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    .end local v3    # "split":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v4    # "subParts":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    .end local v5    # "tmp":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_3
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v6, p1, v7, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 286
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 253
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 254
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 258
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 263
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 264
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 268
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 272
    :pswitch_4
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 273
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 277
    :pswitch_5
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 278
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 279
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
