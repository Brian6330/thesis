.class public Linfo/smapper/smapper/logic/DataFetcher;
.super Ljava/lang/Object;
.source "DataFetcher.java"


# static fields
.field private static currentSignalStrength:I


# instance fields
.field private MY_READ_PHONE_STATE_ID:B

.field private activity:Landroid/app/Activity;

.field private tel:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, -0x1

    sput v0, Linfo/smapper/smapper/logic/DataFetcher;->currentSignalStrength:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/app/Activity;)V
    .locals 3
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x2c

    iput-byte v0, p0, Linfo/smapper/smapper/logic/DataFetcher;->MY_READ_PHONE_STATE_ID:B

    .line 58
    iput-object p2, p0, Linfo/smapper/smapper/logic/DataFetcher;->activity:Landroid/app/Activity;

    .line 59
    iput-object p1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    .line 60
    iget-object v0, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    new-instance v1, Linfo/smapper/smapper/logic/myPhoneStateListener;

    invoke-direct {v1}, Linfo/smapper/smapper/logic/myPhoneStateListener;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 61
    return-void
.end method

.method private cleanupEntries(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v5, "validData":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 309
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/smapper/smapper/data/CellData;

    .line 311
    .local v2, "entry":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "cellsToRemove":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 315
    .local v0, "c":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v2, v0}, Linfo/smapper/smapper/data/CellData;->equals(Linfo/smapper/smapper/data/CellData;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 316
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    .end local v0    # "c":Linfo/smapper/smapper/data/CellData;
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 320
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v1    # "cellsToRemove":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    :cond_3
    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getCountryCode()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getAreaCode()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getNetworkCode()I

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 329
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 333
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/smapper/smapper/data/CellData;

    invoke-virtual {v2, v6}, Linfo/smapper/smapper/data/CellData;->equals(Linfo/smapper/smapper/data/CellData;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 336
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_5

    .line 337
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 343
    .end local v2    # "entry":Linfo/smapper/smapper/data/CellData;
    .end local v4    # "j":I
    :cond_6
    return-object v5
.end method

.method private getNetworkType(I)[Ljava/lang/String;
    .locals 5
    .param p1, "t"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 387
    new-array v0, v2, [Ljava/lang/String;

    .line 389
    .local v0, "type":[Ljava/lang/String;
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 390
    const-string v1, "2G"

    aput-object v1, v0, v4

    .line 391
    const-string v1, "GPRS"

    aput-object v1, v0, v3

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 392
    :cond_1
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 393
    const-string v1, "2G"

    aput-object v1, v0, v4

    .line 394
    const-string v1, "EDGE"

    aput-object v1, v0, v3

    goto :goto_0

    .line 395
    :cond_2
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 396
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 397
    const-string v1, "UMTS"

    aput-object v1, v0, v3

    goto :goto_0

    .line 398
    :cond_3
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 399
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 400
    const-string v1, "HSDPA"

    aput-object v1, v0, v3

    goto :goto_0

    .line 401
    :cond_4
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 402
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 403
    const-string v1, "HSUPA"

    aput-object v1, v0, v3

    goto :goto_0

    .line 404
    :cond_5
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 405
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 406
    const-string v1, "HSPA"

    aput-object v1, v0, v3

    goto :goto_0

    .line 407
    :cond_6
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_7

    .line 408
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 409
    const-string v1, "HSPA+"

    aput-object v1, v0, v3

    goto :goto_0

    .line 410
    :cond_7
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 411
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 412
    const-string v1, "CDMA"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 413
    :cond_8
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    .line 414
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 415
    const-string v1, "1xRTT"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 416
    :cond_9
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_a

    .line 417
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 418
    const-string v1, "eHRPD"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 419
    :cond_a
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 420
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 421
    const-string v1, "EVDO rev. 0"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 422
    :cond_b
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 423
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 424
    const-string v1, "EVDO rev. A"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 425
    :cond_c
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_d

    .line 426
    const-string v1, "3G"

    aput-object v1, v0, v4

    .line 427
    const-string v1, "EVDO rev. B"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 428
    :cond_d
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_e

    .line 429
    const-string v1, "2G"

    aput-object v1, v0, v4

    .line 430
    const-string v1, "iDen"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 431
    :cond_e
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_f

    .line 432
    const-string v1, "4G"

    aput-object v1, v0, v4

    .line 433
    const-string v1, "LTE"

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 434
    :cond_f
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, "n/a"

    aput-object v1, v0, v4

    .line 436
    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    goto/16 :goto_0
.end method

.method private saveData(Ljava/util/List;)V
    .locals 10
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
    .line 348
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v5, "s":Ljava/lang/StringBuilder;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 351
    .local v3, "location":Landroid/location/Location;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 352
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 353
    .local v0, "cd":Linfo/smapper/smapper/data/CellData;
    if-nez v2, :cond_0

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "operator_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getServiceProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    if-eqz v3, :cond_1

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "location_lat_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "location_lon_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cell_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRegistered_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalQuality_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalQuality()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalStrength_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getRelevantDataForLogging()Ljava/util/HashMap;

    move-result-object v4

    .line 371
    .local v4, "lowLevelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 372
    .local v1, "each":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "|"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 383
    .end local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .end local v1    # "each":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "lowLevelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "s":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 384
    :goto_3
    return-void

    .line 360
    .restart local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .restart local v2    # "i":I
    .restart local v3    # "location":Landroid/location/Location;
    .restart local v5    # "s":Ljava/lang/StringBuilder;
    :cond_1
    const-string v6, "location_lat_n/a||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v6, "location_lon_n/a||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 374
    .restart local v4    # "lowLevelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 377
    .end local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .end local v4    # "lowLevelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v6, p0, Linfo/smapper/smapper/logic/DataFetcher;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 378
    iget-object v6, p0, Linfo/smapper/smapper/logic/DataFetcher;->activity:Landroid/app/Activity;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "android.permission.READ_PHONE_STATE"

    aput-object v9, v7, v8

    iget-byte v8, p0, Linfo/smapper/smapper/logic/DataFetcher;->MY_READ_PHONE_STATE_ID:B

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_3

    .line 382
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Linfo/smapper/smapper/logic/IoHandler;->saveData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public static setCurrentSignalStrength(I)V
    .locals 0
    .param p0, "signalStrength"    # I

    .prologue
    .line 65
    sput p0, Linfo/smapper/smapper/logic/DataFetcher;->currentSignalStrength:I

    .line 66
    return-void
.end method


# virtual methods
.method public getAllCellData(Z)Ljava/util/List;
    .locals 14
    .param p1, "saveCollectedMeasurements"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v11, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v5

    .line 150
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v6, "listData":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 153
    const/4 v10, 0x0

    .line 154
    .local v10, "signalStrengthValue":I
    const/4 v8, 0x0

    .line 155
    .local v8, "signalQuality":I
    const/4 v4, 0x0

    .line 156
    .local v4, "isRegistered":Z
    new-instance v0, Linfo/smapper/smapper/data/CellData;

    invoke-direct {v0}, Linfo/smapper/smapper/data/CellData;-><init>()V

    .line 159
    .local v0, "cd":Linfo/smapper/smapper/data/CellData;
    :try_start_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 160
    .local v2, "cellInfo":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    .line 161
    .local v1, "cellIdentity":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->isRegistered()Z

    move-result v4

    .line 162
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v9

    .line 163
    .local v9, "signalStrength":Landroid/telephony/CellSignalStrengthGsm;
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v10

    .line 164
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v8

    .line 165
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCellId(I)V

    .line 166
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCountryCode(I)V

    .line 167
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setAreaCode(I)V

    .line 168
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkCode(I)V

    .line 169
    const-string v11, "2G"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkType(Ljava/lang/String;)V

    .line 170
    const-string v11, "GSM / GPRS / EDGE"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkSubType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .line 174
    .end local v1    # "cellIdentity":Landroid/telephony/CellIdentityGsm;
    .end local v2    # "cellInfo":Landroid/telephony/CellInfoGsm;
    .end local v9    # "signalStrength":Landroid/telephony/CellSignalStrengthGsm;
    :goto_1
    :try_start_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfoCdma;

    .line 175
    .local v2, "cellInfo":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    .line 176
    .local v1, "cellIdentity":Landroid/telephony/CellIdentityCdma;
    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->isRegistered()Z

    move-result v4

    .line 177
    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v9

    .line 178
    .local v9, "signalStrength":Landroid/telephony/CellSignalStrengthCdma;
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v10

    .line 179
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v8

    .line 180
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCellId(I)V

    .line 181
    new-instance v7, Landroid/location/Location;

    const-string v11, "DataFetcher"

    invoke-direct {v7, v11}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, "location":Landroid/location/Location;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v11

    int-to-double v12, v11

    invoke-virtual {v7, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    .line 183
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v11

    int-to-double v12, v11

    invoke-virtual {v7, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    .line 184
    invoke-virtual {v0, v7}, Linfo/smapper/smapper/data/CellData;->setCellLocation(Landroid/location/Location;)V

    .line 185
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkCode(I)V

    .line 186
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setAreaCode(I)V

    .line 187
    const-string v11, "2G"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkType(Ljava/lang/String;)V

    .line 188
    const-string v11, "CDMA"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkSubType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    .end local v1    # "cellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v2    # "cellInfo":Landroid/telephony/CellInfoCdma;
    .end local v7    # "location":Landroid/location/Location;
    .end local v9    # "signalStrength":Landroid/telephony/CellSignalStrengthCdma;
    :goto_2
    :try_start_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 193
    .local v2, "cellInfo":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    .line 194
    .local v1, "cellIdentity":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->isRegistered()Z

    move-result v4

    .line 195
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v9

    .line 196
    .local v9, "signalStrength":Landroid/telephony/CellSignalStrengthWcdma;
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v10

    .line 197
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v8

    .line 198
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCellId(I)V

    .line 199
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCountryCode(I)V

    .line 200
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setAreaCode(I)V

    .line 201
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkCode(I)V

    .line 202
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setUnitCode(I)V

    .line 203
    const-string v11, "3G"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkType(Ljava/lang/String;)V

    .line 204
    const-string v11, "WCDMA"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkSubType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    .end local v1    # "cellIdentity":Landroid/telephony/CellIdentityWcdma;
    .end local v2    # "cellInfo":Landroid/telephony/CellInfoWcdma;
    .end local v9    # "signalStrength":Landroid/telephony/CellSignalStrengthWcdma;
    :goto_3
    :try_start_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfoLte;

    .line 209
    .local v2, "cellInfo":Landroid/telephony/CellInfoLte;
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 210
    .local v1, "cellIdentity":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->isRegistered()Z

    move-result v4

    .line 211
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v9

    .line 212
    .local v9, "signalStrength":Landroid/telephony/CellSignalStrengthLte;
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v10

    .line 213
    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v8

    .line 214
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCellId(I)V

    .line 215
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setCountryCode(I)V

    .line 216
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setUnitCode(I)V

    .line 217
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkCode(I)V

    .line 218
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v11

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setAreaCode(I)V

    .line 219
    const-string v11, "4G"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkType(Ljava/lang/String;)V

    .line 220
    const-string v11, "LTE"

    invoke-virtual {v0, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkSubType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    .line 223
    .end local v1    # "cellIdentity":Landroid/telephony/CellIdentityLte;
    .end local v2    # "cellInfo":Landroid/telephony/CellInfoLte;
    .end local v9    # "signalStrength":Landroid/telephony/CellSignalStrengthLte;
    :goto_4
    invoke-virtual {v0, v4}, Linfo/smapper/smapper/data/CellData;->setIsRegistered(Z)V

    .line 224
    invoke-virtual {v0, v8}, Linfo/smapper/smapper/data/CellData;->setSignalQuality(I)V

    .line 225
    invoke-virtual {v0, v10}, Linfo/smapper/smapper/data/CellData;->setSignalStrength(I)V

    .line 226
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 229
    .end local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .end local v4    # "isRegistered":Z
    .end local v8    # "signalQuality":I
    .end local v10    # "signalStrengthValue":I
    :cond_0
    invoke-direct {p0, v6}, Linfo/smapper/smapper/logic/DataFetcher;->cleanupEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 230
    if-eqz p1, :cond_1

    .line 231
    invoke-direct {p0, v6}, Linfo/smapper/smapper/logic/DataFetcher;->saveData(Ljava/util/List;)V

    .line 233
    :cond_1
    return-object v6

    .line 221
    .restart local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .restart local v4    # "isRegistered":Z
    .restart local v8    # "signalQuality":I
    .restart local v10    # "signalStrengthValue":I
    :catch_0
    move-exception v11

    goto :goto_4

    .line 205
    :catch_1
    move-exception v11

    goto :goto_3

    .line 189
    :catch_2
    move-exception v11

    goto/16 :goto_2

    .line 171
    :catch_3
    move-exception v11

    goto/16 :goto_1
.end method

.method public getAllCellDataCompatible(Z)Ljava/util/List;
    .locals 17
    .param p1, "saveCollectedMeasurements"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v6

    .line 238
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v7, "listData":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Linfo/smapper/smapper/logic/DataFetcher;->getNetworkType(I)[Ljava/lang/String;

    move-result-object v14

    .line 242
    .local v14, "type":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "mcc_mnc":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move-object v8, v7

    .line 302
    .end local v7    # "listData":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    .local v8, "listData":Ljava/lang/Object;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    :goto_0
    return-object v8

    .line 248
    .end local v8    # "listData":Ljava/lang/Object;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    .restart local v7    # "listData":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 249
    .local v9, "mcc":I
    const/4 v15, 0x3

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 250
    .local v11, "mnc":I
    const/4 v12, 0x0

    .line 255
    .local v12, "signalQuality":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 256
    .local v3, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v4, Linfo/smapper/smapper/data/CellData;

    invoke-direct {v4}, Linfo/smapper/smapper/data/CellData;-><init>()V

    .line 257
    .local v4, "connectedCell":Linfo/smapper/smapper/data/CellData;
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setIsRegistered(Z)V

    .line 258
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v15

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setCellId(I)V

    .line 259
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v15

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setAreaCode(I)V

    .line 260
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v15

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setUnitCode(I)V

    .line 261
    invoke-virtual {v4, v12}, Linfo/smapper/smapper/data/CellData;->setSignalQuality(I)V

    .line 262
    sget v15, Linfo/smapper/smapper/logic/DataFetcher;->currentSignalStrength:I

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setSignalStrength(I)V

    .line 263
    invoke-virtual {v4, v9}, Linfo/smapper/smapper/data/CellData;->setCountryCode(I)V

    .line 264
    invoke-virtual {v4, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkCode(I)V

    .line 265
    const/4 v15, 0x0

    aget-object v15, v14, v15

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setNetworkType(Ljava/lang/String;)V

    .line 266
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-virtual {v4, v15}, Linfo/smapper/smapper/data/CellData;->setNetworkSubType(Ljava/lang/String;)V

    .line 268
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_1

    .line 272
    new-instance v1, Linfo/smapper/smapper/data/CellData;

    invoke-direct {v1}, Linfo/smapper/smapper/data/CellData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v1, "cd":Linfo/smapper/smapper/data/CellData;
    :try_start_1
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 276
    .local v2, "cellInfo":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v13, v15, -0x71

    .line 277
    .local v13, "signalStrengthValue":I
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v15

    invoke-virtual {v1, v15}, Linfo/smapper/smapper/data/CellData;->setCellId(I)V

    .line 278
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v15

    invoke-virtual {v1, v15}, Linfo/smapper/smapper/data/CellData;->setAreaCode(I)V

    .line 279
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v15

    invoke-virtual {v1, v15}, Linfo/smapper/smapper/data/CellData;->setUnitCode(I)V

    .line 280
    invoke-virtual {v1, v12}, Linfo/smapper/smapper/data/CellData;->setSignalQuality(I)V

    .line 281
    invoke-virtual {v1, v13}, Linfo/smapper/smapper/data/CellData;->setSignalStrength(I)V

    .line 282
    invoke-virtual {v1, v9}, Linfo/smapper/smapper/data/CellData;->setCountryCode(I)V

    .line 283
    invoke-virtual {v1, v11}, Linfo/smapper/smapper/data/CellData;->setNetworkCode(I)V

    .line 285
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Linfo/smapper/smapper/logic/DataFetcher;->getNetworkType(I)[Ljava/lang/String;

    move-result-object v14

    .line 286
    const/4 v15, 0x0

    aget-object v15, v14, v15

    invoke-virtual {v1, v15}, Linfo/smapper/smapper/data/CellData;->setNetworkType(Ljava/lang/String;)V

    .line 287
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-virtual {v1, v15}, Linfo/smapper/smapper/data/CellData;->setNetworkSubType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    .end local v2    # "cellInfo":Landroid/telephony/NeighboringCellInfo;
    .end local v13    # "signalStrengthValue":I
    :goto_2
    :try_start_2
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 294
    .end local v1    # "cd":Linfo/smapper/smapper/data/CellData;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Linfo/smapper/smapper/logic/DataFetcher;->cleanupEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 295
    if-eqz p1, :cond_2

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Linfo/smapper/smapper/logic/DataFetcher;->saveData(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v4    # "connectedCell":Linfo/smapper/smapper/data/CellData;
    .end local v5    # "i":I
    :cond_2
    :goto_3
    move-object v8, v7

    .line 302
    .restart local v8    # "listData":Ljava/lang/Object;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    goto/16 :goto_0

    .line 299
    .end local v8    # "listData":Ljava/lang/Object;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    :catch_0
    move-exception v15

    goto :goto_3

    .line 288
    .restart local v1    # "cd":Linfo/smapper/smapper/data/CellData;
    .restart local v3    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v4    # "connectedCell":Linfo/smapper/smapper/data/CellData;
    .restart local v5    # "i":I
    :catch_1
    move-exception v15

    goto :goto_2
.end method

.method public getCellData()Linfo/smapper/smapper/data/CellData;
    .locals 7

    .prologue
    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "registeredConnections":I
    const/4 v0, 0x0

    .line 131
    .local v0, "availableBaseStations":I
    new-instance v3, Linfo/smapper/smapper/data/CellData;

    invoke-direct {v3}, Linfo/smapper/smapper/data/CellData;-><init>()V

    .line 133
    .local v3, "registeredCell":Linfo/smapper/smapper/data/CellData;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Linfo/smapper/smapper/logic/DataFetcher;->getAllCellData(Z)Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/smapper/smapper/data/CellData;

    .line 135
    .local v2, "each":Linfo/smapper/smapper/data/CellData;
    add-int/lit8 v0, v0, 0x1

    .line 137
    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    move-object v3, v2

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "each":Linfo/smapper/smapper/data/CellData;
    :cond_1
    invoke-virtual {v3, v0}, Linfo/smapper/smapper/data/CellData;->setAvailableCells(I)V

    .line 144
    invoke-virtual {v3, v4}, Linfo/smapper/smapper/data/CellData;->setRegisteredCells(I)V

    .line 145
    return-object v3
.end method

.method public getCellDataCompatible()Linfo/smapper/smapper/data/CellData;
    .locals 7

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "registeredConnections":I
    const/4 v0, 0x0

    .line 111
    .local v0, "availableBaseStations":I
    new-instance v3, Linfo/smapper/smapper/data/CellData;

    invoke-direct {v3}, Linfo/smapper/smapper/data/CellData;-><init>()V

    .line 113
    .local v3, "registeredCell":Linfo/smapper/smapper/data/CellData;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Linfo/smapper/smapper/logic/DataFetcher;->getAllCellDataCompatible(Z)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/smapper/smapper/data/CellData;

    .line 115
    .local v2, "each":Linfo/smapper/smapper/data/CellData;
    add-int/lit8 v0, v0, 0x1

    .line 117
    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    move-object v3, v2

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "each":Linfo/smapper/smapper/data/CellData;
    :cond_1
    invoke-virtual {v3, v0}, Linfo/smapper/smapper/data/CellData;->setAvailableCells(I)V

    .line 124
    invoke-virtual {v3, v4}, Linfo/smapper/smapper/data/CellData;->setRegisteredCells(I)V

    .line 125
    return-object v3
.end method

.method public getCurrentNetworkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 105
    .local v0, "networkType":I
    invoke-direct {p0, v0}, Linfo/smapper/smapper/logic/DataFetcher;->getNetworkType(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    .local v0, "cPhoneType":Ljava/lang/String;
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 83
    const-string v0, "GSM"

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 85
    const-string v0, "CDMA"

    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_3

    .line 87
    const-string v0, "NONE"

    goto :goto_0

    .line 88
    :cond_3
    iget-object v1, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 89
    const-string v0, "SIP"

    goto :goto_0
.end method

.method public getPublishedSimNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isModemAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_0
    iget-object v2, p0, Linfo/smapper/smapper/logic/DataFetcher;->tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 76
    :goto_0
    return v1

    .line 73
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method
