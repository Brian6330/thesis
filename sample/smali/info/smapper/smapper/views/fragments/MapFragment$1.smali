.class Linfo/smapper/smapper/views/fragments/MapFragment$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/smapper/smapper/views/fragments/MapFragment;->initializeLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/smapper/smapper/views/fragments/MapFragment;


# direct methods
.method constructor <init>(Linfo/smapper/smapper/views/fragments/MapFragment;)V
    .locals 0
    .param p1, "this$0"    # Linfo/smapper/smapper/views/fragments/MapFragment;

    .prologue
    .line 69
    iput-object p1, p0, Linfo/smapper/smapper/views/fragments/MapFragment$1;->this$0:Linfo/smapper/smapper/views/fragments/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v6, 0x0

    .line 71
    # setter for: Linfo/smapper/smapper/views/fragments/MapFragment;->location:Landroid/location/Location;
    invoke-static {p1}, Linfo/smapper/smapper/views/fragments/MapFragment;->access$002(Landroid/location/Location;)Landroid/location/Location;

    .line 72
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 73
    .local v1, "currentPosition":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v2, v1, v3, v6, v6}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 75
    .local v0, "cUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    :try_start_0
    # getter for: Linfo/smapper/smapper/views/fragments/MapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->access$100()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method
