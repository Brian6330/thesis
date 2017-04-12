.class Lorg/apache/commons/math3/geometry/partitioning/Characterization;
.super Ljava/lang/Object;
.source "Characterization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/Characterization$1;
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
.field private final insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;"
        }
    .end annotation
.end field

.field private insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;"
        }
    .end annotation
.end field

.field private outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 58
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 62
    return-void
.end method

.method private addInsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "splitters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 131
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 135
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-virtual {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 136
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    goto :goto_0
.end method

.method private addOutsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "splitters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 117
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 121
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-virtual {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 122
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    goto :goto_0
.end method

.method private characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p3, "splitters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_1

    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 82
    .local v1, "inside":Z
    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->addInsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 108
    .end local v1    # "inside":Z
    :goto_0
    return-void

    .line 85
    .restart local v1    # "inside":Z
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->addOutsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    goto :goto_0

    .line 88
    .end local v1    # "inside":Z
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 89
    .local v0, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Characterization$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 105
    new-instance v3, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v3

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    .line 98
    .local v2, "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-direct {p0, v3, v4, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 100
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-direct {p0, v3, v4, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 101
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-object v0
.end method

.method public getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-object v0
.end method

.method public insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public touchInside()Z
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchOutside()Z
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/Characterization;, "Lorg/apache/commons/math3/geometry/partitioning/Characterization<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
