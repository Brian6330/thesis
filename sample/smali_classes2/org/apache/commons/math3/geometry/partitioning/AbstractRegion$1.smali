.class Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;
.super Ljava/lang/Object;
.source "AbstractRegion.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;->this$0:Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.1;"
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;->compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)I"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion.1;"
    .local p1, "o1":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "o2":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getSize()D

    move-result-wide v0

    .line 115
    .local v0, "size1":D
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getSize()D

    move-result-wide v2

    .line 116
    .local v2, "size2":D
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
