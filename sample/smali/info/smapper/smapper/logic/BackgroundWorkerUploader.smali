.class public Linfo/smapper/smapper/logic/BackgroundWorkerUploader;
.super Ljava/lang/Object;
.source "BackgroundWorkerUploader.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static handler:Landroid/os/Handler;

.field private static remoteSite:Ljava/lang/String;

.field private static runnable:Ljava/lang/Runnable;

.field private static updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x2710

    sput v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->updateInterval:I

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->handler:Landroid/os/Handler;

    .line 28
    const-string v0, "http://pagabo.dyndns.org:3001/api/signal"

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->remoteSite:Ljava/lang/String;

    .line 30
    new-instance v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader$1;

    invoke-direct {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader$1;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->uploadData()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 23
    sget v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->updateInterval:I

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->remoteSite:Ljava/lang/String;

    return-object v0
.end method

.method public static initWorker(Landroid/app/Activity;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 39
    sput-object p0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->activity:Landroid/app/Activity;

    .line 40
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->handler:Landroid/os/Handler;

    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->handler:Landroid/os/Handler;

    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->runnable:Ljava/lang/Runnable;

    sget v2, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->updateInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void
.end method

.method private static uploadData()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Linfo/smapper/smapper/logic/BackgroundWorkerUploader$2;

    invoke-direct {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader$2;-><init>()V

    .line 103
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method
