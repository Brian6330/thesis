.class public Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;
.super Ljava/lang/Object;
.source "SimulatedPositionCalculator.java"


# instance fields
.field cellDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;",
            ">;"
        }
    .end annotation
.end field

.field currentLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->cellDistances:Ljava/util/List;

    .line 14
    new-instance v0, Landroid/location/Location;

    const-string v1, "SimulatedPositionCalculator"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->currentLocation:Landroid/location/Location;

    .line 17
    invoke-direct {p0, p1}, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->createCellCircles(Ljava/util/List;)V

    .line 18
    return-void
.end method

.method private createCellCircles(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 22
    .local v0, "cell":Linfo/smapper/smapper/data/CellData;
    new-instance v1, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalStrength()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;-><init>(DDI)V

    .line 23
    .local v1, "c":Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->currentLocation:Landroid/location/Location;

    .line 24
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->currentLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->defineUserLocation(Landroid/location/Location;)V

    .line 25
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->cellDistances:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    .end local v0    # "cell":Linfo/smapper/smapper/data/CellData;
    .end local v1    # "c":Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateEstimatedPosition()[D
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 30
    new-array v1, v14, [D

    .line 31
    .local v1, "estimate":[D
    const-wide/16 v8, 0x0

    .line 33
    .local v8, "totalPower":D
    const-wide/16 v2, 0x0

    .line 34
    .local v2, "finalLatitudeSkew":D
    const-wide/16 v4, 0x0

    .line 36
    .local v4, "finalLongitudeSkew":D
    iget-object v7, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->cellDistances:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;

    .line 37
    .local v0, "cd":Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
    invoke-virtual {v0}, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->getNormalizedStrength()D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 38
    goto :goto_0

    .line 40
    .end local v0    # "cd":Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
    :cond_0
    iget-object v7, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->cellDistances:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;

    .line 41
    .restart local v0    # "cd":Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
    invoke-virtual {v0}, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->getNormalizedStrength()D

    move-result-wide v10

    div-double/2addr v10, v8

    invoke-virtual {v0, v10, v11}, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->setFractionOfTotalPower(D)V

    .line 42
    invoke-virtual {v0}, Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;->getSkew()[D

    move-result-object v6

    .line 43
    .local v6, "skew":[D
    aget-wide v10, v6, v12

    add-double/2addr v2, v10

    .line 44
    aget-wide v10, v6, v13

    add-double/2addr v4, v10

    .line 45
    goto :goto_1

    .line 47
    .end local v0    # "cd":Linfo/smapper/smapper/algorithms/simulated_trilateration/CellDistance;
    .end local v6    # "skew":[D
    :cond_1
    iget-object v7, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->currentLocation:Landroid/location/Location;

    if-eqz v7, :cond_2

    iget-object v7, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->cellDistances:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v14, :cond_3

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 54
    .end local v1    # "estimate":[D
    :goto_2
    return-object v1

    .line 51
    .restart local v1    # "estimate":[D
    :cond_3
    iget-object v7, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->currentLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    add-double/2addr v10, v2

    aput-wide v10, v1, v12

    .line 52
    iget-object v7, p0, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->currentLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    add-double/2addr v10, v4

    aput-wide v10, v1, v13

    goto :goto_2
.end method
