.class Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;
.super Ljava/lang/Object;
.source "IntervalsSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubIntervalsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<[D>;"
    }
.end annotation


# instance fields
.field private current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation
.end field

.field private pending:[D

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 592
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstIntervalBoundary()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$000(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 596
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_1

    .line 598
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$100(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 615
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$200(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    new-array v0, v2, [D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->selectPending()V

    goto :goto_0

    .line 600
    nop

    :array_0
    .array-data 8
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method private selectPending()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 622
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 623
    .local v1, "start":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    invoke-static {v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$400(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$500(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    goto :goto_0

    .line 627
    :cond_0
    if-nez v1, :cond_1

    .line 629
    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 630
    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 662
    :goto_1
    return-void

    .line 635
    :cond_1
    move-object v0, v1

    .line 636
    .local v0, "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_2
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$200(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 637
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$500(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_2

    .line 640
    :cond_2
    if-eqz v0, :cond_3

    .line 643
    new-array v2, v3, [D

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v2, v7

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v2, v8

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 648
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 653
    :cond_3
    new-array v2, v3, [D

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    # invokes: Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v2, v7

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v4, v2, v8

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 658
    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->next()[D

    move-result-object v0

    return-object v0
.end method

.method public next()[D
    .locals 2

    .prologue
    .line 671
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 674
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 675
    .local v0, "next":[D
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->selectPending()V

    .line 676
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 681
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
