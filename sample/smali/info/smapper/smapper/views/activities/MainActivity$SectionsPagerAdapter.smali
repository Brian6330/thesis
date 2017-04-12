.class public Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/smapper/smapper/views/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Linfo/smapper/smapper/views/activities/MainActivity;


# direct methods
.method public constructor <init>(Linfo/smapper/smapper/views/activities/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Linfo/smapper/smapper/views/activities/MainActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 199
    iput-object p1, p0, Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;->this$0:Linfo/smapper/smapper/views/activities/MainActivity;

    .line 200
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 201
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Linfo/smapper/smapper/views/fragments/MapFragment;

    invoke-direct {v0}, Linfo/smapper/smapper/views/fragments/MapFragment;-><init>()V

    .line 221
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 212
    new-instance v0, Linfo/smapper/smapper/views/fragments/ConnectionFragment;

    invoke-direct {v0}, Linfo/smapper/smapper/views/fragments/ConnectionFragment;-><init>()V

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 215
    new-instance v0, Linfo/smapper/smapper/views/fragments/NetworksFragment;

    invoke-direct {v0}, Linfo/smapper/smapper/views/fragments/NetworksFragment;-><init>()V

    goto :goto_0

    .line 217
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 218
    new-instance v0, Linfo/smapper/smapper/views/fragments/LogFragment;

    invoke-direct {v0}, Linfo/smapper/smapper/views/fragments/LogFragment;-><init>()V

    goto :goto_0

    .line 221
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 243
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    const-string v0, "Map"

    goto :goto_0

    .line 236
    :pswitch_1
    const-string v0, "Current Connection"

    goto :goto_0

    .line 238
    :pswitch_2
    const-string v0, "Available Networks"

    goto :goto_0

    .line 240
    :pswitch_3
    const-string v0, "Log"

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
