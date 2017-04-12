.class public Linfo/smapper/smapper/data/CellData;
.super Ljava/lang/Object;
.source "CellData.java"


# instance fields
.field private areaCode:I

.field private availableCells:I

.field private bakomLocation:Landroid/location/Location;

.field private cellId:I

.field private cellLocation:Landroid/location/Location;

.field private cellLocationOpenCellId:Landroid/location/Location;

.field private cellRange:I

.field private countryCode:I

.field private isRegistered:Z

.field private networkCode:I

.field private networkSubType:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private powerLevel:I

.field private registeredCells:I

.field private serviceProvider:Ljava/lang/String;

.field private signalQuality:Ljava/lang/String;

.field private signalStrength:I

.field private unitCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "n/a"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->serviceProvider:Ljava/lang/String;

    .line 18
    const-string v0, "n/a"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/smapper/smapper/data/CellData;->isRegistered:Z

    .line 20
    new-instance v0, Landroid/location/Location;

    const-string v1, "CellData"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->cellLocationOpenCellId:Landroid/location/Location;

    .line 21
    new-instance v0, Landroid/location/Location;

    const-string v1, "CellData"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->bakomLocation:Landroid/location/Location;

    .line 22
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    .line 25
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    .line 26
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    .line 27
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    .line 28
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    .line 29
    const-string v0, "n/a"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    .line 30
    const-string v0, "n/a"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    .line 31
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->powerLevel:I

    .line 34
    new-instance v0, Landroid/location/Location;

    const-string v1, "CellData"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    .line 37
    iput v2, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    return-void
.end method

.method private getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "networkSubType"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v0, "GSM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GPRS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EDGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GSM / GPRS / EDGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iDen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 368
    :cond_0
    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "Mobile Country Code:"

    .line 420
    :goto_0
    return-object v0

    .line 370
    :cond_1
    const-string v0, "net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "Mobile Network Code:"

    goto :goto_0

    .line 372
    :cond_2
    const-string v0, "area"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const-string v0, "Location Area Code:"

    goto :goto_0

    .line 374
    :cond_3
    const-string v0, "cell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    const-string v0, "Cell ID:"

    goto :goto_0

    .line 376
    :cond_4
    const-string v0, "unit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 377
    const-string v0, "n/a"

    goto :goto_0

    .line 379
    :cond_5
    const-string v0, "CDMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 381
    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    const-string v0, "Mobile Country Code:"

    goto :goto_0

    .line 383
    :cond_6
    const-string v0, "net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    const-string v0, "System Identification Number:"

    goto :goto_0

    .line 385
    :cond_7
    const-string v0, "area"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 386
    const-string v0, "Network Identification Number:"

    goto :goto_0

    .line 387
    :cond_8
    const-string v0, "cell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    const-string v0, "Base station Identifier Number:"

    goto :goto_0

    .line 389
    :cond_9
    const-string v0, "unit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 390
    const-string v0, "n/a"

    goto :goto_0

    .line 392
    :cond_a
    const-string v0, "WCDMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "UMTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "HSDPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "HSUPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "HSPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "HSPA+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "1xRTT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "eHRPD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "EVDO rev. 0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "EVDO rev. A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "EVDO rev. B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 394
    :cond_b
    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 395
    const-string v0, "Mobile Country Code:"

    goto/16 :goto_0

    .line 396
    :cond_c
    const-string v0, "net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 397
    const-string v0, "Mobile Network Code:"

    goto/16 :goto_0

    .line 398
    :cond_d
    const-string v0, "area"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 399
    const-string v0, "Location Area Code:"

    goto/16 :goto_0

    .line 400
    :cond_e
    const-string v0, "cell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 401
    const-string v0, "UTRAN Cell ID:"

    goto/16 :goto_0

    .line 402
    :cond_f
    const-string v0, "unit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 403
    const-string v0, "Primary Scrambling Code:"

    goto/16 :goto_0

    .line 405
    :cond_10
    const-string v0, "LTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 407
    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 408
    const-string v0, "Mobile Country Code:"

    goto/16 :goto_0

    .line 409
    :cond_11
    const-string v0, "net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 410
    const-string v0, "Mobile Network Code:"

    goto/16 :goto_0

    .line 411
    :cond_12
    const-string v0, "area"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 412
    const-string v0, "Target Area Code:"

    goto/16 :goto_0

    .line 413
    :cond_13
    const-string v0, "cell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 414
    const-string v0, "Cell ID:"

    goto/16 :goto_0

    .line 415
    :cond_14
    const-string v0, "unit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 416
    const-string v0, "Physical Cell ID:"

    goto/16 :goto_0

    .line 420
    :cond_15
    const-string v0, "n/a"

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Linfo/smapper/smapper/data/CellData;)Z
    .locals 6
    .param p1, "other"    # Linfo/smapper/smapper/data/CellData;

    .prologue
    const/4 v0, 0x0

    .line 332
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getCountryCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getNetworkCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 336
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getAreaCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 338
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getCellId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 340
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p1, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v1, p1, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getUnitCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 350
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 354
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAreaCode()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    return v0
.end method

.method public getAvailableCells()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->availableCells:I

    return v0
.end method

.method public getBakomLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->bakomLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getCellId()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    return v0
.end method

.method public getCellLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getCellLocationOpenCellId()Landroid/location/Location;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->cellLocationOpenCellId:Landroid/location/Location;

    return-object v0
.end method

.method public getCellRange()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    return v0
.end method

.method public getCountryCode()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    return v0
.end method

.method public getIsRegistered()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Linfo/smapper/smapper/data/CellData;->isRegistered:Z

    return v0
.end method

.method public getNetworkCode()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    return v0
.end method

.method public getNetworkSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerLevel()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->powerLevel:I

    return v0
.end method

.method public getRegisteredCells()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->registeredCells:I

    return v0
.end method

.method public getRelevantDataForLogging()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    if-eq v1, v4, :cond_0

    .line 71
    const-string v1, "mcc"

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    if-eq v1, v4, :cond_1

    .line 75
    const-string v1, "net"

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    if-eq v1, v4, :cond_2

    .line 79
    const-string v1, "area"

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    if-eq v1, v4, :cond_3

    .line 83
    const-string v1, "cell"

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_3
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_4

    .line 87
    const-string v1, "cellLongitude"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_4
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_5

    .line 91
    const-string v1, "cellLatitude"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_5
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    if-eq v1, v4, :cond_6

    .line 95
    const-string v1, "unit"

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_6
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 99
    const-string v1, "nType"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_7
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 103
    const-string v1, "nSubType"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_8
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRelevantDataForNetworkList()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    if-eq v1, v4, :cond_0

    .line 116
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    invoke-direct {p0, v1, v2}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    if-eq v1, v4, :cond_1

    .line 120
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-direct {p0, v1, v2}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    if-eq v1, v4, :cond_2

    .line 124
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "area"

    invoke-direct {p0, v1, v2}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_2
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    if-eq v1, v4, :cond_3

    .line 128
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cell"

    invoke-direct {p0, v1, v2}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_3
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_4

    .line 132
    const-string v1, "Cell Longitude:"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_4
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_5

    .line 136
    const-string v1, "Cell Latitude:"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_5
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    if-eq v1, v4, :cond_6

    .line 140
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unit"

    invoke-direct {p0, v1, v2}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_6
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 144
    const-string v1, "Network Type:"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_7
    iget-object v1, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 148
    const-string v1, "Network Subtype:"

    iget-object v2, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_8
    iget v1, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    if-eqz v1, :cond_9

    .line 152
    const-string v1, "Signal Range:"

    iget v2, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_9
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRelevantDataForStatistics()[[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget v4, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    if-eq v4, v6, :cond_0

    .line 165
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mcc"

    invoke-direct {p0, v4, v5}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    iget v4, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    if-eq v4, v6, :cond_1

    .line 169
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "net"

    invoke-direct {p0, v4, v5}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    iget v4, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    if-eq v4, v6, :cond_2

    .line 173
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "area"

    invoke-direct {p0, v4, v5}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    iget v4, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    if-eq v4, v6, :cond_3

    .line 177
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cell"

    invoke-direct {p0, v4, v5}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_3
    iget v4, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    if-eq v4, v6, :cond_4

    .line 181
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unit"

    invoke-direct {p0, v4, v5}, Linfo/smapper/smapper/data/CellData;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_4
    iget-object v4, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 185
    const-string v4, "Network Type:"

    iget-object v5, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_5
    iget-object v4, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 189
    const-string v4, "Network Subtype:"

    iget-object v5, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_6
    :goto_0
    const/4 v4, 0x7

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 194
    .local v0, "copy":[[Ljava/lang/String;
    const/4 v3, 0x0

    .line 195
    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 196
    .local v2, "each":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v6, v0, v3

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v7

    .line 197
    aget-object v6, v0, v3

    const/4 v7, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v7

    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_1

    .line 201
    .end local v2    # "each":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    return-object v0

    .line 191
    .end local v0    # "copy":[[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getServiceProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->serviceProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->signalStrength:I

    return v0
.end method

.method public getSignalStrengthUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Linfo/smapper/smapper/data/CellData;->signalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitCode()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    return v0
.end method

.method public setAreaCode(I)V
    .locals 0
    .param p1, "lac"    # I

    .prologue
    .line 276
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->areaCode:I

    .line 277
    return-void
.end method

.method public setAvailableCells(I)V
    .locals 0
    .param p1, "availableCells"    # I

    .prologue
    .line 40
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->availableCells:I

    .line 41
    return-void
.end method

.method public setBakomLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 245
    iput-object p1, p0, Linfo/smapper/smapper/data/CellData;->bakomLocation:Landroid/location/Location;

    .line 246
    return-void
.end method

.method public setCellId(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 284
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->cellId:I

    .line 285
    return-void
.end method

.method public setCellLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 324
    iput-object p1, p0, Linfo/smapper/smapper/data/CellData;->cellLocation:Landroid/location/Location;

    .line 325
    return-void
.end method

.method public setCellLocationOpenCellId(Landroid/location/Location;)V
    .locals 0
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 237
    iput-object p1, p0, Linfo/smapper/smapper/data/CellData;->cellLocationOpenCellId:Landroid/location/Location;

    .line 238
    return-void
.end method

.method public setCellRange(I)V
    .locals 0
    .param p1, "range"    # I

    .prologue
    .line 358
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->cellRange:I

    .line 359
    return-void
.end method

.method public setCountryCode(I)V
    .locals 2
    .param p1, "mcc"    # I

    .prologue
    const/4 v1, -0x1

    .line 253
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    .line 255
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    if-eq v0, v1, :cond_0

    .line 256
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    iget v1, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    invoke-static {v0, v1}, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->getServiceProviderName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->serviceProvider:Ljava/lang/String;

    .line 258
    :cond_0
    return-void
.end method

.method public setIsRegistered(Z)V
    .locals 0
    .param p1, "isRegistered"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Linfo/smapper/smapper/data/CellData;->isRegistered:Z

    .line 206
    return-void
.end method

.method public setNetworkCode(I)V
    .locals 2
    .param p1, "mnc"    # I

    .prologue
    const/4 v1, -0x1

    .line 265
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    .line 266
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    if-eq v0, v1, :cond_0

    .line 267
    iget v0, p0, Linfo/smapper/smapper/data/CellData;->countryCode:I

    iget v1, p0, Linfo/smapper/smapper/data/CellData;->networkCode:I

    invoke-static {v0, v1}, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->getServiceProviderName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->serviceProvider:Ljava/lang/String;

    .line 269
    :cond_0
    return-void
.end method

.method public setNetworkSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "nSubType"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Linfo/smapper/smapper/data/CellData;->networkSubType:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0
    .param p1, "nType"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Linfo/smapper/smapper/data/CellData;->networkType:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setPowerLevel(I)V
    .locals 0
    .param p1, "pLevel"    # I

    .prologue
    .line 308
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->powerLevel:I

    .line 309
    return-void
.end method

.method public setRegisteredCells(I)V
    .locals 0
    .param p1, "registeredCells"    # I

    .prologue
    .line 44
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->registeredCells:I

    .line 45
    return-void
.end method

.method public setSignalQuality(I)V
    .locals 1
    .param p1, "signalQuality"    # I

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 53
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 55
    const-string v0, "POOR"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 57
    const-string v0, "MODERATE"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 59
    const-string v0, "GOOD"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 61
    const-string v0, "GREAT"

    iput-object v0, p0, Linfo/smapper/smapper/data/CellData;->signalQuality:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSignalStrength(I)V
    .locals 0
    .param p1, "signalStrength"    # I

    .prologue
    .line 48
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->signalStrength:I

    .line 49
    return-void
.end method

.method public setUnitCode(I)V
    .locals 0
    .param p1, "psc"    # I

    .prologue
    .line 316
    iput p1, p0, Linfo/smapper/smapper/data/CellData;->unitCode:I

    .line 317
    return-void
.end method
