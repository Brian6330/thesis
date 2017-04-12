.class public Linfo/smapper/smapper/views/fragments/AboutFragment;
.super Landroid/app/Fragment;
.source "AboutFragment.java"


# static fields
.field private static rootView:Landroid/view/View;

.field private static versionString:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    sget-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 20
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->rootView:Landroid/view/View;

    .line 21
    sget-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->rootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 23
    sget-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->versionString:Landroid/widget/TextView;

    .line 24
    sget-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->versionString:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Linfo/smapper/smapper/views/activities/MainActivity;->version:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    sget-object v0, Linfo/smapper/smapper/views/fragments/AboutFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
