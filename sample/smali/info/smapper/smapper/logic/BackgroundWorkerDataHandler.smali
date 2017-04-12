.class public Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;
.super Ljava/lang/Object;
.source "BackgroundWorkerDataHandler.java"


# static fields
.field private static activity:Landroid/app/Activity;

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

.field private static apiKey:Ljava/lang/String;

.field private static data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation
.end field

.field private static fetcher:Linfo/smapper/smapper/logic/DataFetcher;

.field private static handler:Landroid/os/Handler;

.field private static listNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private static refreshIndicatorVisible:Z

.field private static remoteSite:Ljava/lang/String;

.field private static runnable:Ljava/lang/Runnable;

.field private static updateInterval:I

.field private static useCompatibleMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, "http://opencellid.org/cell/get"

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->remoteSite:Ljava/lang/String;

    .line 37
    const-string v0, "b76f356a-d4ff-4710-bb42-aa7859032bf0"

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->apiKey:Ljava/lang/String;

    .line 39
    sput-boolean v1, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->useCompatibleMode:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->handler:Landroid/os/Handler;

    .line 43
    const/16 v0, 0x3e8

    sput v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateInterval:I

    .line 44
    sput-boolean v1, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->refreshIndicatorVisible:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->listNetworks:Ljava/util/List;

    .line 50
    new-instance v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler$1;

    invoke-direct {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler$1;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Linfo/smapper/smapper/logic/DataFetcher;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateStatisticsFragment()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->useCompatibleMode:Z

    return v0
.end method

.method static synthetic access$300(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 35
    invoke-static {p0}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateNetworksFragment(Z)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 35
    sget v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateInterval:I

    return v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCompatibleModeState()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->useCompatibleMode:Z

    return v0
.end method

.method public static getCurrentData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->data:Ljava/util/List;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v0}, Linfo/smapper/smapper/logic/DataFetcher;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->listNetworks:Ljava/util/List;

    return-object v0
.end method

.method public static getUpdateInterval()I
    .locals 1

    .prologue
    .line 185
    sget v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateInterval:I

    return v0
.end method

.method public static initWorker(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    sput-object p0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->activity:Landroid/app/Activity;

    .line 63
    new-instance v1, Linfo/smapper/smapper/logic/DataFetcher;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v1, v0, p0}, Linfo/smapper/smapper/logic/DataFetcher;-><init>(Landroid/telephony/TelephonyManager;Landroid/app/Activity;)V

    sput-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    .line 64
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->handler:Landroid/os/Handler;

    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    sget-object v0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->handler:Landroid/os/Handler;

    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->runnable:Ljava/lang/Runnable;

    sget v2, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void
.end method

.method private static requestOpenCellIdData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "cds":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "infoNotFoundInDb":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Linfo/smapper/smapper/data/CellData;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 259
    .local v0, "c":Linfo/smapper/smapper/data/CellData;
    invoke-static {v0}, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->matchOpenCellInfo(Linfo/smapper/smapper/data/CellData;)Linfo/smapper/smapper/data/CellData;

    move-result-object v2

    .line 261
    .local v2, "updatedCellData":Linfo/smapper/smapper/data/CellData;
    if-nez v2, :cond_0

    .line 262
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    .end local v0    # "c":Linfo/smapper/smapper/data/CellData;
    .end local v2    # "updatedCellData":Linfo/smapper/smapper/data/CellData;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 267
    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 268
    invoke-static {v1}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->requestOpenCellIdDataWeb(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_2
    return-object p0
.end method

.method private static requestOpenCellIdDataWeb(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "cds":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    return-object p0
.end method

.method public static setCompatibleModeState(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    .line 181
    sput-boolean p0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->useCompatibleMode:Z

    .line 182
    return-void
.end method

.method public static setNetworkAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/text/Spanned;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/text/Spanned;>;"
    sput-object p0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->adapter:Landroid/widget/ArrayAdapter;

    .line 170
    return-void
.end method

.method private static setTextSafe(ILjava/lang/String;)V
    .locals 2
    .param p0, "id_TextView"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    .local v0, "t":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    return-void
.end method

.method public static setUpdateInterval(I)V
    .locals 0
    .param p0, "interval"    # I

    .prologue
    .line 189
    sput p0, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->updateInterval:I

    .line 190
    return-void
.end method

.method private static updateNetworksFragment(Z)V
    .locals 8
    .param p0, "useCompatibleMode"    # Z

    .prologue
    const/4 v5, 0x1

    .line 136
    if-eqz p0, :cond_1

    .line 137
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v4, v5}, Linfo/smapper/smapper/logic/DataFetcher;->getAllCellDataCompatible(Z)Ljava/util/List;

    move-result-object v4

    sput-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->data:Ljava/util/List;

    .line 143
    :goto_0
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->data:Ljava/util/List;

    invoke-static {v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->requestOpenCellIdData(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->data:Ljava/util/List;

    .line 146
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->listNetworks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 147
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 148
    .local v0, "e":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getRelevantDataForNetworkList()Ljava/util/HashMap;

    move-result-object v3

    .line 149
    .local v3, "lowLevelCellData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<br><b>Provider: </b>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getServiceProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "formattedEntry":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    .local v1, "each":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<br><b>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "</b> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    goto :goto_2

    .line 139
    .end local v0    # "e":Linfo/smapper/smapper/data/CellData;
    .end local v1    # "each":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "formattedEntry":Ljava/lang/String;
    .end local v3    # "lowLevelCellData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v4, v5}, Linfo/smapper/smapper/logic/DataFetcher;->getAllCellData(Z)Ljava/util/List;

    move-result-object v4

    sput-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->data:Ljava/util/List;

    goto/16 :goto_0

    .line 153
    .restart local v0    # "e":Linfo/smapper/smapper/data/CellData;
    .restart local v2    # "formattedEntry":Ljava/lang/String;
    .restart local v3    # "lowLevelCellData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "<br><b>Signal Strength: </b>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalQuality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")<br><b>Connected: </b>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getIsRegistered()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "<br>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->listNetworks:Ljava/util/List;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v4, :cond_0

    .line 156
    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 159
    .end local v0    # "e":Linfo/smapper/smapper/data/CellData;
    .end local v2    # "formattedEntry":Ljava/lang/String;
    .end local v3    # "lowLevelCellData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method private static updateStatisticsFragment()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    const v3, 0x7f0d00ac

    const-string v4, "SIM Operator:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 70
    const v3, 0x7f0d00ad

    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v4}, Linfo/smapper/smapper/logic/DataFetcher;->getPublishedSimNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 72
    const v3, 0x7f0d00ae

    const-string v4, "Phone Type:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 73
    const v3, 0x7f0d00b0

    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v4}, Linfo/smapper/smapper/logic/DataFetcher;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 75
    const v3, 0x7f0d00b1

    const-string v4, "Network Country Code:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 76
    const v3, 0x7f0d00b2

    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v4}, Linfo/smapper/smapper/logic/DataFetcher;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 78
    const v3, 0x7f0d00b3

    const-string v4, "Network Type:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 79
    const v3, 0x7f0d00b4

    sget-object v4, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v4}, Linfo/smapper/smapper/logic/DataFetcher;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 82
    sget-boolean v3, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->useCompatibleMode:Z

    if-eqz v3, :cond_1

    .line 83
    sget-object v3, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v3}, Linfo/smapper/smapper/logic/DataFetcher;->getCellDataCompatible()Linfo/smapper/smapper/data/CellData;

    move-result-object v0

    .line 88
    .local v0, "cd":Linfo/smapper/smapper/data/CellData;
    :goto_0
    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getRelevantDataForStatistics()[[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "data":[[Ljava/lang/String;
    const v3, 0x7f0d00b5

    const-string v4, "Signal Strength:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 91
    const v3, 0x7f0d00b6

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 93
    const v3, 0x7f0d00b7

    const-string v4, "Signal Quality:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 94
    const v3, 0x7f0d00b8

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getSignalQuality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 96
    const v3, 0x7f0d00b9

    const-string v4, "Available Base Stations:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 97
    const v3, 0x7f0d00ba

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getAvailableCells()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 99
    const v3, 0x7f0d00af

    const-string v4, "Registered Base Stations:"

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 100
    const v3, 0x7f0d00bb

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getRegisteredCells()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 102
    const v3, 0x7f0d00bc

    aget-object v4, v1, v5

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 103
    const v3, 0x7f0d00bd

    aget-object v4, v1, v5

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 105
    const v3, 0x7f0d00be

    aget-object v4, v1, v6

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 106
    const v3, 0x7f0d00bf

    aget-object v4, v1, v6

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 108
    const v3, 0x7f0d00c0

    aget-object v4, v1, v8

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 109
    const v3, 0x7f0d00c4

    aget-object v4, v1, v8

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 111
    const v3, 0x7f0d00c1

    aget-object v4, v1, v9

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 112
    const v3, 0x7f0d00c5

    aget-object v4, v1, v9

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 114
    const v3, 0x7f0d00c2

    aget-object v4, v1, v7

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 115
    const v3, 0x7f0d00c6

    aget-object v4, v1, v7

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 117
    const v3, 0x7f0d00c3

    const/4 v4, 0x5

    aget-object v4, v1, v4

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 118
    const v3, 0x7f0d00c7

    const/4 v4, 0x5

    aget-object v4, v1, v4

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 120
    const v3, 0x7f0d00c8

    const/4 v4, 0x6

    aget-object v4, v1, v4

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 121
    const v3, 0x7f0d00ab

    const/4 v4, 0x6

    aget-object v4, v1, v4

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->setTextSafe(ILjava/lang/String;)V

    .line 123
    sget-object v3, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->activity:Landroid/app/Activity;

    const v4, 0x7f0d00aa

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 124
    .local v2, "indicator":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 125
    sget-boolean v3, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->refreshIndicatorVisible:Z

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    sput-boolean v5, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->refreshIndicatorVisible:Z

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 85
    .end local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    .end local v1    # "data":[[Ljava/lang/String;
    .end local v2    # "indicator":Landroid/widget/ImageView;
    :cond_1
    sget-object v3, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->fetcher:Linfo/smapper/smapper/logic/DataFetcher;

    invoke-virtual {v3}, Linfo/smapper/smapper/logic/DataFetcher;->getCellData()Linfo/smapper/smapper/data/CellData;

    move-result-object v0

    .restart local v0    # "cd":Linfo/smapper/smapper/data/CellData;
    goto/16 :goto_0

    .line 129
    .restart local v1    # "data":[[Ljava/lang/String;
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    sput-boolean v6, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->refreshIndicatorVisible:Z

    goto :goto_1
.end method
