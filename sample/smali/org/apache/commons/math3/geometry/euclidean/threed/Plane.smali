.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private originOffset:D

.field private final tolerance:D

.field private u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2
    .param p1, "plane"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 146
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 147
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 148
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 149
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 150
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 2
    .param p1, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 67
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 3
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 82
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 6
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "p3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 2
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "p3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 100
    return-void
.end method

.method public static intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 48
    .param p0, "plane1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .param p1, "plane2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .param p2, "plane3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    .line 429
    .local v10, "a1":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    .line 430
    .local v18, "b1":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v26

    .line 431
    .local v26, "c1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    move-wide/from16 v34, v0

    .line 433
    .local v34, "d1":D
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    .line 434
    .local v12, "a2":D
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v20

    .line 435
    .local v20, "b2":D
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v28

    .line 436
    .local v28, "c2":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    move-wide/from16 v36, v0

    .line 438
    .local v36, "d2":D
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    .line 439
    .local v16, "a3":D
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v24

    .line 440
    .local v24, "b3":D
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v32

    .line 441
    .local v32, "c3":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    move-wide/from16 v38, v0

    .line 445
    .local v38, "d3":D
    mul-double v2, v20, v32

    mul-double v4, v24, v28

    sub-double v14, v2, v4

    .line 446
    .local v14, "a23":D
    mul-double v2, v28, v16

    mul-double v4, v32, v12

    sub-double v22, v2, v4

    .line 447
    .local v22, "b23":D
    mul-double v2, v12, v24

    mul-double v4, v16, v20

    sub-double v30, v2, v4

    .line 448
    .local v30, "c23":D
    mul-double v2, v10, v14

    mul-double v4, v18, v22

    add-double/2addr v2, v4

    mul-double v4, v26, v30

    add-double v40, v2, v4

    .line 449
    .local v40, "determinant":D
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 450
    const/4 v3, 0x0

    .line 454
    :goto_0
    return-object v3

    .line 453
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v42, v2, v40

    .line 454
    .local v42, "r":D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v4, v14

    mul-double v4, v4, v34

    mul-double v6, v26, v24

    mul-double v8, v32, v18

    sub-double/2addr v6, v8

    mul-double v6, v6, v36

    sub-double/2addr v4, v6

    mul-double v6, v28, v18

    mul-double v8, v26, v20

    sub-double/2addr v6, v8

    mul-double v6, v6, v38

    sub-double/2addr v4, v6

    mul-double v4, v4, v42

    move-wide/from16 v0, v22

    neg-double v6, v0

    mul-double v6, v6, v34

    mul-double v8, v32, v10

    mul-double v44, v26, v16

    sub-double v8, v8, v44

    mul-double v8, v8, v36

    sub-double/2addr v6, v8

    mul-double v8, v26, v12

    mul-double v44, v28, v10

    sub-double v8, v8, v44

    mul-double v8, v8, v38

    sub-double/2addr v6, v8

    mul-double v6, v6, v42

    move-wide/from16 v0, v30

    neg-double v8, v0

    mul-double v8, v8, v34

    mul-double v44, v18, v16

    mul-double v46, v24, v10

    sub-double v44, v44, v46

    mul-double v44, v44, v36

    sub-double v8, v8, v44

    mul-double v44, v20, v10

    mul-double v46, v18, v12

    sub-double v44, v44, v46

    mul-double v44, v44, v38

    sub-double v8, v8, v44

    mul-double v8, v8, v42

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_0
.end method

.method private setFrame()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v2, v2

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 204
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 206
    return-void
.end method

.method private setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 6
    .param p1, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    .line 194
    .local v0, "norm":D
    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 195
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 197
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v0

    invoke-direct {v2, v4, v5, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 198
    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 4
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .end local p1    # "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D
    .locals 4
    .param p1, "plane"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .prologue
    .line 495
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v0, v0

    :goto_0
    add-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    goto :goto_0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 12
    .param p1, "inPlane"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "offset"    # D

    .prologue
    .line 336
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    sub-double v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    return-wide v0
.end method

.method public getU()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 6
    .param p1, "other"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .prologue
    .line 411
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 412
    .local v0, "direction":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 413
    const/4 v2, 0x0

    .line 416
    :goto_0
    return-object v2

    .line 415
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-static {p0, p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 416
    .local v1, "point":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    goto :goto_0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 12
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 395
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 396
    .local v6, "direction":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    .line 397
    .local v8, "dot":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, v0, v10

    if-gez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    .line 400
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 401
    .local v3, "point":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v10

    add-double/2addr v0, v10

    neg-double v0, v0

    div-double v4, v0, v8

    .line 402
    .local v4, "k":D
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    goto :goto_0
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Z
    .locals 6
    .param p1, "plane"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .prologue
    .line 347
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 348
    .local v0, "angle":D
    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const-wide v2, 0x400921fb5440bd7cL    # 3.141592653489793

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2
    .param p1, "original"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .prologue
    .line 181
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 182
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 183
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 184
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 185
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 186
    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    .line 172
    return-void
.end method

.method public revertSelf()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 281
    .local v0, "tmp":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 282
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 283
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 284
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v2, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 285
    return-void
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 6
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 360
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 361
    .local v0, "delta":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 365
    .local v1, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 366
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 368
    return-object v1
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .end local p1    # "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 325
    .local v0, "p2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v8, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Point;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 314
    .local v0, "p3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 6
    .param p1, "translation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 379
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 382
    .local v0, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 383
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 385
    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;
    .locals 4

    .prologue
    .line 465
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 4

    .prologue
    .line 473
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object v0

    return-object v0
.end method
