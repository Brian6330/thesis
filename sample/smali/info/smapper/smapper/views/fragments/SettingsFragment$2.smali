.class Linfo/smapper/smapper/views/fragments/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/smapper/smapper/views/fragments/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/smapper/smapper/views/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Linfo/smapper/smapper/views/fragments/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Linfo/smapper/smapper/views/fragments/SettingsFragment;

    .prologue
    .line 50
    iput-object p1, p0, Linfo/smapper/smapper/views/fragments/SettingsFragment$2;->this$0:Linfo/smapper/smapper/views/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 53
    add-int/lit16 v1, p2, 0xfa

    .line 54
    .local v1, "realValue":I
    invoke-static {v1}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setUpdateInterval(I)V

    .line 55
    new-instance v0, Linfo/smapper/smapper/data/Configuration;

    # getter for: Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->access$200()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    # getter for: Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->access$100()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Linfo/smapper/smapper/data/Configuration;-><init>(ZII)V

    .line 56
    .local v0, "config":Linfo/smapper/smapper/data/Configuration;
    invoke-static {v0}, Linfo/smapper/smapper/logic/IoHandler;->saveSettings(Linfo/smapper/smapper/data/Configuration;)V

    .line 57
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 61
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 65
    return-void
.end method
