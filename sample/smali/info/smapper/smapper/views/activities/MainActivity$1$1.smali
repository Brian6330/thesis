.class Linfo/smapper/smapper/views/activities/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/smapper/smapper/views/activities/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Linfo/smapper/smapper/views/activities/MainActivity$1;


# direct methods
.method constructor <init>(Linfo/smapper/smapper/views/activities/MainActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Linfo/smapper/smapper/views/activities/MainActivity$1;

    .prologue
    .line 86
    iput-object p1, p0, Linfo/smapper/smapper/views/activities/MainActivity$1$1;->this$1:Linfo/smapper/smapper/views/activities/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "selection"    # I

    .prologue
    .line 89
    packed-switch p2, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-static {}, Linfo/smapper/smapper/logic/IoHandler;->getAccessibleFileObject()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "path":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/email"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "gadient@gmx.ch"

    aput-object v4, v2, v3

    .line 97
    .local v2, "to":[Ljava/lang/String;
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "Smapper Measurements"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Linfo/smapper/smapper/views/activities/MainActivity$1$1;->this$1:Linfo/smapper/smapper/views/activities/MainActivity$1;

    iget-object v3, v3, Linfo/smapper/smapper/views/activities/MainActivity$1;->this$0:Linfo/smapper/smapper/views/activities/MainActivity;

    const-string v4, "Publish measurements with:"

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/smapper/smapper/views/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
