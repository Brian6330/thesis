.class Linfo/smapper/smapper/views/fragments/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 41
    iput-object p1, p0, Linfo/smapper/smapper/views/fragments/SettingsFragment$1;->this$0:Linfo/smapper/smapper/views/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 44
    invoke-static {p2}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setCompatibleModeState(Z)V

    .line 45
    new-instance v0, Linfo/smapper/smapper/data/Configuration;

    # getter for: Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->access$000()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit16 v1, v1, 0xfa

    # getter for: Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->access$100()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Linfo/smapper/smapper/data/Configuration;-><init>(ZII)V

    .line 46
    .local v0, "config":Linfo/smapper/smapper/data/Configuration;
    invoke-static {v0}, Linfo/smapper/smapper/logic/IoHandler;->saveSettings(Linfo/smapper/smapper/data/Configuration;)V

    .line 47
    return-void
.end method
