.class public Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;
.super Ljava/lang/Object;
.source "BoundaryAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final plusInside:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final plusOutside:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final splitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    .local p1, "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    .local p1, "plusOutside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "plusInside":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p3, "splitters":Lorg/apache/commons/math3/geometry/partitioning/NodesSet;, "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->plusOutside:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 83
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->plusInside:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 84
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->splitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .line 85
    return-void
.end method


# virtual methods
.method public getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->plusInside:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->plusOutside:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->splitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-object v0
.end method
