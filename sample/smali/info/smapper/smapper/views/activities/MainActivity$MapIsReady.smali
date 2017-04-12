.class Linfo/smapper/smapper/views/activities/MainActivity$MapIsReady;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/smapper/smapper/views/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapIsReady"
.end annotation


# instance fields
.field final synthetic this$0:Linfo/smapper/smapper/views/activities/MainActivity;


# direct methods
.method private constructor <init>(Linfo/smapper/smapper/views/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Linfo/smapper/smapper/views/activities/MainActivity$MapIsReady;->this$0:Linfo/smapper/smapper/views/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 248
    return-void
.end method
