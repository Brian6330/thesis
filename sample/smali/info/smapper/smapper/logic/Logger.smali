.class public Linfo/smapper/smapper/logic/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


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

.field private static fragment:Linfo/smapper/smapper/views/fragments/LogFragment;

.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/smapper/smapper/logic/Logger;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Linfo/smapper/smapper/logic/Logger;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Linfo/smapper/smapper/logic/Logger;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static add(Ljava/lang/String;)V
    .locals 8
    .param p0, "entry"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "dd.MM.yyyy HH:mm:ss.SSS"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "currentTimestamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<br><font color=\'gray\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font><br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "formattedEntry":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 39
    .local v5, "spanned":Landroid/text/Spanned;
    new-instance v3, Landroid/os/Handler;

    sget-object v6, Linfo/smapper/smapper/logic/Logger;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .local v3, "mainHandler":Landroid/os/Handler;
    new-instance v1, Linfo/smapper/smapper/logic/Logger$1;

    invoke-direct {v1, v5}, Linfo/smapper/smapper/logic/Logger$1;-><init>(Landroid/text/Spanned;)V

    .line 52
    .local v1, "deferredWorker":Ljava/lang/Runnable;
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public static getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Linfo/smapper/smapper/logic/Logger;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initLogger(Landroid/app/Activity;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 24
    sput-object p0, Linfo/smapper/smapper/logic/Logger;->activity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method public static setReferences(Linfo/smapper/smapper/views/fragments/LogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p0, "f"    # Linfo/smapper/smapper/views/fragments/LogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/smapper/smapper/views/fragments/LogFragment;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/text/Spanned;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "a":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/text/Spanned;>;"
    sput-object p0, Linfo/smapper/smapper/logic/Logger;->fragment:Linfo/smapper/smapper/views/fragments/LogFragment;

    .line 29
    sput-object p1, Linfo/smapper/smapper/logic/Logger;->adapter:Landroid/widget/ArrayAdapter;

    .line 30
    return-void
.end method
