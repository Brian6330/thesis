.class Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;
.super Ljava/lang/Object;
.source "AbstractRegion.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V
    .locals 0

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.2;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;->this$0:Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.2;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.2;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.2;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
