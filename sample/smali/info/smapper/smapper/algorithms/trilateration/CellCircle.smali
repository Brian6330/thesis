.class public Linfo/smapper/smapper/algorithms/trilateration/CellCircle;
.super Ljava/lang/Object;
.source "CellCircle.java"


# instance fields
.field private point:[D

.field private radius:D


# direct methods
.method public constructor <init>(DDDZ)V
    .locals 5
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "radius"    # D
    .param p7, "useHeuristic"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    .line 11
    if-eqz p7, :cond_0

    .line 12
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    aput-wide p1, v0, v1

    .line 13
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    aput-wide p3, v0, v4

    .line 20
    :goto_0
    iput-wide p5, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->radius:D

    .line 21
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    invoke-static {p3, p4, p1, p2}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->WGStoCHx(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 16
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    invoke-static {p3, p4, p1, p2}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->WGStoCHy(DD)D

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getPoint()[D
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->radius:D

    return-wide v0
.end method

.method public setPoint([D)V
    .locals 0
    .param p1, "point"    # [D

    .prologue
    .line 36
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->point:[D

    .line 37
    return-void
.end method

.method public setRadius(D)V
    .locals 1
    .param p1, "radius"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->radius:D

    .line 29
    return-void
.end method
