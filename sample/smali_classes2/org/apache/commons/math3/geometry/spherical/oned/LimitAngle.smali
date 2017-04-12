.class public Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
.super Ljava/lang/Object;
.source "LimitAngle.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private direct:Z

.field private location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V
    .locals 1
    .param p1, "location"    # Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .param p2, "direct"    # Z
    .param p3, "tolerance"    # D

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .line 46
    iput-boolean p2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    .line 47
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    move-result-object v0

    return-object v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 62
    .local v0, "delta":D
    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    if-eqz v2, :cond_0

    .end local v0    # "delta":D
    :goto_0
    return-wide v0

    .restart local v0    # "delta":D
    :cond_0
    neg-double v0, v0

    goto :goto_0
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .locals 6

    .prologue
    .line 79
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    invoke-direct {v1, v2, v0, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    return-wide v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    return v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    return-object v0
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    .end local p1    # "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    iget-boolean v1, p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v0

    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeSpace()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(D)V

    return-object v0
.end method
