.class Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private final rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 300
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    .local p2, "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p3, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    move-object v7, p1

    check-cast v7, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 310
    .local v7, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    # getter for: Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->access$000(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    # getter for: Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->access$100(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    # getter for: Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->access$200(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    # getter for: Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D
    invoke-static {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->access$300(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/spherical/twod/Circle$1;)V

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method
