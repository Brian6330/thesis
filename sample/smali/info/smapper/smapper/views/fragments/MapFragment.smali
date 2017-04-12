.class public Linfo/smapper/smapper/views/fragments/MapFragment;
.super Landroid/support/v4/app/Fragment;
.source "MapFragment.java"


# static fields
.field static final MY_LOCATION_FINE_PERMISSION_ID:B = 0x2bt

.field private static location:Landroid/location/Location;

.field private static map:Lcom/google/android/gms/maps/GoogleMap;

.field private static mapType:I

.field private static rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 26
    sput-object p0, Linfo/smapper/smapper/views/fragments/MapFragment;->location:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public static getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public static getMapType()I
    .locals 1

    .prologue
    .line 101
    sget v0, Linfo/smapper/smapper/views/fragments/MapFragment;->mapType:I

    return v0
.end method

.method private initializeLocationUpdates()V
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 67
    :try_start_0
    sget-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 69
    new-instance v5, Linfo/smapper/smapper/views/fragments/MapFragment$1;

    invoke-direct {v5, p0}, Linfo/smapper/smapper/views/fragments/MapFragment$1;-><init>(Linfo/smapper/smapper/views/fragments/MapFragment;)V

    .line 84
    .local v5, "myLocationListener":Landroid/location/LocationListener;
    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 85
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v5    # "myLocationListener":Landroid/location/LocationListener;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v6

    .line 87
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setMapType(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 93
    sput p0, Linfo/smapper/smapper/views/fragments/MapFragment;->mapType:I

    .line 95
    sget-object v0, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0d00cb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    sget-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->rootView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    const v1, 0x7f04002a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->rootView:Landroid/view/View;

    .line 37
    sget-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 41
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00cb

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    sput-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 43
    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    invoke-virtual {p0, v1, v2}, Linfo/smapper/smapper/views/fragments/MapFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 49
    :goto_0
    sget-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    sget v2, Linfo/smapper/smapper/views/fragments/MapFragment;->mapType:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    sget-object v1, Linfo/smapper/smapper/views/fragments/MapFragment;->rootView:Landroid/view/View;

    return-object v1

    .line 46
    :cond_2
    :try_start_1
    invoke-direct {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->initializeLocationUpdates()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 60
    invoke-direct {p0}, Linfo/smapper/smapper/views/fragments/MapFragment;->initializeLocationUpdates()V

    .line 61
    return-void
.end method
