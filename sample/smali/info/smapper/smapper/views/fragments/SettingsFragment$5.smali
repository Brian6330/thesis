.class Linfo/smapper/smapper/views/fragments/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 95
    iput-object p1, p0, Linfo/smapper/smapper/views/fragments/SettingsFragment$5;->this$0:Linfo/smapper/smapper/views/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Linfo/smapper/smapper/data/Configuration;

    # getter for: Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->access$200()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # getter for: Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;
    invoke-static {}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->access$000()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit16 v2, v2, 0xfa

    invoke-direct {v0, v1, v2, p3}, Linfo/smapper/smapper/data/Configuration;-><init>(ZII)V

    .line 99
    .local v0, "config":Linfo/smapper/smapper/data/Configuration;
    invoke-static {p3}, Linfo/smapper/smapper/views/fragments/MapFragment;->setMapType(I)V

    .line 100
    invoke-static {v0}, Linfo/smapper/smapper/logic/IoHandler;->saveSettings(Linfo/smapper/smapper/data/Configuration;)V

    .line 101
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
