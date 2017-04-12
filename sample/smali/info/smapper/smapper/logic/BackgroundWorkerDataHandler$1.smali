.class final Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler$1;
.super Ljava/lang/Object;
.source "BackgroundWorkerDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->access$000()Linfo/smapper/smapper/logic/DataFetcher;

    move-result-object v0

    invoke-virtual {v0}, Linfo/smapper/smapper/logic/DataFetcher;->isModemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    # invokes: Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateStatisticsFragment()V
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->access$100()V

    .line 55
    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->useCompatibleMode:Z
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->access$200()Z

    move-result v0

    # invokes: Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateNetworksFragment(Z)V
    invoke-static {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->access$300(Z)V

    .line 57
    :cond_0
    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->handler:Landroid/os/Handler;
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->access$500()Landroid/os/Handler;

    move-result-object v0

    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateInterval:I
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->access$400()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
