.class public Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/smapper/smapper/views/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderFragment"
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .prologue
    .line 178
    new-instance v1, Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;

    invoke-direct {v1}, Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;-><init>()V

    .line 179
    .local v1, "fragment":Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    invoke-virtual {v1, v0}, Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 182
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "rootView":Landroid/view/View;
    return-object v0
.end method
