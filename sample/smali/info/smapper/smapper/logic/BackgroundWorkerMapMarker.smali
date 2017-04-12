.class public Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;
.super Ljava/lang/Object;
.source "BackgroundWorkerMapMarker.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static duplicateMarkerOffset:D

.field private static handler:Landroid/os/Handler;

.field private static runnable:Ljava/lang/Runnable;

.field private static updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/16 v0, 0x2710

    sput v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->updateInterval:I

    .line 32
    const-wide v0, 0x3f40624de0000000L    # 5.000000237487257E-4

    sput-wide v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->duplicateMarkerOffset:D

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->handler:Landroid/os/Handler;

    .line 34
    new-instance v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker$1;

    invoke-direct {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker$1;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->removeMarkers()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-static {p0}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->setMarkers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 27
    sget v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->updateInterval:I

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static initWorker(Landroid/app/Activity;)V
    .locals 6
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 49
    sput-object p0, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->activity:Landroid/app/Activity;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 51
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 52
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->handler:Landroid/os/Handler;

    sget-object v2, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->handler:Landroid/os/Handler;

    sget-object v2, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->runnable:Ljava/lang/Runnable;

    sget v3, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->updateInterval:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method

.method private static removeMarkers()V
    .locals 1

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static removeUntaggedCells(Ljava/util/List;)Ljava/util/List;
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
    .local p0, "cds":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    const-wide/16 v6, 0x0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v1, "cellsToRemove":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 224
    .local v0, "cd":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v2

    .line 227
    .local v2, "l":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 228
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .end local v2    # "l":Landroid/location/Location;
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 233
    return-object p0
.end method

.method private static setMarkers(Ljava/util/List;)V
    .locals 46
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
    .line 65
    .local p0, "cds":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    const/16 v37, -0x3e7

    .line 66
    .local v37, "signalActiveCell":I
    const/16 v7, -0x3e7

    .line 68
    .local v7, "bestSignalInactiveCell":I
    invoke-static/range {p0 .. p0}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->removeUntaggedCells(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 70
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v26

    .line 73
    .local v26, "map":Lcom/google/android/gms/maps/GoogleMap;
    :try_start_0
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 75
    .local v9, "currentLocation":Landroid/location/Location;
    sget-object v38, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->activity:Landroid/app/Activity;

    invoke-virtual/range {v38 .. v38}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 78
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_0
    :goto_0
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_2

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/smapper/smapper/data/CellData;

    .line 79
    .local v8, "c":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v39

    if-eqz v39, :cond_1

    .line 80
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getSignalStrength()I

    move-result v37

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getSignalStrength()I

    move-result v39

    move/from16 v0, v39

    if-le v0, v7, :cond_0

    .line 83
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getSignalStrength()I

    move-result v7

    goto :goto_0

    .line 88
    .end local v8    # "c":Linfo/smapper/smapper/data/CellData;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v6, "alreadyUsedLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_7

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/smapper/smapper/data/CellData;

    .line 91
    .restart local v8    # "c":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v22

    .line 93
    .local v22, "l":Landroid/location/Location;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_3
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_4

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/location/Location;

    .line 94
    .local v19, "each":Landroid/location/Location;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v40

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Double;->compare(DD)I

    move-result v40

    if-nez v40, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v40

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Double;->compare(DD)I

    move-result v40

    if-nez v40, :cond_3

    .line 95
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v40

    sget-wide v42, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->duplicateMarkerOffset:D

    add-double v40, v40, v42

    move-object/from16 v0, v22

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 215
    .end local v6    # "alreadyUsedLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .end local v8    # "c":Linfo/smapper/smapper/data/CellData;
    .end local v9    # "currentLocation":Landroid/location/Location;
    .end local v19    # "each":Landroid/location/Location;
    .end local v22    # "l":Landroid/location/Location;
    :catch_0
    move-exception v18

    .line 216
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v18    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 99
    .restart local v6    # "alreadyUsedLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .restart local v8    # "c":Linfo/smapper/smapper/data/CellData;
    .restart local v9    # "currentLocation":Landroid/location/Location;
    .restart local v22    # "l":Landroid/location/Location;
    :cond_4
    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v39

    if-eqz v39, :cond_5

    .line 102
    const-string v39, "marker_black.png"

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v27

    .line 103
    .local v27, "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    new-instance v39, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v39 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v40, Lcom/google/android/gms/maps/model/LatLng;

    .line 104
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v42

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v44

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getAreaCode()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " / "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellId()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ": "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " | "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v39

    .line 107
    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v28

    .line 109
    .local v28, "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 111
    new-instance v39, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct/range {v39 .. v39}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v40, Lcom/google/android/gms/maps/model/LatLng;

    .line 112
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v42

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v44

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    .line 113
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v40

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    const/16 v40, 0x1e

    const/16 v41, 0x0

    const/16 v42, 0xff

    const/16 v43, 0x0

    .line 114
    invoke-static/range {v40 .. v43}, Landroid/graphics/Color;->argb(IIII)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    const/16 v40, 0x1e

    const/16 v41, 0x0

    const/16 v42, 0xff

    const/16 v43, 0x0

    .line 115
    invoke-static/range {v40 .. v43}, Landroid/graphics/Color;->argb(IIII)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    .line 111
    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    goto/16 :goto_1

    .line 119
    .end local v27    # "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v28    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_5
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getSignalStrength()I

    move-result v39

    move/from16 v0, v39

    if-ne v0, v7, :cond_6

    move/from16 v0, v37

    if-le v7, v0, :cond_6

    .line 120
    const-string v39, "marker_green.png"

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v27

    .line 125
    .restart local v27    # "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_4
    new-instance v39, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v39 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v40, Lcom/google/android/gms/maps/model/LatLng;

    .line 126
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v42

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v44

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getAreaCode()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " / "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellId()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ": "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getNetworkSubType()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " | "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v39

    .line 129
    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v28

    .line 131
    .restart local v28    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 133
    new-instance v39, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct/range {v39 .. v39}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v40, Lcom/google/android/gms/maps/model/LatLng;

    .line 134
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v42

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v44

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    .line 135
    invoke-virtual {v8}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v40

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    const/16 v40, 0x1e

    const/16 v41, 0xff

    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 136
    invoke-static/range {v40 .. v43}, Landroid/graphics/Color;->argb(IIII)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    const/16 v40, 0x1e

    const/16 v41, 0xff

    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 137
    invoke-static/range {v40 .. v43}, Landroid/graphics/Color;->argb(IIII)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v39

    .line 133
    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    goto/16 :goto_1

    .line 122
    .end local v27    # "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v28    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_6
    const-string v39, "marker_white.png"

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v27

    .restart local v27    # "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto/16 :goto_4

    .line 142
    .end local v8    # "c":Linfo/smapper/smapper/data/CellData;
    .end local v22    # "l":Landroid/location/Location;
    .end local v27    # "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_7
    const-string v38, "marker_simulation_location_estimate.png"

    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v27

    .line 144
    .restart local v27    # "mapMarkerIcon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_a

    .line 145
    new-instance v36, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;-><init>(Ljava/util/List;)V

    .line 146
    .local v36, "ppc":Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;
    invoke-virtual/range {v36 .. v36}, Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;->calculateEstimatedPosition()[D

    move-result-object v20

    .line 148
    .local v20, "estPos":[D
    new-instance v25, Landroid/location/Location;

    const-string v38, "BackgroundWorkerMapMarker"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 151
    .local v25, "location_simulated":Landroid/location/Location;
    const-wide/16 v16, 0x0

    .line 152
    .local v16, "distance_simulated":D
    if-eqz v20, :cond_8

    .line 153
    const/16 v38, 0x0

    aget-wide v38, v20, v38

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 154
    const/16 v38, 0x1

    aget-wide v38, v20, v38

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 156
    new-instance v13, Linfo/smapper/smapper/algorithms/DistanceCalculator;

    move-object/from16 v0, v25

    invoke-direct {v13, v0, v9}, Linfo/smapper/smapper/algorithms/DistanceCalculator;-><init>(Landroid/location/Location;Landroid/location/Location;)V

    .line 157
    .local v13, "dc_simulated":Linfo/smapper/smapper/algorithms/DistanceCalculator;
    invoke-virtual {v13}, Linfo/smapper/smapper/algorithms/DistanceCalculator;->distance()D

    move-result-wide v16

    .line 159
    new-instance v38, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v38 .. v38}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v39, Lcom/google/android/gms/maps/model/LatLng;

    const/16 v40, 0x0

    aget-wide v40, v20, v40

    const/16 v42, 0x1

    aget-wide v42, v20, v42

    invoke-direct/range {v39 .. v43}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 160
    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    const-string v39, "Estimated Location (simulated)"

    .line 161
    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Distance to GPS Position "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "m, based on "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 162
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " cells."

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    .line 163
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v31

    .line 165
    .local v31, "marker_simulated":Lcom/google/android/gms/maps/model/MarkerOptions;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 168
    .end local v13    # "dc_simulated":Linfo/smapper/smapper/algorithms/DistanceCalculator;
    .end local v31    # "marker_simulated":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_8
    const-string v38, "marker_leastsquares_location_estimate.png"

    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v27

    .line 170
    new-instance v32, Linfo/smapper/smapper/algorithms/PositionCalculator;

    const/16 v38, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Linfo/smapper/smapper/algorithms/PositionCalculator;-><init>(Ljava/util/List;Z)V

    .line 171
    .local v32, "pc":Linfo/smapper/smapper/algorithms/PositionCalculator;
    invoke-virtual/range {v32 .. v32}, Linfo/smapper/smapper/algorithms/PositionCalculator;->calculatePositions()[D

    move-result-object v34

    .line 173
    .local v34, "pcPos":[D
    new-instance v24, Landroid/location/Location;

    const-string v38, "BackgroundWorkerMapMarker"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 174
    .local v24, "location_leastsquares":Landroid/location/Location;
    const/16 v38, 0x0

    aget-wide v38, v34, v38

    move-object/from16 v0, v24

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 175
    const/16 v38, 0x1

    aget-wide v38, v34, v38

    move-object/from16 v0, v24

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 176
    new-instance v12, Linfo/smapper/smapper/algorithms/DistanceCalculator;

    move-object/from16 v0, v24

    invoke-direct {v12, v0, v9}, Linfo/smapper/smapper/algorithms/DistanceCalculator;-><init>(Landroid/location/Location;Landroid/location/Location;)V

    .line 177
    .local v12, "dc_leastsquares":Linfo/smapper/smapper/algorithms/DistanceCalculator;
    invoke-virtual {v12}, Linfo/smapper/smapper/algorithms/DistanceCalculator;->distanceBeautified()Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "distance_leastsquares":Ljava/lang/String;
    new-instance v38, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v38 .. v38}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v39, Lcom/google/android/gms/maps/model/LatLng;

    const/16 v40, 0x0

    aget-wide v40, v34, v40

    const/16 v42, 0x1

    aget-wide v42, v34, v42

    invoke-direct/range {v39 .. v43}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 180
    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    const-string v39, "Estimated Location (least-squares)"

    .line 181
    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Distance to GPS Position "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", based on "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 182
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " cells."

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    .line 183
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v30

    .line 185
    .local v30, "marker_leastsquares":Lcom/google/android/gms/maps/model/MarkerOptions;
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 187
    const-string v38, "marker_heuristic_location_estimate.png"

    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v27

    .line 189
    new-instance v33, Linfo/smapper/smapper/algorithms/PositionCalculator;

    const/16 v38, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Linfo/smapper/smapper/algorithms/PositionCalculator;-><init>(Ljava/util/List;Z)V

    .line 190
    .local v33, "pcH":Linfo/smapper/smapper/algorithms/PositionCalculator;
    invoke-virtual/range {v33 .. v33}, Linfo/smapper/smapper/algorithms/PositionCalculator;->calculatePositions()[D

    move-result-object v35

    .line 192
    .local v35, "pcPosH":[D
    new-instance v23, Landroid/location/Location;

    const-string v38, "BackgroundWorkerMapMarker"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 193
    .local v23, "location_heuristic":Landroid/location/Location;
    const/16 v38, 0x0

    aget-wide v38, v35, v38

    move-object/from16 v0, v23

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 194
    const/16 v38, 0x1

    aget-wide v38, v35, v38

    move-object/from16 v0, v23

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 195
    new-instance v11, Linfo/smapper/smapper/algorithms/DistanceCalculator;

    move-object/from16 v0, v23

    invoke-direct {v11, v0, v9}, Linfo/smapper/smapper/algorithms/DistanceCalculator;-><init>(Landroid/location/Location;Landroid/location/Location;)V

    .line 196
    .local v11, "dc_heuristic":Linfo/smapper/smapper/algorithms/DistanceCalculator;
    invoke-virtual {v11}, Linfo/smapper/smapper/algorithms/DistanceCalculator;->distanceBeautified()Ljava/lang/String;

    move-result-object v14

    .line 198
    .local v14, "distance_heuristic":Ljava/lang/String;
    new-instance v38, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v38 .. v38}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v39, Lcom/google/android/gms/maps/model/LatLng;

    const/16 v40, 0x0

    aget-wide v40, v35, v40

    const/16 v42, 0x1

    aget-wide v42, v35, v42

    invoke-direct/range {v39 .. v43}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 199
    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    const-string v39, "Estimated Location (heuristic)"

    .line 200
    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Distance to GPS Position "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", based on "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 201
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " cells."

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v38

    .line 202
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v29

    .line 204
    .local v29, "marker_heuristic":Lcom/google/android/gms/maps/model/MarkerOptions;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 206
    const-string v10, ""

    .line 207
    .local v10, "data":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v21

    move/from16 v1, v38

    if-ge v0, v1, :cond_9

    .line 208
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "cellRange_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ":"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Linfo/smapper/smapper/data/CellData;

    invoke-virtual/range {v38 .. v38}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v38

    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "|"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 207
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 211
    :cond_9
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ls_d:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "|p_d:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "|h_d:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "|cellCount:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->getDeviceId()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Linfo/smapper/smapper/logic/IoHandler;->saveData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 213
    .end local v10    # "data":Ljava/lang/String;
    .end local v11    # "dc_heuristic":Linfo/smapper/smapper/algorithms/DistanceCalculator;
    .end local v12    # "dc_leastsquares":Linfo/smapper/smapper/algorithms/DistanceCalculator;
    .end local v14    # "distance_heuristic":Ljava/lang/String;
    .end local v15    # "distance_leastsquares":Ljava/lang/String;
    .end local v16    # "distance_simulated":D
    .end local v20    # "estPos":[D
    .end local v21    # "i":I
    .end local v23    # "location_heuristic":Landroid/location/Location;
    .end local v24    # "location_leastsquares":Landroid/location/Location;
    .end local v25    # "location_simulated":Landroid/location/Location;
    .end local v29    # "marker_heuristic":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v30    # "marker_leastsquares":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v32    # "pc":Linfo/smapper/smapper/algorithms/PositionCalculator;
    .end local v33    # "pcH":Linfo/smapper/smapper/algorithms/PositionCalculator;
    .end local v34    # "pcPos":[D
    .end local v35    # "pcPosH":[D
    .end local v36    # "ppc":Linfo/smapper/smapper/algorithms/SimulatedPositionCalculator;
    :cond_a
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "The trilateral approximation needs at least two cell towers, but only "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " are around you."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
