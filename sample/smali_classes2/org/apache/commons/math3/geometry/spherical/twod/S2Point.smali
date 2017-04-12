.class public Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
.super Ljava/lang/Object;
.source "S2Point.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Point;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Point",
        "<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final MINUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final MINUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final MINUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field private static final serialVersionUID:J = 0x1332d92L


# instance fields
.field private final phi:D

.field private final theta:D

.field private final vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 41
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v2, 0x0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 44
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 47
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 50
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 53
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v2, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 56
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v2, 0x0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 60
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "theta"    # D
    .param p3, "phi"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector(DD)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 86
    return-void
.end method

.method private constructor <init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 1
    .param p1, "theta"    # D
    .param p3, "phi"    # D
    .param p5, "vector"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    .line 105
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    .line 106
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 7
    .param p1, "vector"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 96
    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static vector(DD)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 14
    .param p0, "theta"    # D
    .param p2, "phi"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 122
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v8

    .line 123
    .local v8, "cosTheta":D
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v12

    .line 124
    .local v12, "sinTheta":D
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    .line 125
    .local v6, "cosPhi":D
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    .line 127
    .local v10, "sinPhi":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v2, v8, v10

    mul-double v4, v12, v10

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
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
    .line 173
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->distance(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    if-ne p0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 212
    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 213
    .local v0, "rhs":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v1

    goto :goto_0

    .line 217
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    :cond_4
    move v1, v2

    .line 219
    goto :goto_0
.end method

.method public getPhi()D
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;->getInstance()Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;

    move-result-object v0

    return-object v0
.end method

.method public getTheta()D
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    return-wide v0
.end method

.method public getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/16 v0, 0x21e

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x86

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 8

    .prologue
    .line 168
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    neg-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    sub-double/2addr v4, v6

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method
