.class Lcom/google/android/gms/ads/internal/zzk$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzk$zzb;->zzbr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzqj:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic zzqk:Lcom/google/android/gms/ads/internal/zzk$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzk$zzb;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb$1;->zzqk:Lcom/google/android/gms/ads/internal/zzk$zzb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk$zzb$1;->zzqj:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbA()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk$zzb$1;->zzqk:Lcom/google/android/gms/ads/internal/zzk$zzb;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk$zzb;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk$zzb$1;->zzqj:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
