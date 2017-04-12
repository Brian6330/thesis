.class Linfo/smapper/smapper/views/fragments/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 77
    iput-object p1, p0, Linfo/smapper/smapper/views/fragments/SettingsFragment$4;->this$0:Linfo/smapper/smapper/views/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-static {}, Linfo/smapper/smapper/logic/IoHandler;->clearSettings()V

    .line 81
    return-void
.end method
