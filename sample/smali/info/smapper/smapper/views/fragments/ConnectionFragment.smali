.class public Linfo/smapper/smapper/views/fragments/ConnectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "ConnectionFragment.java"


# static fields
.field private static rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    sget-object v0, Linfo/smapper/smapper/views/fragments/ConnectionFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 17
    const v0, 0x7f040027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Linfo/smapper/smapper/views/fragments/ConnectionFragment;->rootView:Landroid/view/View;

    .line 18
    sget-object v0, Linfo/smapper/smapper/views/fragments/ConnectionFragment;->rootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 21
    :cond_0
    sget-object v0, Linfo/smapper/smapper/views/fragments/ConnectionFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
