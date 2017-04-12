.class public Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
.super Ljava/lang/Object;
.source "OrientedPoint.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private direct:Z

.field private location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Z)V
    .locals 2
    .param p1, "location"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p2, "direct"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V
    .locals 1
    .param p1, "location"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p2, "direct"    # Z
    .param p3, "tolerance"    # D

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 52
    iput-boolean p2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    .line 53
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->tolerance:D

    .line 54
    return-void
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 87
    .local v0, "delta":D
    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    if-eqz v2, :cond_0

    .end local v0    # "delta":D
    :goto_0
    return-wide v0

    .restart local v0    # "delta":D
    :cond_0
    neg-double v0, v0

    goto :goto_0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->tolerance:D

    return-wide v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    return v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object v0
.end method

.method public revertSelf()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .end local p1    # "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    iget-boolean v1, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->tolerance:D

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v0

    return-object v0
.end method
