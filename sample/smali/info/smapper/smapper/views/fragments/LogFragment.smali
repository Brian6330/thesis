.class public Linfo/smapper/smapper/views/fragments/LogFragment;
.super Landroid/support/v4/app/Fragment;
.source "LogFragment.java"


# static fields
.field private static adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

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
    .line 23
    sget-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 24
    const v0, 0x7f040028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->rootView:Landroid/view/View;

    .line 25
    sget-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->rootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 26
    sget-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->listView:Landroid/widget/ListView;

    .line 28
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/LogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04003f

    invoke-static {}, Linfo/smapper/smapper/logic/Logger;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sput-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 29
    sget-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->listView:Landroid/widget/ListView;

    sget-object v1, Linfo/smapper/smapper/views/fragments/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    sget-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-static {p0, v0}, Linfo/smapper/smapper/logic/Logger;->setReferences(Linfo/smapper/smapper/views/fragments/LogFragment;Landroid/widget/ArrayAdapter;)V

    .line 34
    :cond_0
    sget-object v0, Linfo/smapper/smapper/views/fragments/LogFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
