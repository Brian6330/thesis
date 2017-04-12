.class public Lorg/apache/commons/math3/ml/distance/EarthMoversDistance;
.super Ljava/lang/Object;
.source "EarthMoversDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x4b0892d12c4e138aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 12
    .param p1, "a"    # [D
    .param p2, "b"    # [D

    .prologue
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .local v4, "lastDistance":D
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "totalDistance":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 38
    aget-wide v8, p1, v2

    add-double/2addr v8, v4

    aget-wide v10, p2, v2

    sub-double v0, v8, v10

    .line 39
    .local v0, "currentDistance":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 40
    move-wide v4, v0

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "currentDistance":D
    :cond_0
    return-wide v6
.end method
