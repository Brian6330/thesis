.class final Lcom/google/android/gms/games/internal/GamesClientImpl$StartRecordingBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartRecordingBinderCallback"
.end annotation


# instance fields
.field private final zzaFt:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "holder":Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;, "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl<Lcom/google/android/gms/common/api/Status;>;"
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$StartRecordingBinderCallback;->zzaFt:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    return-void
.end method


# virtual methods
.method public zzgq(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$StartRecordingBinderCallback;->zzaFt:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
