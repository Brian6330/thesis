.class final Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker$1;
.super Ljava/lang/Object;
.source "BackgroundWorkerMapMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->getCurrentData()Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "cells":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    if-eqz v0, :cond_0

    .line 40
    # invokes: Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->removeMarkers()V
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->access$000()V

    .line 41
    # invokes: Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->setMarkers(Ljava/util/List;)V
    invoke-static {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->access$100(Ljava/util/List;)V

    .line 44
    :cond_0
    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->handler:Landroid/os/Handler;
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->access$300()Landroid/os/Handler;

    move-result-object v1

    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->updateInterval:I
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->access$200()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method
