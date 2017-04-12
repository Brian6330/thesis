.class Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;
.super Ljava/lang/Object;
.source "InsideFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/InsideFinder$1;
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
.field private minusFound:Z

.field private plusFound:Z

.field private final region:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    .local p1, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 44
    return-void
.end method


# virtual methods
.method public minusFound()Z
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    return v0
.end method

.method public plusFound()Z
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    return v0
.end method

.method public recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 5
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
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 66
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 72
    .local v0, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 118
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    :cond_2
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 121
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    :cond_4
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    goto :goto_0

    .line 75
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v2, v3, :cond_7

    .line 76
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 77
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 84
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v2, :cond_0

    .line 85
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_0

    .line 80
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 81
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    goto :goto_1

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v2, v3, :cond_a

    .line 91
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 92
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 99
    :cond_8
    :goto_2
    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v2, :cond_0

    .line 100
    :cond_9
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_0

    .line 95
    :cond_a
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 96
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    goto :goto_2

    .line 105
    :pswitch_2
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v1

    .line 108
    .local v1, "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 111
    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v2, :cond_0

    .line 112
    :cond_b
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_0

    .line 125
    .end local v1    # "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    :cond_c
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 126
    :cond_d
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 128
    :cond_e
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :cond_f
    iput-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
