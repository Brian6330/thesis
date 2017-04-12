.class public Linfo/smapper/smapper/views/activities/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/smapper/smapper/views/activities/MainActivity$MapIsReady;,
        Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;,
        Linfo/smapper/smapper/views/activities/MainActivity$PlaceholderFragment;
    }
.end annotation


# static fields
.field private static activity:Landroid/app/Activity;

.field public static version:F


# instance fields
.field private mSectionsPagerAdapter:Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x3ec28f5c    # 0.38f

    sput v0, Linfo/smapper/smapper/views/activities/MainActivity;->version:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Linfo/smapper/smapper/views/activities/MainActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getNavigationBarHeight()I
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Linfo/smapper/smapper/views/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 253
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 255
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 257
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0d0091

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v4, 0x7f040019

    invoke-virtual {p0, v4}, Linfo/smapper/smapper/views/activities/MainActivity;->setContentView(I)V

    .line 61
    sput-object p0, Linfo/smapper/smapper/views/activities/MainActivity;->activity:Landroid/app/Activity;

    .line 64
    invoke-virtual {p0, v6}, Linfo/smapper/smapper/views/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p0}, Linfo/smapper/smapper/logic/Logger;->initLogger(Landroid/app/Activity;)V

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting Smapper v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Linfo/smapper/smapper/views/activities/MainActivity;->version:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v6}, Linfo/smapper/smapper/views/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 70
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Linfo/smapper/smapper/views/activities/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 73
    new-instance v4, Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Linfo/smapper/smapper/views/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;-><init>(Linfo/smapper/smapper/views/activities/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v4, p0, Linfo/smapper/smapper/views/activities/MainActivity;->mSectionsPagerAdapter:Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;

    .line 76
    const v4, 0x7f0d0094

    invoke-virtual {p0, v4}, Linfo/smapper/smapper/views/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Linfo/smapper/smapper/views/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v4, p0, Linfo/smapper/smapper/views/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Linfo/smapper/smapper/views/activities/MainActivity;->mSectionsPagerAdapter:Linfo/smapper/smapper/views/activities/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    const v4, 0x7f0d0093

    invoke-virtual {p0, v4}, Linfo/smapper/smapper/views/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    .line 80
    .local v2, "tabLayout":Landroid/support/design/widget/TabLayout;
    iget-object v4, p0, Linfo/smapper/smapper/views/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 82
    const v4, 0x7f0d0095

    invoke-virtual {p0, v4}, Linfo/smapper/smapper/views/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    .line 83
    .local v1, "fab":Landroid/support/design/widget/FloatingActionButton;
    new-instance v4, Linfo/smapper/smapper/views/activities/MainActivity$1;

    invoke-direct {v4, p0}, Linfo/smapper/smapper/views/activities/MainActivity$1;-><init>(Linfo/smapper/smapper/views/activities/MainActivity;)V

    invoke-virtual {v1, v4}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {p0}, Linfo/smapper/smapper/logic/IoHandler;->initIoHandler(Landroid/app/Activity;)V

    .line 118
    invoke-static {p0}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->initWorker(Landroid/app/Activity;)V

    .line 120
    invoke-static {p0}, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->initWorker(Landroid/app/Activity;)V

    .line 122
    invoke-static {}, Linfo/smapper/smapper/logic/IoHandler;->readSettings()Linfo/smapper/smapper/data/Configuration;

    move-result-object v0

    .line 123
    .local v0, "config":Linfo/smapper/smapper/data/Configuration;
    invoke-virtual {v0}, Linfo/smapper/smapper/data/Configuration;->getUpdateInterval()I

    move-result v4

    invoke-static {v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setUpdateInterval(I)V

    .line 124
    invoke-virtual {v0}, Linfo/smapper/smapper/data/Configuration;->getCompatibleModeStatus()Z

    move-result v4

    invoke-static {v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setCompatibleModeState(Z)V

    .line 125
    invoke-virtual {v0}, Linfo/smapper/smapper/data/Configuration;->getMapType()I

    move-result v4

    invoke-static {v4}, Linfo/smapper/smapper/views/fragments/MapFragment;->setMapType(I)V

    .line 126
    invoke-static {p0}, Linfo/smapper/smapper/logic/BackgroundWorkerMapMarker;->initWorker(Landroid/app/Activity;)V

    .line 127
    const-string v4, "Settings restored."

    invoke-static {v4}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 134
    invoke-virtual {p0}, Linfo/smapper/smapper/views/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 146
    .local v0, "id":I
    const v3, 0x7f0d00fc

    if-ne v0, v3, :cond_0

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-class v3, Linfo/smapper/smapper/views/activities/SettingsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Linfo/smapper/smapper/views/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 152
    :cond_0
    const v3, 0x7f0d00fd

    if-ne v0, v3, :cond_1

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-class v3, Linfo/smapper/smapper/views/activities/AboutActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Linfo/smapper/smapper/views/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
