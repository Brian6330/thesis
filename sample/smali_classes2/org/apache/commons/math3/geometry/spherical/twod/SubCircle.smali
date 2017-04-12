.class public Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SubCircle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .local v3, "thisCircle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    move-object v2, p1

    .line 55
    check-cast v2, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 56
    .local v2, "otherCircle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 58
    .local v0, "angle":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v4

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 60
    :cond_0
    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 63
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->side(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v4

    goto :goto_0
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    const/4 v9, 0x0

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .local v7, "thisCircle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    move-object v4, p1

    .line 73
    check-cast v4, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 74
    .local v4, "otherCircle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 76
    .local v0, "angle":D
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v10

    cmpg-double v8, v0, v10

    if-gez v8, :cond_0

    .line 78
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v8, v9, p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 88
    :goto_0
    return-object v8

    .line 79
    :cond_0
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v12

    sub-double/2addr v10, v12

    cmpl-double v8, v0, v10

    if-lez v8, :cond_1

    .line 81
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v8, p0, v9}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v2

    .line 85
    .local v2, "arc":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-result-object v6

    .line 86
    .local v6, "split":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getPlus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v5

    .line 87
    .local v5, "plus":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getMinus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v3

    .line 88
    .local v3, "minus":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    new-instance v10, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    if-nez v5, :cond_2

    move-object v11, v9

    :goto_1
    if-nez v3, :cond_3

    move-object v8, v9

    :goto_2
    invoke-direct {v10, v11, v8}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    move-object v8, v10

    goto :goto_0

    :cond_2
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v11

    invoke-direct {v8, v11, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    move-object v11, v8

    goto :goto_1

    :cond_3
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    goto :goto_2
.end method
