.class public Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
.super Ljava/lang/Object;
.source "CellDistance.java"


# instance fields
.field private fractionOfTotalPower:D

.field private location:[D

.field private relativeUserLocation:[D

.field private strength:I


# direct methods
.method public constructor <init>(DDI)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "strength"    # I

    .prologue
    const/4 v1, 0x2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v1, [D

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    .line 8
    new-array v0, v1, [D

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    .line 13
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 14
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 15
    iput p5, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->strength:I

    .line 16
    return-void
.end method


# virtual methods
.method public defineUserLocation(Landroid/location/Location;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 19
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 24
    .local v0, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 26
    .local v2, "longitude":D
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    aget-wide v4, v4, v8

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    .line 27
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    aget-wide v6, v5, v8

    sub-double v6, v0, v6

    neg-double v6, v6

    aput-wide v6, v4, v8

    .line 32
    :goto_1
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    aget-wide v4, v4, v9

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 33
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    aget-wide v6, v5, v9

    sub-double v6, v2, v6

    neg-double v6, v6

    aput-wide v6, v4, v9

    goto :goto_0

    .line 29
    :cond_1
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    aget-wide v6, v5, v8

    sub-double v6, v0, v6

    aput-wide v6, v4, v8

    goto :goto_1

    .line 35
    :cond_2
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->location:[D

    aget-wide v6, v5, v9

    sub-double v6, v2, v6

    aput-wide v6, v4, v9

    goto :goto_0
.end method

.method public getFractionOfTotalPower()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->fractionOfTotalPower:D

    return-wide v0
.end method

.method public getNormalizedStrength()D
    .locals 4

    .prologue
    .line 45
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget v2, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->strength:I

    div-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSkew()[D
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    const/4 v1, 0x2

    new-array v0, v1, [D

    .line 58
    .local v0, "skew":[D
    iget-object v1, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    aget-wide v2, v1, v6

    iget-wide v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->fractionOfTotalPower:D

    mul-double/2addr v2, v4

    aput-wide v2, v0, v6

    .line 59
    iget-object v1, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->relativeUserLocation:[D

    aget-wide v2, v1, v7

    iget-wide v4, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->fractionOfTotalPower:D

    mul-double/2addr v2, v4

    aput-wide v2, v0, v7

    .line 60
    return-object v0
.end method

.method public getStrength()D
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->strength:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public setFractionOfTotalPower(D)V
    .locals 1
    .param p1, "fraction"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->fractionOfTotalPower:D

    .line 50
    return-void
.end method
