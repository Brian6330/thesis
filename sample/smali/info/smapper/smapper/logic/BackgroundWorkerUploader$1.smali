.class final Linfo/smapper/smapper/logic/BackgroundWorkerUploader$1;
.super Ljava/lang/Object;
.source "BackgroundWorkerUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/smapper/smapper/logic/BackgroundWorkerUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    # invokes: Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->uploadData()V
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->access$000()V

    .line 34
    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->handler:Landroid/os/Handler;
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->access$200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->updateInterval:I
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->access$100()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
