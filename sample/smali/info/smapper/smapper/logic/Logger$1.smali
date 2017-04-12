.class final Linfo/smapper/smapper/logic/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$spanned:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Landroid/text/Spanned;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Linfo/smapper/smapper/logic/Logger$1;->val$spanned:Landroid/text/Spanned;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    # getter for: Linfo/smapper/smapper/logic/Logger;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {}, Linfo/smapper/smapper/logic/Logger;->access$000()Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    # getter for: Linfo/smapper/smapper/logic/Logger;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {}, Linfo/smapper/smapper/logic/Logger;->access$000()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Linfo/smapper/smapper/logic/Logger$1;->val$spanned:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    # getter for: Linfo/smapper/smapper/logic/Logger;->list:Ljava/util/ArrayList;
    invoke-static {}, Linfo/smapper/smapper/logic/Logger;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Linfo/smapper/smapper/logic/Logger$1;->val$spanned:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
