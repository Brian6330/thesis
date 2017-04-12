.class Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;
.super Ljava/lang/Object;
.source "ArcsSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubArcsIterator"
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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation
.end field

.field private final firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation
.end field

.field private pending:[D

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V
    .locals 1

    .prologue
    .line 601
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$000(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 604
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 606
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_1

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$100(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    .line 619
    :goto_0
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->selectPending()V

    goto :goto_0

    .line 610
    nop

    :array_0
    .array-data 8
        0x0
        0x401921fb54442d18L    # 6.283185307179586
    .end array-data
.end method

.method private selectPending()V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 626
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 627
    .local v1, "start":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    invoke-static {v2, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$200(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v2, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    goto :goto_0

    .line 631
    :cond_0
    if-nez v1, :cond_1

    .line 633
    iput-object v8, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 634
    iput-object v8, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    .line 676
    :goto_1
    return-void

    .line 639
    :cond_1
    move-object v0, v1

    .line 640
    .local v0, "end":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    :goto_2
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 641
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_2

    .line 644
    :cond_2
    if-eqz v0, :cond_3

    .line 647
    new-array v2, v3, [D

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v2, v6

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v2, v9

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    .line 652
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 657
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 658
    :goto_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 659
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$600(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_3

    .line 661
    :cond_4
    if-nez v0, :cond_5

    .line 663
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2

    .line 667
    :cond_5
    new-array v2, v3, [D

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v2, v6

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    # invokes: Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    invoke-static {v3, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v4, v6

    aput-wide v4, v2, v9

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    .line 672
    iput-object v8, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

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
    .line 588
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->next()[D

    move-result-object v0

    return-object v0
.end method

.method public next()[D
    .locals 2

    .prologue
    .line 685
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    .line 689
    .local v0, "next":[D
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->selectPending()V

    .line 690
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 695
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
