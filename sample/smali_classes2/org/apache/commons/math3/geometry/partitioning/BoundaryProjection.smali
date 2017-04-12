.class public Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
.super Ljava/lang/Object;
.source "BoundaryProjection.java"


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
.field private final offset:D

.field private final original:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final projected:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V
    .locals 1
    .param p3, "offset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;D)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<TS;>;"
    .local p1, "original":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p2, "projected":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->original:Lorg/apache/commons/math3/geometry/Point;

    .line 48
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 49
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->offset:D

    .line 50
    return-void
.end method


# virtual methods
.method public getOffset()D
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<TS;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->offset:D

    return-wide v0
.end method

.method public getOriginal()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->original:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getProjected()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->projected:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method
