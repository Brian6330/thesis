.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;
.super Ljava/lang/Object;
.source "SphericalCoordinates.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299eL


# instance fields
.field private jacobian:[[D

.field private final phi:D

.field private phiHessian:[[D

.field private final r:D

.field private rHessian:[[D

.field private final theta:D

.field private thetaHessian:[[D

.field private final v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(DDD)V
    .locals 21
    .param p1, "r"    # D
    .param p3, "theta"    # D
    .param p5, "phi"    # D

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v14

    .line 104
    .local v14, "cosTheta":D
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    .line 105
    .local v18, "sinTheta":D
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v12

    .line 106
    .local v12, "cosPhi":D
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v16

    .line 109
    .local v16, "sinPhi":D
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 110
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 111
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 114
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v6, p1, v14

    mul-double v6, v6, v16

    mul-double v8, p1, v18

    mul-double v8, v8, v16

    mul-double v10, p1, v12

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 90
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 91
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getAlpha()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 92
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 94
    return-void
.end method

.method private computeHessians()V
    .locals 52

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    if-nez v46, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    .line 283
    .local v18, "x":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v28

    .line 284
    .local v28, "y":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v38

    .line 285
    .local v38, "z":D
    mul-double v20, v18, v18

    .line 286
    .local v20, "x2":D
    mul-double v30, v28, v28

    .line 287
    .local v30, "y2":D
    mul-double v40, v38, v38

    .line 288
    .local v40, "z2":D
    add-double v8, v20, v30

    .line 289
    .local v8, "rho2":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 290
    .local v6, "rho":D
    add-double v2, v8, v40

    .line 291
    .local v2, "r2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v46, v0

    div-double v22, v18, v46

    .line 292
    .local v22, "xOr":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v46, v0

    div-double v32, v28, v46

    .line 293
    .local v32, "yOr":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v46, v0

    div-double v42, v38, v46

    .line 294
    .local v42, "zOr":D
    div-double v26, v18, v8

    .line 295
    .local v26, "xOrho2":D
    div-double v36, v28, v8

    .line 296
    .local v36, "yOrho2":D
    div-double v24, v22, v2

    .line 297
    .local v24, "xOr3":D
    div-double v34, v32, v2

    .line 298
    .local v34, "yOr3":D
    div-double v44, v42, v2

    .line 301
    .local v44, "zOr3":D
    const/16 v46, 0x3

    const/16 v47, 0x3

    filled-new-array/range {v46 .. v47}, [I

    move-result-object v46

    sget-object v47, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [[D

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x0

    mul-double v48, v28, v34

    mul-double v50, v38, v44

    add-double v48, v48, v50

    aput-wide v48, v46, v47

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v48, v0

    mul-double v48, v48, v34

    aput-wide v48, v46, v47

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    const/16 v47, 0x0

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v48, v0

    mul-double v48, v48, v24

    aput-wide v48, v46, v47

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x1

    mul-double v48, v18, v24

    mul-double v50, v38, v44

    add-double v48, v48, v50

    aput-wide v48, v46, v47

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    const/16 v47, 0x1

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v48, v0

    mul-double v48, v48, v44

    aput-wide v48, v46, v47

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    const/16 v47, 0x2

    mul-double v48, v18, v24

    mul-double v50, v28, v34

    add-double v48, v48, v50

    aput-wide v48, v46, v47

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x1

    aget-object v48, v48, v49

    const/16 v49, 0x0

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x2

    aget-object v48, v48, v49

    const/16 v49, 0x0

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x2

    aget-object v48, v48, v49

    const/16 v49, 0x1

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 315
    const/16 v46, 0x2

    const/16 v47, 0x2

    filled-new-array/range {v46 .. v47}, [I

    move-result-object v46

    sget-object v47, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [[D

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x0

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v48, v48, v26

    mul-double v48, v48, v36

    aput-wide v48, v46, v47

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x0

    mul-double v48, v36, v36

    mul-double v50, v26, v26

    sub-double v48, v48, v50

    aput-wide v48, v46, v47

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x1

    const-wide/high16 v48, -0x4000000000000000L    # -2.0

    mul-double v48, v48, v26

    mul-double v48, v48, v36

    aput-wide v48, v46, v47

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x1

    aget-object v48, v48, v49

    const/16 v49, 0x0

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 324
    mul-double v14, v6, v2

    .line 325
    .local v14, "rhor2":D
    mul-double v10, v6, v14

    .line 326
    .local v10, "rho2r2":D
    mul-double v16, v14, v2

    .line 327
    .local v16, "rhor4":D
    mul-double v12, v16, v8

    .line 328
    .local v12, "rho3r4":D
    const-wide/high16 v46, 0x4008000000000000L    # 3.0

    mul-double v46, v46, v8

    add-double v4, v46, v40

    .line 329
    .local v4, "r2P2rho2":D
    const/16 v46, 0x3

    const/16 v47, 0x3

    filled-new-array/range {v46 .. v47}, [I

    move-result-object v46

    sget-object v47, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [[D

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x0

    mul-double v48, v20, v4

    sub-double v48, v10, v48

    mul-double v48, v48, v38

    div-double v48, v48, v12

    aput-wide v48, v46, v47

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v48, v0

    mul-double v48, v48, v28

    mul-double v48, v48, v38

    mul-double v48, v48, v4

    div-double v48, v48, v12

    aput-wide v48, v46, v47

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    const/16 v47, 0x0

    sub-double v48, v8, v40

    mul-double v48, v48, v18

    div-double v48, v48, v16

    aput-wide v48, v46, v47

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x1

    mul-double v48, v30, v4

    sub-double v48, v10, v48

    mul-double v48, v48, v38

    div-double v48, v48, v12

    aput-wide v48, v46, v47

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    const/16 v47, 0x1

    sub-double v48, v8, v40

    mul-double v48, v48, v28

    div-double v48, v48, v16

    aput-wide v48, v46, v47

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    const/16 v47, 0x2

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v48, v48, v6

    mul-double v48, v48, v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v50, v0

    div-double v48, v48, v50

    aput-wide v48, v46, v47

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x1

    aget-object v48, v48, v49

    const/16 v49, 0x0

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x2

    aget-object v48, v48, v49

    const/16 v49, 0x0

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    move-object/from16 v48, v0

    const/16 v49, 0x2

    aget-object v48, v48, v49

    const/16 v49, 0x1

    aget-wide v48, v48, v49

    aput-wide v48, v46, v47

    .line 344
    .end local v2    # "r2":D
    .end local v4    # "r2P2rho2":D
    .end local v6    # "rho":D
    .end local v8    # "rho2":D
    .end local v10    # "rho2r2":D
    .end local v12    # "rho3r4":D
    .end local v14    # "rhor2":D
    .end local v16    # "rhor4":D
    .end local v18    # "x":D
    .end local v20    # "x2":D
    .end local v22    # "xOr":D
    .end local v24    # "xOr3":D
    .end local v26    # "xOrho2":D
    .end local v28    # "y":D
    .end local v30    # "y2":D
    .end local v32    # "yOr":D
    .end local v34    # "yOr3":D
    .end local v36    # "yOrho2":D
    .end local v38    # "z":D
    .end local v40    # "z2":D
    .end local v42    # "zOr":D
    .end local v44    # "zOr3":D
    :cond_0
    return-void
.end method

.method private computeJacobian()V
    .locals 20

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    if-nez v14, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    .line 249
    .local v8, "x":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    .line 250
    .local v10, "y":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    .line 251
    .local v12, "z":D
    mul-double v14, v8, v8

    mul-double v16, v10, v10

    add-double v6, v14, v16

    .line 252
    .local v6, "rho2":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 253
    .local v4, "rho":D
    mul-double v14, v12, v12

    add-double v2, v6, v14

    .line 255
    .local v2, "r2":D
    const/4 v14, 0x3

    const/4 v15, 0x3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v16, v0

    div-double v16, v8, v16

    aput-wide v16, v14, v15

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v16, v0

    div-double v16, v10, v16

    aput-wide v16, v14, v15

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v16, v0

    div-double v16, v12, v16

    aput-wide v16, v14, v15

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    neg-double v0, v10

    move-wide/from16 v16, v0

    div-double v16, v16, v6

    aput-wide v16, v14, v15

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    div-double v16, v8, v6

    aput-wide v16, v14, v15

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x0

    mul-double v16, v8, v12

    mul-double v18, v4, v2

    div-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    mul-double v16, v10, v12

    mul-double v18, v4, v2

    div-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x2

    neg-double v0, v4

    move-wide/from16 v16, v0

    div-double v16, v16, v2

    aput-wide v16, v14, v15

    .line 273
    .end local v2    # "r2":D
    .end local v4    # "rho":D
    .end local v6    # "rho2":D
    .end local v8    # "x":D
    .end local v10    # "y":D
    .end local v12    # "z":D
    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 351
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;-><init>(DDD)V

    return-object v1
.end method


# virtual methods
.method public getCartesian()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPhi()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    return-wide v0
.end method

.method public toCartesianGradient([D)[D
    .locals 11
    .param p1, "sGradient"    # [D

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 164
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [D

    aget-wide v2, p1, v8

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v8

    aget-wide v4, v1, v8

    mul-double/2addr v2, v4

    aget-wide v4, p1, v10

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v10

    aget-wide v6, v1, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-wide v4, p1, v9

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v9

    aget-wide v6, v1, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v8

    aget-wide v2, p1, v8

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v8

    aget-wide v4, v1, v10

    mul-double/2addr v2, v4

    aget-wide v4, p1, v10

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v10

    aget-wide v6, v1, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-wide v4, p1, v9

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v9

    aget-wide v6, v1, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v10

    aget-wide v2, p1, v8

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v8

    aget-wide v4, v1, v9

    mul-double/2addr v2, v4

    aget-wide v4, p1, v9

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v9

    aget-wide v6, v1, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v9

    return-object v0
.end method

.method public toCartesianHessian([[D[D)[[D
    .locals 12
    .param p1, "sHessian"    # [[D
    .param p2, "sGradient"    # [D

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    .line 197
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeHessians()V

    .line 202
    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 203
    .local v1, "hj":[[D
    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 207
    .local v0, "cHessian":[[D
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, p1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 208
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, p1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 209
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 210
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, p1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 211
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, p1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 213
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 214
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 215
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 218
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 219
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 220
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 221
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 222
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 223
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 226
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 227
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 228
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 229
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 230
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 231
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-wide v4, v2, v3

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 234
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 235
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 236
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 238
    return-object v0
.end method
