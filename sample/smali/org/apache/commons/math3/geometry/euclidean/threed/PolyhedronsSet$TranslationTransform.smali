.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;
.super Ljava/lang/Object;
.source "PolyhedronsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

.field private cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation
.end field

.field private translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0
    .param p1, "translation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 701
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .end local p1    # "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 705
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v4, p1

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide v5, v2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p3, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    if-eq p2, v4, :cond_0

    move-object v1, p2

    .line 720
    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .local v1, "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    move-object v3, p3

    .line 721
    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 722
    .local v3, "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    .line 723
    .local v2, "shift":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    .line 726
    .local v0, "at":Ljava/awt/geom/AffineTransform;
    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .end local p2    # "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 727
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    .line 732
    .end local v0    # "at":Ljava/awt/geom/AffineTransform;
    .end local v1    # "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v2    # "shift":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v3    # "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    :cond_0
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    .end local p1    # "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v4

    return-object v4
.end method
