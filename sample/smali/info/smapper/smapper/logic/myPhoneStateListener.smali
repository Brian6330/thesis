.class Linfo/smapper/smapper/logic/myPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DataFetcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 45
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x71

    .line 46
    .local v0, "signalStrength":I
    invoke-static {v0}, Linfo/smapper/smapper/logic/DataFetcher;->setCurrentSignalStrength(I)V

    .line 47
    return-void
.end method
