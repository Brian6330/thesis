.class public Lorg/apache/commons/math3/ml/distance/ChebyshevDistance;
.super Ljava/lang/Object;
.source "ChebyshevDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x412785ba269c9398L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 2
    .param p1, "a"    # [D
    .param p2, "b"    # [D

    .prologue
    .line 33
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->distanceInf([D[D)D

    move-result-wide v0

    return-wide v0
.end method
