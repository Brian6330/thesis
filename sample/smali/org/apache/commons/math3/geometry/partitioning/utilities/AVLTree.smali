.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.super Ljava/lang/Object;
.source "AVLTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;,
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;,
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 58
    return-void
.end method

.method static synthetic access$302(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p1
.end method


# virtual methods
.method public delete(Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    .local p1, "element":Ljava/lang/Comparable;, "TT;"
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 89
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->delete()V

    .line 90
    const/4 v1, 0x1

    .line 98
    .end local v0    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_0
    return v1

    .line 91
    .restart local v0    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 85
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotLarger(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    .local p1, "reference":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    .line 186
    .local v0, "candidate":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .local v1, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_0
    if-eqz v1, :cond_3

    .line 187
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 188
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 200
    :goto_1
    return-object v2

    .line 191
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_1
    move-object v0, v1

    .line 194
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v0

    .line 195
    goto :goto_1

    .line 197
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    .local p1, "reference":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    .line 155
    .local v0, "candidate":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .local v1, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_0
    if-eqz v1, :cond_3

    .line 156
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 157
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 169
    :goto_1
    return-object v2

    .line 160
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_1
    move-object v0, v1

    .line 163
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v0

    .line 164
    goto :goto_1

    .line 166
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    .local p1, "element":Ljava/lang/Comparable;, "TT;"
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v0

    goto :goto_0
.end method
