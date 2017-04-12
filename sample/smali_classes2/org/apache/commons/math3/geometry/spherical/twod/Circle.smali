.class public Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/twod/Circle$1;,
        Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final tolerance:D

.field private x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .param p1, "pole"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "tolerance"    # D

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 66
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    .line 67
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .param p1, "pole"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "x"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "y"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "tolerance"    # D

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 90
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 91
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 92
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/spherical/twod/Circle$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "x1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "x2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "x3"    # D
    .param p6, "x4"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle$1;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 6
    .param p1, "circle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 101
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;D)V
    .locals 3
    .param p1, "first"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .param p2, "second"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .param p3, "tolerance"    # D

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 77
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 45
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-wide v0
.end method

.method public static getTransform(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 1
    .param p0, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    return-object v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-object v0
.end method

.method public getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .locals 12
    .param p1, "other"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 233
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v8

    .line 234
    .local v8, "alpha":D
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 235
    .local v10, "halfPi":D
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    sub-double v2, v8, v4

    add-double/2addr v4, v8

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    return-object v1
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 4
    .param p1, "direction"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 6
    .param p1, "direction"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 164
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "alpha"    # D

    .prologue
    .line 182
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 6

    .prologue
    .line 133
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-wide v0
.end method

.method public getXAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getYAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 1
    .param p1, "newPole"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 115
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 117
    return-void
.end method

.method public revertSelf()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 124
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 125
    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 274
    .local v0, "otherC":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    return-object v0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v0

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    move-result-object v0

    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeSpace()Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(D)V

    return-object v0
.end method
