.class Landroid/support/design/widget/FloatingActionButtonImpl$1;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPreDraw()V

    .line 163
    const/4 v0, 0x1

    return v0
.end method
