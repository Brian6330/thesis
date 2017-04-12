.class public Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;
.super Ljava/lang/Object;
.source "Sphere1D.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Space;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$1;,
        Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$NoSubSpaceException;,
        Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$LazyHolder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1332d92L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;
    .locals 1

    .prologue
    .line 50
    # getter for: Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;
    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$LazyHolder;->access$000()Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    # getter for: Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;
    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$LazyHolder;->access$000()Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public getSubSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$NoSubSpaceException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$NoSubSpaceException;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D$NoSubSpaceException;-><init>()V

    throw v0
.end method
