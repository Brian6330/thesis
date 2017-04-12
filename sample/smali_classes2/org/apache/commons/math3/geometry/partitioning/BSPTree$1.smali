.class Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;
.super Ljava/lang/Object;
.source "BSPTree.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0

    .prologue
    .line 648
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;->this$0:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 3
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
    .line 652
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree.1;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
