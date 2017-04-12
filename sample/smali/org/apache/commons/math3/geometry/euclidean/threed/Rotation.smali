.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

.field private static final serialVersionUID:J = -0x1de3341942831b79L


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 99
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 11
    .param p1, "q0"    # D
    .param p3, "q1"    # D
    .param p5, "q2"    # D
    .param p7, "q3"    # D
    .param p9, "needsNormalization"    # Z

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-eqz p9, :cond_0

    .line 139
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, p1, p1

    mul-double v8, p3, p3

    add-double/2addr v6, v8

    mul-double v8, p5, p5

    add-double/2addr v6, v8

    mul-double v8, p7, p7

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double v2, v4, v6

    .line 140
    .local v2, "inv":D
    mul-double/2addr p1, v2

    .line 141
    mul-double/2addr p3, v2

    .line 142
    mul-double p5, p5, v2

    .line 143
    mul-double p7, p7, v2

    .line 146
    .end local v2    # "inv":D
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 147
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 148
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 149
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;DDD)V
    .locals 6
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "alpha1"    # D
    .param p4, "alpha2"    # D
    .param p6, "alpha3"    # D

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v1, v4, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 379
    .local v1, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v2, v4, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 380
    .local v2, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v3, v4, p6, p7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 381
    .local v3, "r3":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    .line 382
    .local v0, "composed":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 383
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 384
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 385
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 386
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 10
    .param p1, "axis"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "angle"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v4

    .line 177
    .local v4, "norm":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_0

    .line 178
    new-instance v6, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 181
    :cond_0
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double v2, v6, p2

    .line 182
    .local v2, "halfAngle":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    div-double v0, v6, v4

    .line 184
    .local v0, "coeff":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 185
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 186
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 187
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 16
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v12

    mul-double v6, v10, v12

    .line 330
    .local v6, "normProduct":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-nez v10, :cond_0

    .line 331
    new-instance v10, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v10

    .line 334
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    .line 336
    .local v4, "dot":D
    const-wide v10, -0x4010000000000012L    # -0.999999999999998

    mul-double/2addr v10, v6

    cmpg-double v10, v4, v10

    if-gez v10, :cond_1

    .line 339
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    .line 340
    .local v9, "w":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 341
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    neg-double v10, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 342
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    neg-double v10, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 343
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    neg-double v10, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 355
    .end local v9    # "w":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :goto_0
    return-void

    .line 347
    :cond_1
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v14, v4, v6

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 348
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v12, v14

    mul-double/2addr v12, v6

    div-double v2, v10, v12

    .line 349
    .local v2, "coeff":D
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    .line 350
    .local v8, "q":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    mul-double/2addr v10, v2

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 351
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    mul-double/2addr v10, v2

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 352
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    mul-double/2addr v10, v2

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 21
    .param p1, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v16

    .line 278
    .local v16, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 279
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 283
    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v17

    .line 284
    .local v17, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p4

    .line 285
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    .line 288
    const/4 v2, 0x3

    new-array v14, v2, [[D

    const/16 v18, 0x0

    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    aput-object v19, v14, v18

    .line 306
    .local v14, "m":[[D
    invoke-static {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v15

    .line 307
    .local v15, "quat":[D
    const/4 v2, 0x0

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 308
    const/4 v2, 0x1

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 309
    const/4 v2, 0x2

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 310
    const/4 v2, 0x3

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 312
    return-void
.end method

.method public constructor <init>([[DD)V
    .locals 14
    .param p1, "m"    # [[D
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    array-length v4, p1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, p1, v4

    array-length v4, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    aget-object v4, p1, v4

    array-length v4, v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 227
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, p1, v8

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 233
    :cond_1
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->orthogonalizeMatrix([[DD)[[D

    move-result-object v2

    .line 236
    .local v2, "ort":[[D
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v2, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x2

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    const/4 v10, 0x2

    aget-object v10, v2, v10

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, v2, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 239
    .local v0, "det":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    .line 240
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 245
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v3

    .line 246
    .local v3, "quat":[D
    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 247
    const/4 v4, 0x1

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 248
    const/4 v4, 0x2

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 249
    const/4 v4, 0x3

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 251
    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)D
    .locals 2
    .param p0, "r1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p1, "r2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method private static mat2quat([[D)[D
    .locals 10
    .param p0, "ort"    # [[D

    .prologue
    .line 394
    const/4 v3, 0x4

    new-array v2, v3, [D

    .line 407
    .local v2, "quat":[D
    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    add-double/2addr v6, v8

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    add-double v4, v6, v8

    .line 408
    .local v4, "s":D
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 410
    const/4 v3, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 411
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x0

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 412
    .local v0, "inv":D
    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 413
    const/4 v3, 0x2

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 414
    const/4 v3, 0x3

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 445
    :goto_0
    return-object v2

    .line 416
    .end local v0    # "inv":D
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    sub-double/2addr v6, v8

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    sub-double v4, v6, v8

    .line 417
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 419
    const/4 v3, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 420
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x1

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 421
    .restart local v0    # "inv":D
    const/4 v3, 0x0

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 422
    const/4 v3, 0x2

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 423
    const/4 v3, 0x3

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    goto :goto_0

    .line 425
    .end local v0    # "inv":D
    :cond_1
    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    sub-double/2addr v6, v8

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    sub-double v4, v6, v8

    .line 426
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 428
    const/4 v3, 0x2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 429
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 430
    .restart local v0    # "inv":D
    const/4 v3, 0x0

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 431
    const/4 v3, 0x1

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 432
    const/4 v3, 0x3

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    goto/16 :goto_0

    .line 435
    .end local v0    # "inv":D
    :cond_2
    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v6, 0x2

    aget-wide v6, v3, v6

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    sub-double/2addr v6, v8

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    sub-double v4, v6, v8

    .line 436
    const/4 v3, 0x3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 437
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x3

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 438
    .restart local v0    # "inv":D
    const/4 v3, 0x0

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 439
    const/4 v3, 0x1

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 440
    const/4 v3, 0x2

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    goto/16 :goto_0
.end method

.method private orthogonalizeMatrix([[DD)[[D
    .locals 76
    .param p1, "m"    # [[D
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .prologue
    .line 938
    const/16 v68, 0x0

    aget-object v25, p1, v68

    .line 939
    .local v25, "m0":[D
    const/16 v68, 0x1

    aget-object v26, p1, v68

    .line 940
    .local v26, "m1":[D
    const/16 v68, 0x2

    aget-object v27, p1, v68

    .line 941
    .local v27, "m2":[D
    const/16 v68, 0x0

    aget-wide v50, v25, v68

    .line 942
    .local v50, "x00":D
    const/16 v68, 0x1

    aget-wide v52, v25, v68

    .line 943
    .local v52, "x01":D
    const/16 v68, 0x2

    aget-wide v54, v25, v68

    .line 944
    .local v54, "x02":D
    const/16 v68, 0x0

    aget-wide v56, v26, v68

    .line 945
    .local v56, "x10":D
    const/16 v68, 0x1

    aget-wide v58, v26, v68

    .line 946
    .local v58, "x11":D
    const/16 v68, 0x2

    aget-wide v60, v26, v68

    .line 947
    .local v60, "x12":D
    const/16 v68, 0x0

    aget-wide v62, v27, v68

    .line 948
    .local v62, "x20":D
    const/16 v68, 0x1

    aget-wide v64, v27, v68

    .line 949
    .local v64, "x21":D
    const/16 v68, 0x2

    aget-wide v66, v27, v68

    .line 950
    .local v66, "x22":D
    const-wide/16 v20, 0x0

    .line 953
    .local v20, "fn":D
    const/16 v68, 0x3

    const/16 v69, 0x3

    filled-new-array/range {v68 .. v69}, [I

    move-result-object v68

    sget-object v69, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v69

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [[D

    .line 954
    .local v46, "o":[[D
    const/16 v68, 0x0

    aget-object v47, v46, v68

    .line 955
    .local v47, "o0":[D
    const/16 v68, 0x1

    aget-object v48, v46, v68

    .line 956
    .local v48, "o1":[D
    const/16 v68, 0x2

    aget-object v49, v46, v68

    .line 959
    .local v49, "o2":[D
    const/16 v24, 0x0

    .line 960
    .local v24, "i":I
    :goto_0
    add-int/lit8 v24, v24, 0x1

    const/16 v68, 0xb

    move/from16 v0, v24

    move/from16 v1, v68

    if-ge v0, v1, :cond_1

    .line 963
    const/16 v68, 0x0

    aget-wide v68, v25, v68

    mul-double v68, v68, v50

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    mul-double v70, v70, v56

    add-double v68, v68, v70

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    mul-double v70, v70, v62

    add-double v28, v68, v70

    .line 964
    .local v28, "mx00":D
    const/16 v68, 0x1

    aget-wide v68, v25, v68

    mul-double v68, v68, v50

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    mul-double v70, v70, v56

    add-double v68, v68, v70

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    mul-double v70, v70, v62

    add-double v34, v68, v70

    .line 965
    .local v34, "mx10":D
    const/16 v68, 0x2

    aget-wide v68, v25, v68

    mul-double v68, v68, v50

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    mul-double v70, v70, v56

    add-double v68, v68, v70

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    mul-double v70, v70, v62

    add-double v40, v68, v70

    .line 966
    .local v40, "mx20":D
    const/16 v68, 0x0

    aget-wide v68, v25, v68

    mul-double v68, v68, v52

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    mul-double v70, v70, v58

    add-double v68, v68, v70

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    mul-double v70, v70, v64

    add-double v30, v68, v70

    .line 967
    .local v30, "mx01":D
    const/16 v68, 0x1

    aget-wide v68, v25, v68

    mul-double v68, v68, v52

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    mul-double v70, v70, v58

    add-double v68, v68, v70

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    mul-double v70, v70, v64

    add-double v36, v68, v70

    .line 968
    .local v36, "mx11":D
    const/16 v68, 0x2

    aget-wide v68, v25, v68

    mul-double v68, v68, v52

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    mul-double v70, v70, v58

    add-double v68, v68, v70

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    mul-double v70, v70, v64

    add-double v42, v68, v70

    .line 969
    .local v42, "mx21":D
    const/16 v68, 0x0

    aget-wide v68, v25, v68

    mul-double v68, v68, v54

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    mul-double v70, v70, v60

    add-double v68, v68, v70

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    mul-double v70, v70, v66

    add-double v32, v68, v70

    .line 970
    .local v32, "mx02":D
    const/16 v68, 0x1

    aget-wide v68, v25, v68

    mul-double v68, v68, v54

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    mul-double v70, v70, v60

    add-double v68, v68, v70

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    mul-double v70, v70, v66

    add-double v38, v68, v70

    .line 971
    .local v38, "mx12":D
    const/16 v68, 0x2

    aget-wide v68, v25, v68

    mul-double v68, v68, v54

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    mul-double v70, v70, v60

    add-double v68, v68, v70

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    mul-double v70, v70, v66

    add-double v44, v68, v70

    .line 974
    .local v44, "mx22":D
    const/16 v68, 0x0

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v50, v28

    mul-double v74, v52, v34

    add-double v72, v72, v74

    mul-double v74, v54, v40

    add-double v72, v72, v74

    const/16 v69, 0x0

    aget-wide v74, v25, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v50, v70

    aput-wide v70, v47, v68

    .line 975
    const/16 v68, 0x1

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v50, v30

    mul-double v74, v52, v36

    add-double v72, v72, v74

    mul-double v74, v54, v42

    add-double v72, v72, v74

    const/16 v69, 0x1

    aget-wide v74, v25, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v52, v70

    aput-wide v70, v47, v68

    .line 976
    const/16 v68, 0x2

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v50, v32

    mul-double v74, v52, v38

    add-double v72, v72, v74

    mul-double v74, v54, v44

    add-double v72, v72, v74

    const/16 v69, 0x2

    aget-wide v74, v25, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v54, v70

    aput-wide v70, v47, v68

    .line 977
    const/16 v68, 0x0

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v56, v28

    mul-double v74, v58, v34

    add-double v72, v72, v74

    mul-double v74, v60, v40

    add-double v72, v72, v74

    const/16 v69, 0x0

    aget-wide v74, v26, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v56, v70

    aput-wide v70, v48, v68

    .line 978
    const/16 v68, 0x1

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v56, v30

    mul-double v74, v58, v36

    add-double v72, v72, v74

    mul-double v74, v60, v42

    add-double v72, v72, v74

    const/16 v69, 0x1

    aget-wide v74, v26, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v58, v70

    aput-wide v70, v48, v68

    .line 979
    const/16 v68, 0x2

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v56, v32

    mul-double v74, v58, v38

    add-double v72, v72, v74

    mul-double v74, v60, v44

    add-double v72, v72, v74

    const/16 v69, 0x2

    aget-wide v74, v26, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v60, v70

    aput-wide v70, v48, v68

    .line 980
    const/16 v68, 0x0

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v62, v28

    mul-double v74, v64, v34

    add-double v72, v72, v74

    mul-double v74, v66, v40

    add-double v72, v72, v74

    const/16 v69, 0x0

    aget-wide v74, v27, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v62, v70

    aput-wide v70, v49, v68

    .line 981
    const/16 v68, 0x1

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v62, v30

    mul-double v74, v64, v36

    add-double v72, v72, v74

    mul-double v74, v66, v42

    add-double v72, v72, v74

    const/16 v69, 0x1

    aget-wide v74, v27, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v64, v70

    aput-wide v70, v49, v68

    .line 982
    const/16 v68, 0x2

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v62, v32

    mul-double v74, v64, v38

    add-double v72, v72, v74

    mul-double v74, v66, v44

    add-double v72, v72, v74

    const/16 v69, 0x2

    aget-wide v74, v27, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v66, v70

    aput-wide v70, v49, v68

    .line 985
    const/16 v68, 0x0

    aget-wide v68, v47, v68

    const/16 v70, 0x0

    aget-wide v70, v25, v70

    sub-double v2, v68, v70

    .line 986
    .local v2, "corr00":D
    const/16 v68, 0x1

    aget-wide v68, v47, v68

    const/16 v70, 0x1

    aget-wide v70, v25, v70

    sub-double v4, v68, v70

    .line 987
    .local v4, "corr01":D
    const/16 v68, 0x2

    aget-wide v68, v47, v68

    const/16 v70, 0x2

    aget-wide v70, v25, v70

    sub-double v6, v68, v70

    .line 988
    .local v6, "corr02":D
    const/16 v68, 0x0

    aget-wide v68, v48, v68

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    sub-double v8, v68, v70

    .line 989
    .local v8, "corr10":D
    const/16 v68, 0x1

    aget-wide v68, v48, v68

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    sub-double v10, v68, v70

    .line 990
    .local v10, "corr11":D
    const/16 v68, 0x2

    aget-wide v68, v48, v68

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    sub-double v12, v68, v70

    .line 991
    .local v12, "corr12":D
    const/16 v68, 0x0

    aget-wide v68, v49, v68

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    sub-double v14, v68, v70

    .line 992
    .local v14, "corr20":D
    const/16 v68, 0x1

    aget-wide v68, v49, v68

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    sub-double v16, v68, v70

    .line 993
    .local v16, "corr21":D
    const/16 v68, 0x2

    aget-wide v68, v49, v68

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    sub-double v18, v68, v70

    .line 996
    .local v18, "corr22":D
    mul-double v68, v2, v2

    mul-double v70, v4, v4

    add-double v68, v68, v70

    mul-double v70, v6, v6

    add-double v68, v68, v70

    mul-double v70, v8, v8

    add-double v68, v68, v70

    mul-double v70, v10, v10

    add-double v68, v68, v70

    mul-double v70, v12, v12

    add-double v68, v68, v70

    mul-double v70, v14, v14

    add-double v68, v68, v70

    mul-double v70, v16, v16

    add-double v68, v68, v70

    mul-double v70, v18, v18

    add-double v22, v68, v70

    .line 1001
    .local v22, "fn1":D
    sub-double v68, v22, v20

    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v68

    cmpg-double v68, v68, p2

    if-gtz v68, :cond_0

    .line 1002
    return-object v46

    .line 1006
    :cond_0
    const/16 v68, 0x0

    aget-wide v50, v47, v68

    .line 1007
    const/16 v68, 0x1

    aget-wide v52, v47, v68

    .line 1008
    const/16 v68, 0x2

    aget-wide v54, v47, v68

    .line 1009
    const/16 v68, 0x0

    aget-wide v56, v48, v68

    .line 1010
    const/16 v68, 0x1

    aget-wide v58, v48, v68

    .line 1011
    const/16 v68, 0x2

    aget-wide v60, v48, v68

    .line 1012
    const/16 v68, 0x0

    aget-wide v62, v49, v68

    .line 1013
    const/16 v68, 0x1

    aget-wide v64, v49, v68

    .line 1014
    const/16 v68, 0x2

    aget-wide v66, v49, v68

    .line 1015
    move-wide/from16 v20, v22

    .line 1017
    goto/16 :goto_0

    .line 1020
    .end local v2    # "corr00":D
    .end local v4    # "corr01":D
    .end local v6    # "corr02":D
    .end local v8    # "corr10":D
    .end local v10    # "corr11":D
    .end local v12    # "corr12":D
    .end local v14    # "corr20":D
    .end local v16    # "corr21":D
    .end local v18    # "corr22":D
    .end local v22    # "fn1":D
    .end local v28    # "mx00":D
    .end local v30    # "mx01":D
    .end local v32    # "mx02":D
    .end local v34    # "mx10":D
    .end local v36    # "mx11":D
    .end local v38    # "mx12":D
    .end local v40    # "mx20":D
    .end local v42    # "mx21":D
    .end local v44    # "mx22":D
    :cond_1
    new-instance v68, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v69, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    add-int/lit8 v72, v24, -0x1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    invoke-direct/range {v68 .. v70}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v68
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 18
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 919
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    neg-double v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    neg-double v8, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    neg-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-double/2addr v10, v12

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v3
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 26
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 857
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v14

    .line 858
    .local v14, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    .line 859
    .local v16, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    .line 861
    .local v18, "z":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v4, v4, v16

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v18

    add-double v12, v2, v4

    .line 862
    .local v12, "s":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v10, v2

    .line 864
    .local v10, "m0":D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v14, v10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v8, v8, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    sub-double v8, v8, v20

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v4, v14

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v8, v16, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    sub-double v20, v20, v22

    sub-double v8, v8, v20

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v12

    add-double v8, v8, v20

    mul-double/2addr v6, v8

    sub-double v6, v6, v16

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v20, v18, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v20, v20, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    add-double v20, v20, v22

    mul-double v8, v8, v20

    sub-double v8, v8, v18

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v3
.end method

.method public applyInverseTo([D[D)V
    .locals 22
    .param p1, "in"    # [D
    .param p2, "out"    # [D

    .prologue
    .line 877
    const/4 v12, 0x0

    aget-wide v6, p1, v12

    .line 878
    .local v6, "x":D
    const/4 v12, 0x1

    aget-wide v8, p1, v12

    .line 879
    .local v8, "y":D
    const/4 v12, 0x2

    aget-wide v10, p1, v12

    .line 881
    .local v10, "z":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v12, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v14, v10

    add-double v4, v12, v14

    .line 882
    .local v4, "s":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v2, v12

    .line 884
    .local v2, "m0":D
    const/4 v12, 0x0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v6, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double v14, v14, v16

    sub-double/2addr v14, v6

    aput-wide v14, p2, v12

    .line 885
    const/4 v12, 0x1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v8, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double v14, v14, v16

    sub-double/2addr v14, v8

    aput-wide v14, p2, v12

    .line 886
    const/4 v12, 0x2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v10, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double v14, v14, v16

    sub-double/2addr v14, v10

    aput-wide v14, p2, v12

    .line 888
    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 18
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 900
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-double/2addr v10, v12

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v3
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 26
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 820
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    .line 821
    .local v12, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    .line 822
    .local v14, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    .line 824
    .local v16, "z":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v4, v14

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v16

    add-double v10, v2, v4

    .line 826
    .local v10, "s":D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    sub-double v18, v18, v20

    sub-double v8, v8, v18

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v4, v12

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v8, v8, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    add-double v8, v8, v18

    mul-double/2addr v6, v8

    sub-double/2addr v6, v14

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v12

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    add-double v18, v18, v20

    mul-double v8, v8, v18

    sub-double v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v3
.end method

.method public applyTo([D[D)V
    .locals 22
    .param p1, "in"    # [D
    .param p2, "out"    # [D

    .prologue
    .line 839
    const/4 v10, 0x0

    aget-wide v4, p1, v10

    .line 840
    .local v4, "x":D
    const/4 v10, 0x1

    aget-wide v6, p1, v10

    .line 841
    .local v6, "y":D
    const/4 v10, 0x2

    aget-wide v8, p1, v10

    .line 843
    .local v8, "z":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v8

    add-double v2, v10, v12

    .line 845
    .local v2, "s":D
    const/4 v10, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v12, v4

    aput-wide v12, p2, v10

    .line 846
    const/4 v10, 0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v12, v6

    aput-wide v12, p2, v10

    .line 847
    const/4 v10, 0x2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v12, v8

    aput-wide v12, p2, v10

    .line 849
    return-void
.end method

.method public getAngle()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 509
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, -0x4046666666666666L    # -0.1

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 510
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 514
    :goto_0
    return-wide v0

    .line 511
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 512
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    goto :goto_0

    .line 514
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    goto :goto_0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[D
    .locals 11
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const-wide v6, 0x3feffffffff24190L    # 0.9999999999

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 555
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_2

    .line 562
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 563
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 564
    .local v1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 565
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 567
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    .line 765
    :goto_0
    return-object v2

    .line 573
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_5

    .line 580
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 581
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 582
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_4

    .line 583
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 585
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto :goto_0

    .line 591
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_5
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_8

    .line 598
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 599
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 600
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_7

    .line 601
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 603
    :cond_7
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 609
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_8
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_b

    .line 616
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 617
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 618
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_a

    .line 619
    :cond_9
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 621
    :cond_a
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 627
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_b
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_e

    .line 634
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 635
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 636
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_c

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_d

    .line 637
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 639
    :cond_d
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 645
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_e
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_11

    .line 652
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 653
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 654
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_f

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_10

    .line 655
    :cond_f
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 657
    :cond_10
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 663
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_11
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_14

    .line 670
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 671
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 672
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_12

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_13

    .line 673
    :cond_12
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 675
    :cond_13
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 681
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_14
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_17

    .line 688
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 689
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 690
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_15

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_16

    .line 691
    :cond_15
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 693
    :cond_16
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 699
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_17
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_1a

    .line 706
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 707
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 708
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_18

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_19

    .line 709
    :cond_18
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 711
    :cond_19
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 717
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1a
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_1d

    .line 724
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 725
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 726
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1b

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1c

    .line 727
    :cond_1b
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 729
    :cond_1c
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 735
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1d
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_20

    .line 742
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 743
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 744
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1e

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1f

    .line 745
    :cond_1e
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 747
    :cond_1f
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 760
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_20
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 761
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 762
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_22

    .line 763
    :cond_21
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 765
    :cond_22
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 14

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 493
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v6, v12

    add-double/2addr v0, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v6, v12

    add-double v10, v0, v6

    .line 494
    .local v10, "squaredSine":D
    cmpl-double v0, v10, v4

    if-nez v0, :cond_0

    .line 495
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    .line 501
    :goto_0
    return-object v1

    .line 496
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 497
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double v8, v2, v0

    .line 498
    .local v8, "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v8

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v4, v8

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_0

    .line 500
    .end local v8    # "inverse":D
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 501
    .restart local v8    # "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v8

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v4, v8

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_0
.end method

.method public getMatrix()[[D
    .locals 30

    .prologue
    .line 781
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v26, v0

    mul-double v4, v24, v26

    .line 782
    .local v4, "q0q0":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v26, v0

    mul-double v6, v24, v26

    .line 783
    .local v6, "q0q1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v26, v0

    mul-double v8, v24, v26

    .line 784
    .local v8, "q0q2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v10, v24, v26

    .line 785
    .local v10, "q0q3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v26, v0

    mul-double v12, v24, v26

    .line 786
    .local v12, "q1q1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v26, v0

    mul-double v14, v24, v26

    .line 787
    .local v14, "q1q2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v16, v24, v26

    .line 788
    .local v16, "q1q3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v26, v0

    mul-double v18, v24, v26

    .line 789
    .local v18, "q2q2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v20, v24, v26

    .line 790
    .local v20, "q2q3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .line 793
    .local v22, "q3q3":D
    const/4 v3, 0x3

    new-array v2, v3, [[D

    .line 794
    .local v2, "m":[[D
    const/4 v3, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 795
    const/4 v3, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 796
    const/4 v3, 0x2

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 798
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v12

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 799
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v28, v14, v10

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 800
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v16, v8

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 802
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v14, v10

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 803
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v18

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 804
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v28, v20, v6

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 806
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v28, v16, v8

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 807
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v20, v6

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 808
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v22

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 810
    return-object v2
.end method

.method public getQ0()D
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .prologue
    .line 471
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .prologue
    .line 478
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .prologue
    .line 485
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-wide v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 11

    .prologue
    .line 457
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v1
.end method
