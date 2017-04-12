.class public Linfo/smapper/smapper/views/fragments/NetworksFragment;
.super Landroid/support/v4/app/Fragment;
.source "NetworksFragment.java"


# static fields
.field private static listView:Landroid/widget/ListView;

.field private static rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    sget-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 23
    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->rootView:Landroid/view/View;

    .line 24
    sget-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->rootView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 25
    sget-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0d00cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->listView:Landroid/widget/ListView;

    .line 27
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/NetworksFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04003f

    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->getListNetworks()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/text/Spanned;>;"
    invoke-static {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setNetworkAdapter(Landroid/widget/ArrayAdapter;)V

    .line 29
    sget-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/text/Spanned;>;"
    :cond_0
    sget-object v1, Linfo/smapper/smapper/views/fragments/NetworksFragment;->rootView:Landroid/view/View;

    return-object v1
.end method
