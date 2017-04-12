.class public Linfo/smapper/smapper/views/fragments/SettingsFragment;
.super Landroid/app/Fragment;
.source "SettingsFragment.java"


# static fields
.field private static clearButtonMeasurements:Landroid/widget/Button;

.field private static clearButtonSettings:Landroid/widget/Button;

.field private static compatibility:Landroid/widget/CheckBox;

.field private static connectionUpdateInterval:Landroid/widget/SeekBar;

.field private static mapTypeSelection:Landroid/widget/Spinner;

.field private static rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getCurrentCompatiblitySetting()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->getCompatibleModeState()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 37
    const v2, 0x7f04002c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    .line 38
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 40
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0d00cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sput-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;

    .line 41
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;

    new-instance v3, Linfo/smapper/smapper/views/fragments/SettingsFragment$1;

    invoke-direct {v3, p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment$1;-><init>(Linfo/smapper/smapper/views/fragments/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0d00d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    sput-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;

    .line 50
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;

    new-instance v3, Linfo/smapper/smapper/views/fragments/SettingsFragment$2;

    invoke-direct {v3, p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment$2;-><init>(Linfo/smapper/smapper/views/fragments/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0d00d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->clearButtonMeasurements:Landroid/widget/Button;

    .line 69
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->clearButtonMeasurements:Landroid/widget/Button;

    new-instance v3, Linfo/smapper/smapper/views/fragments/SettingsFragment$3;

    invoke-direct {v3, p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment$3;-><init>(Linfo/smapper/smapper/views/fragments/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0d00d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->clearButtonSettings:Landroid/widget/Button;

    .line 77
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->clearButtonSettings:Landroid/widget/Button;

    new-instance v3, Linfo/smapper/smapper/views/fragments/SettingsFragment$4;

    invoke-direct {v3, p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment$4;-><init>(Linfo/smapper/smapper/views/fragments/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0d00d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    sput-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "mapTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "None"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v2, "Normal"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v2, "Satellite"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v2, "Terrain"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "Hybrid"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04003f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;

    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getMapType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 95
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->mapTypeSelection:Landroid/widget/Spinner;

    new-instance v3, Linfo/smapper/smapper/views/fragments/SettingsFragment$5;

    invoke-direct {v3, p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment$5;-><init>(Linfo/smapper/smapper/views/fragments/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 110
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->compatibility:Landroid/widget/CheckBox;

    invoke-direct {p0}, Linfo/smapper/smapper/views/fragments/SettingsFragment;->getCurrentCompatiblitySetting()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    :cond_0
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    .line 114
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->connectionUpdateInterval:Landroid/widget/SeekBar;

    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->getUpdateInterval()I

    move-result v3

    add-int/lit16 v3, v3, -0xfa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "mapTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Linfo/smapper/smapper/views/fragments/SettingsFragment;->rootView:Landroid/view/View;

    return-object v2
.end method
