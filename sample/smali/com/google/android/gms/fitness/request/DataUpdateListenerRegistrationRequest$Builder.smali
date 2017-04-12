.class public Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private zzavT:Lcom/google/android/gms/fitness/data/DataType;

.field private zzavU:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Set either dataSource or dataTYpe"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v1, "pendingIntent must be set"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$1;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
    .locals 0
    .param p1, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
    .locals 0
    .param p1, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
