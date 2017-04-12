.class Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;
.super Ljava/lang/Object;
.source "SphericalCoordinates.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataTransferObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299eL


# instance fields
.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;->x:D

    .line 382
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;->y:D

    .line 383
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;->z:D

    .line 384
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 390
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;->y:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;->z:D

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method
