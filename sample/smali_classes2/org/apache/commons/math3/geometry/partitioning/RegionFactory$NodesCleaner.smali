.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodesCleaner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V
    .locals 0

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.NodesCleaner;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
    .param p2, "x1"    # Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.NodesCleaner;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V

    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.NodesCleaner;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.NodesCleaner;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    return-void
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
    .line 309
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<TS;>.NodesCleaner;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
