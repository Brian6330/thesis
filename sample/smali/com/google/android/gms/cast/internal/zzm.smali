.class public Lcom/google/android/gms/cast/internal/zzm;
.super Lcom/google/android/gms/cast/internal/zzc;


# static fields
.field private static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final zzacA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private zzaei:J

.field private zzaej:Lcom/google/android/gms/cast/MediaStatus;

.field private final zzaek:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzael:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaem:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaen:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaeo:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaep:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaeq:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaer:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaes:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaet:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaeu:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaev:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaew:Lcom/google/android/gms/cast/internal/zzp;

.field private final zzaex:Lcom/google/android/gms/cast/internal/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzf;->zzci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/internal/zzm;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-wide/32 v6, 0x5265c00

    sget-object v1, Lcom/google/android/gms/cast/internal/zzm;->NAMESPACE:Ljava/lang/String;

    const-string v2, "MediaControlChannel"

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/internal/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzael:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaem:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaen:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeo:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaep:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeq:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaer:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaes:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaet:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeu:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaev:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaew:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaex:Lcom/google/android/gms/cast/internal/zzp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzael:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaem:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaen:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeo:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaep:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeq:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaer:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaes:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaet:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeu:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaev:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaew:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaex:Lcom/google/android/gms/cast/internal/zzp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzoy()V

    return-void
.end method

.method private zza(JLorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/zzp;->zzB(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeo:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzp;->zzoA()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeo:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/zzp;->zzB(J)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaep:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzp;->zzoA()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaep:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/cast/internal/zzp;->zzB(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeq:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzp;->zzoA()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeq:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/cast/internal/zzp;->zzB(J)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_1
    :goto_1
    if-eqz v0, :cond_d

    const/4 v0, 0x2

    :goto_2
    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v1, :cond_b

    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaei:J

    const/16 v0, 0x1f

    :goto_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaei:J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onStatusUpdated()V

    :cond_4
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaei:J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onStatusUpdated()V

    :cond_5
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onMetadataUpdated()V

    :cond_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onQueueStatusUpdated()V

    :cond_7
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onPreloadStatusUpdated()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JI)Z

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_3

    :cond_c
    return-void

    :cond_d
    move v0, v2

    goto :goto_2
.end method

.method private zzoy()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaei:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzp;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getApproximateStreamPosition()J
    .locals 12

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaei:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v10, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_2
    move-wide v2, v4

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaei:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_7

    move-wide v6, v2

    :goto_1
    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    move-wide v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    long-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v0, v2

    if-lez v6, :cond_5

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    :goto_2
    move-wide v2, v0

    goto :goto_0

    :cond_5
    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    move-wide v0, v2

    goto :goto_2

    :cond_6
    move-wide v0, v4

    goto :goto_2

    :cond_7
    move-wide v6, v0

    goto :goto_1
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public getStreamDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onMetadataUpdated()V
    .locals 0

    return-void
.end method

.method protected onPreloadStatusUpdated()V
    .locals 0

    return-void
.end method

.method protected onQueueStatusUpdated()V
    .locals 0

    return-void
.end method

.method protected onStatusUpdated()V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaer:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "GET_STATUS"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v1, :cond_0

    const-string v1, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;DLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaep:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    invoke-virtual {v1, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_2

    const-string v1, "customData"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playPosition cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaev:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_UPDATE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string v0, "currentItemId"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    const-string v0, "jump"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p5, :cond_4

    array-length v0, p5

    if-lez v0, :cond_4

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p5

    if-ge v0, v5, :cond_3

    aget-object v5, p5, v0

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "items"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-eqz v0, :cond_6

    const-string v0, "currentTime"

    invoke-static {p3, p4}, Lcom/google/android/gms/cast/internal/zzf;->zzA(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    if-eqz p8, :cond_7

    const-string v0, "customData"

    invoke-virtual {v1, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :pswitch_0
    :try_start_1
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_OFF"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :pswitch_1
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_ALL"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_SINGLE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_3
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;JILorg/json/JSONObject;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeo:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentTime"

    invoke-static {p2, p3}, Lcom/google/android/gms/cast/internal/zzf;->zzA(J)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, v6, :cond_2

    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_START"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    const-string v1, "customData"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    :try_start_1
    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "LOAD"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "autoplay"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "currentTime"

    invoke-static {p4, p5}, Lcom/google/android/gms/cast/internal/zzf;->zzA(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p6

    if-ge v0, v5, :cond_0

    aget-wide v6, p6, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p7, :cond_2

    const-string v0, "customData"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaet:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzael:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;ZLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeq:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;[IILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemIdsToReorder must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaex:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_REORDER"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    aget v5, p2, v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "insertBefore"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p4, :cond_4

    const-string v0, "customData"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;[ILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemIdsToRemove must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaew:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_REMOVE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    aget v5, p2, v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "customData"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;[J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaes:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_0

    aget-wide v6, p2, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemsToInsert must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not set both currentItemId and currentItemIndexInItemsToInsert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-ltz p5, :cond_3

    array-length v0, p2

    if-lt p5, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaeu:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_INSERT"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_6

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "items"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_7

    const-string v0, "insertBefore"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    if-eqz p4, :cond_8

    const-string v0, "currentItemId"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    const/4 v0, -0x1

    if-eq p5, v0, :cond_9

    const-string v0, "currentItemIndex"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9
    const-wide/16 v4, -0x1

    cmp-long v0, p6, v4

    if-eqz v0, :cond_a

    const-string v0, "currentTime"

    invoke-static {p6, p7}, Lcom/google/android/gms/cast/internal/zzf;->zzA(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_a
    if-eqz p8, :cond_b

    const-string v0, "customData"

    invoke-virtual {v1, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/cast/internal/zzo;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items must not be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ltz p3, :cond_2

    array-length v2, p2

    if-lt p3, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid startIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    cmp-long v2, p5, v8

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playPosition can not be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v2, "requestId"

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v6, "QUEUE_LOAD"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_5

    aget-object v7, p2, v2

    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "items"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p4, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid repeat mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    :cond_6
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v4

    :pswitch_0
    :try_start_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_OFF"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string v2, "startIndex"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long v2, p5, v8

    if-eqz v2, :cond_7

    const-string v2, "currentTime"

    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/cast/internal/zzf;->zzA(J)D

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p7, :cond_6

    const-string v2, "customData"

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_2
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_SINGLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_3
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zzb(Lcom/google/android/gms/cast/internal/zzo;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaen:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "STOP"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zzb(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JI)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/cast/internal/zzo;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzog()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaem:Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzm;->zzW(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PLAY"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->zznO()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zzcf(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzadu:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "message received: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "MEDIA_STATUS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/cast/internal/zzm;->zza(JLorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onStatusUpdated()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onMetadataUpdated()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onQueueStatusUpdated()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzm;->onPreloadStatusUpdated()V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaer:Lcom/google/android/gms/cast/internal/zzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JI)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzadu:Lcom/google/android/gms/cast/internal/zzl;

    const-string v2, "Message is malformed (%s); ignoring: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "INVALID_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzadu:Lcom/google/android/gms/cast/internal/zzl;

    const-string v4, "received unexpected error: Invalid Player State."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JILjava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v4, "LOAD_FAILED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    const/16 v4, 0x834

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v4, "LOAD_CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaek:Lcom/google/android/gms/cast/internal/zzp;

    const/16 v4, 0x835

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v4, "INVALID_REQUEST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzm;->zzadu:Lcom/google/android/gms/cast/internal/zzl;

    const-string v4, "received unexpected error: Invalid Request."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public zznO()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current media session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzaej:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zznO()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzof()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzof()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzm;->zzoy()V

    return-void
.end method

.method protected zzz(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    const/16 v2, 0x836

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/cast/internal/zzp;->zzd(JI)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/cast/internal/zzp;->zzaeB:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zzacA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzp;->zzoA()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
