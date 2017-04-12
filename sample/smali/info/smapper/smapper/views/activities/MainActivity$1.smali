.class Linfo/smapper/smapper/views/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/smapper/smapper/views/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/smapper/smapper/views/activities/MainActivity;


# direct methods
.method constructor <init>(Linfo/smapper/smapper/views/activities/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Linfo/smapper/smapper/views/activities/MainActivity;

    .prologue
    .line 83
    iput-object p1, p0, Linfo/smapper/smapper/views/activities/MainActivity$1;->this$0:Linfo/smapper/smapper/views/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    new-instance v1, Linfo/smapper/smapper/views/activities/MainActivity$1$1;

    invoke-direct {v1, p0}, Linfo/smapper/smapper/views/activities/MainActivity$1$1;-><init>(Linfo/smapper/smapper/views/activities/MainActivity$1;)V

    .line 111
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Linfo/smapper/smapper/views/activities/MainActivity;->activity:Landroid/app/Activity;
    invoke-static {}, Linfo/smapper/smapper/views/activities/MainActivity;->access$000()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Do you want to publish your measurements?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    .line 113
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method
