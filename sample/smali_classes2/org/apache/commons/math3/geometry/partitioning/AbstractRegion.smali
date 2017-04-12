.class public abstract Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.super Ljava/lang/Object;
.source "AbstractRegion.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Region;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Region",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private barycenter:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end field

.field private size:D

.field private final tolerance:D

.field private tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(D)V
    .locals 3
    .param p1, "tolerance"    # D

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 57
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;D)V
    .locals 4
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;>;D)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 149
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;-><init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 119
    .local v0, "ordered":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;"
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 122
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 123
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V

    .line 126
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;-><init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;D)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 75
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    .line 76
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;D)V
    .locals 8
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;D)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "hyperplanes":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    const/4 v6, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    .line 158
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 159
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 179
    :cond_1
    return-void

    .line 163
    :cond_2
    aget-object v5, p1, v6

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 166
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 167
    .local v4, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 168
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 169
    .local v1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 173
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 168
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, "inserted":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 206
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 240
    :goto_1
    return-void

    .line 215
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v4, "plusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "minusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 219
    .local v3, "other":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$3;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 221
    :pswitch_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 224
    :pswitch_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :pswitch_2
    invoke-interface {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v5

    .line 228
    .local v5, "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 237
    .end local v3    # "other":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v5    # "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V

    .line 238
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V

    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-nez v4, :cond_1

    .line 433
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    .line 454
    :goto_0
    return-object v4

    .line 433
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 437
    .local v0, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$3;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 454
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    goto :goto_0

    .line 439
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    goto :goto_0

    .line 441
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    goto :goto_0

    .line 443
    :pswitch_2
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    .line 444
    .local v3, "split":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 445
    .local v2, "plus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 446
    .local v1, "minus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    if-nez v2, :cond_2

    move-object v4, v1

    .line 447
    goto :goto_0

    .line 448
    :cond_2
    if-nez v1, :cond_3

    move-object v4, v2

    .line 449
    goto :goto_0

    .line 451
    :cond_3
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<TS;TT;>;",
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
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "transform":Lorg/apache/commons/math3/geometry/partitioning/Transform;, "Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    const/4 v7, 0x0

    .line 506
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    if-nez v6, :cond_0

    .line 507
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 528
    .local v5, "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :goto_0
    invoke-interface {p3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    return-object v5

    .line 510
    .end local v5    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 511
    .local v1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .end local v1    # "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-virtual {v1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v4

    .line 512
    .local v4, "tSub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 513
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v3, v7

    .line 516
    .local v3, "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v2, v7

    .line 519
    .local v2, "tPI":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :goto_2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .end local v0    # "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v0, v3, v2, v6}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 522
    .end local v2    # "tPI":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .end local v3    # "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .restart local v0    # "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-direct {p0, v6, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-direct {p0, v7, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .restart local v5    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    goto :goto_0

    .line 514
    .end local v5    # "transformedNode":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {v6, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v3

    goto :goto_1

    .line 516
    .restart local v3    # "tPO":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {v6, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<TS;TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "transform":Lorg/apache/commons/math3/geometry/partitioning/Transform;, "Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 474
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    invoke-direct {p0, v8, p1, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    .line 477
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

    .line 478
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 481
    .local v4, "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    if-eqz v4, :cond_0

    .line 483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 484
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

    .line 485
    .local v5, "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v9

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 491
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "original":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    .end local v5    # "splitter":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .end local v6    # "transformed":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    :cond_1
    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v8

    return-object v8
.end method

.method public abstract buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
            "<TS;TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    return-object v0
.end method

.method public checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    return-object v0
.end method

.method public checkPoint(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<TS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    return-object v0
.end method

.method protected checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    invoke-virtual {p1, p2, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 340
    .local v0, "cell":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_1

    .line 342
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    .line 348
    :goto_0
    return-object v3

    .line 342
    :cond_0
    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v1

    .line 347
    .local v1, "minusCode":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v2

    .line 348
    .local v2, "plusCode":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    if-ne v1, v2, :cond_2

    .end local v1    # "minusCode":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    :goto_1
    move-object v3, v1

    goto :goto_0

    .restart local v1    # "minusCode":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    :cond_2
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_1
.end method

.method protected checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    .local p2, "point":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<TS;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    return-object v0
.end method

.method protected abstract computeGeometricalProperties()V
.end method

.method public contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->difference(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    return-object v0
.end method

.method public getBarycenter()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->computeGeometricalProperties()V

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getBoundarySize()D
    .locals 4

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;-><init>()V

    .line 364
    .local v0, "visitor":Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;, "Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor<TS;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 365
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->getSize()D

    move-result-wide v2

    return-wide v2
.end method

.method public getSize()D
    .locals 2

    .prologue
    .line 370
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->computeGeometricalProperties()V

    .line 373
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->size:D

    return-wide v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    return-wide v0
.end method

.method public getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .param p1, "includeBoundaryAttributes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
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
    .line 421
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 265
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 261
    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method public isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;-><init>(Lorg/apache/commons/math3/geometry/Point;)V

    .line 301
    .local v0, "projector":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 302
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->getProjection()Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object v1

    return-object v1
.end method

.method protected setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "barycenter":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    .line 403
    return-void
.end method

.method protected setBarycenter(Lorg/apache/commons/math3/geometry/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "barycenter":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<TS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 396
    return-void
.end method

.method protected setSize(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->size:D

    .line 381
    return-void
.end method

.method public side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;"
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 413
    .local v0, "finder":Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;, "Lorg/apache/commons/math3/geometry/partitioning/InsideFinder<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 414
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0
.end method
