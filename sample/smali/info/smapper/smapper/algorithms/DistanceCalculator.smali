.class public Linfo/smapper/smapper/algorithms/DistanceCalculator;
.super Ljava/lang/Object;
.source "DistanceCalculator.java"


# instance fields
.field final EARTHRADIUS:I

.field private pointX:Landroid/location/Location;

.field private pointY:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;Landroid/location/Location;)V
    .locals 1
    .param p1, "pointX"    # Landroid/location/Location;
    .param p2, "pointY"    # Landroid/location/Location;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x18e3

    iput v0, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->EARTHRADIUS:I

    .line 17
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    .line 18
    iput-object p2, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    .line 19
    return-void
.end method


# virtual methods
.method public distance()D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 22
    iget-object v6, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    if-eqz v6, :cond_0

    iget-object v6, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    if-eqz v6, :cond_0

    .line 23
    iget-object v6, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v8, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 24
    .local v4, "latDistance":Ljava/lang/Double;
    iget-object v6, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 26
    .local v5, "lonDistance":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 27
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v8, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    .line 28
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget-object v10, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    .line 29
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 30
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 31
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 33
    .local v0, "a":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 35
    .local v1, "c":Ljava/lang/Double;
    const-wide v6, 0x40b8e30000000000L    # 6371.0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v2, v6, v8

    .line 40
    .end local v0    # "a":Ljava/lang/Double;
    .end local v1    # "c":Ljava/lang/Double;
    .end local v4    # "latDistance":Ljava/lang/Double;
    .end local v5    # "lonDistance":Ljava/lang/Double;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public distanceBeautified()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Linfo/smapper/smapper/algorithms/DistanceCalculator;->distance()D

    move-result-wide v0

    .line 46
    .local v0, "distance":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 47
    const-string v2, "n/a"

    .line 49
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPointX()Landroid/location/Location;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    return-object v0
.end method

.method public getPointY()Landroid/location/Location;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    return-object v0
.end method

.method public setPointX(Landroid/location/Location;)V
    .locals 0
    .param p1, "pointX"    # Landroid/location/Location;

    .prologue
    .line 66
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointX:Landroid/location/Location;

    .line 67
    return-void
.end method

.method public setPointY(Landroid/location/Location;)V
    .locals 0
    .param p1, "pointY"    # Landroid/location/Location;

    .prologue
    .line 58
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/DistanceCalculator;->pointY:Landroid/location/Location;

    .line 59
    return-void
.end method
