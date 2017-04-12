.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final tolerance:D

.field private zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V
    .locals 2
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 75
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 76
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 1
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 65
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    .line 66
    return-void
.end method


# virtual methods
.method public closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 18
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v14

    .line 244
    .local v14, "cos":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, v14, v14

    sub-double v16, v2, v4

    .line 245
    .local v16, "n":D
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpg-double v2, v16, v2

    if-gez v2, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 254
    :goto_0
    return-object v2

    .line 250
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    .line 251
    .local v9, "delta0":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v10

    .line 252
    .local v10, "a":D
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v12

    .line 254
    .local v12, "b":D
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v6, v12, v14

    sub-double v6, v10, v6

    div-double v6, v6, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    goto :goto_0
.end method

.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 4
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)D
    .locals 8
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 223
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v3, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 224
    .local v2, "normal":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    .line 225
    .local v0, "n":D
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v3, v0, v6

    if-gez v3, :cond_0

    .line 227
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v6

    .line 233
    :goto_0
    return-wide v6

    .line 231
    :cond_0
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v6

    div-double v4, v6, v0

    .line 233
    .local v4, "offset":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    goto :goto_0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 7
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 213
    .local v3, "d":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 214
    .local v0, "n":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v4

    return-wide v4
.end method

.method public getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 2
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 265
    .local v0, "closest":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "closest":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :goto_0
    return-object v0

    .restart local v0    # "closest":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Z
    .locals 6
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 195
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 196
    .local v0, "angle":D
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    sub-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "abscissa"    # D

    .prologue
    .line 152
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 10
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 96
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 97
    .local v6, "delta":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNormSq()D

    move-result-wide v8

    .line 98
    .local v8, "norm2":D
    const-wide/16 v4, 0x0

    cmpl-double v0, v8, v4

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 101
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double v4, v1, v4

    invoke-direct {v0, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    neg-double v4, v4

    div-double/2addr v4, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 103
    return-void
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V

    .line 118
    .local v0, "reverted":Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 119
    return-object v0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public wholeLine()Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    return-object v0
.end method
