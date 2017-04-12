.class public Linfo/smapper/smapper/data/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private compatibleModeStatus:Z

.field private mapType:I

.field private updateInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x3e8

    iput v0, p0, Linfo/smapper/smapper/data/Configuration;->updateInterval:I

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/smapper/smapper/data/Configuration;->compatibleModeStatus:Z

    .line 12
    const/4 v0, 0x4

    iput v0, p0, Linfo/smapper/smapper/data/Configuration;->mapType:I

    .line 13
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "compatibleModeStatus"    # Z
    .param p2, "updateInterval"    # I
    .param p3, "mapType"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Linfo/smapper/smapper/data/Configuration;->compatibleModeStatus:Z

    .line 17
    iput p2, p0, Linfo/smapper/smapper/data/Configuration;->updateInterval:I

    .line 18
    iput p3, p0, Linfo/smapper/smapper/data/Configuration;->mapType:I

    .line 19
    return-void
.end method


# virtual methods
.method public getCompatibleModeStatus()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Linfo/smapper/smapper/data/Configuration;->compatibleModeStatus:Z

    return v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Linfo/smapper/smapper/data/Configuration;->mapType:I

    return v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Linfo/smapper/smapper/data/Configuration;->updateInterval:I

    return v0
.end method

.method public setCompatibleModeStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Linfo/smapper/smapper/data/Configuration;->compatibleModeStatus:Z

    .line 35
    return-void
.end method

.method public setMapType(I)V
    .locals 0
    .param p1, "mapType"    # I

    .prologue
    .line 38
    iput p1, p0, Linfo/smapper/smapper/data/Configuration;->mapType:I

    .line 39
    return-void
.end method

.method public setUpdateInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 30
    iput p1, p0, Linfo/smapper/smapper/data/Configuration;->updateInterval:I

    .line 31
    return-void
.end method
