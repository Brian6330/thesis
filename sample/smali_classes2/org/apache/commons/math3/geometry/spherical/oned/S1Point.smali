.class public Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
.super Ljava/lang/Object;
.source "S1Point.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Point;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Point",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

.field private static final serialVersionUID:J = 0x1332d92L


# instance fields
.field private final alpha:D

.field private final vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 9
    .param p1, "alpha"    # D

    .prologue
    .line 51
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 53
    return-void
.end method

.method private constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 1
    .param p1, "alpha"    # D
    .param p3, "vector"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    .line 61
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 62
    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->angle(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 2
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
    .line 91
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->distance(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 130
    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .line 131
    .local v0, "rhs":Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->isNaN()Z

    move-result v1

    goto :goto_0

    .line 135
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    :cond_3
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public getAlpha()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;->getInstance()Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;

    move-result-object v0

    return-object v0
.end method

.method public getVector()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/16 v0, 0x21e

    .line 154
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0x6df

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method
