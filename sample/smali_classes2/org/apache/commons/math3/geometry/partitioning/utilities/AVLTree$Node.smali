.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
.super Ljava/lang/Object;
.source "AVLTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field private element:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation
.end field

.field private right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation
.end field

.field private skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    .local p2, "element":Ljava/lang/Comparable;, "TT;"
    .local p3, "parent":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v0, 0x0

    .line 247
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 249
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 250
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 251
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 252
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object v0
.end method

.method private rebalanceLeftGrown()Z
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v1, 0x0

    .line 418
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 448
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 449
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 420
    :pswitch_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v2, v3, :cond_0

    .line 421
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 422
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 423
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 425
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 426
    .local v0, "s":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 427
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 428
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 438
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 439
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 441
    :goto_1
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 430
    :pswitch_1
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 431
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 434
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 435
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 445
    .end local v0    # "s":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    :pswitch_3
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 428
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rebalanceLeftShrunk()Z
    .locals 5

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 496
    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 532
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    move v1, v2

    .line 533
    :goto_0
    return v1

    .line 498
    :pswitch_0
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v3, v4, :cond_0

    .line 502
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 503
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 504
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 506
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v3, v4, :cond_1

    .line 507
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 508
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 509
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    move v1, v2

    .line 510
    goto :goto_0

    .line 512
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 513
    .local v0, "s":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 514
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 515
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 525
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 526
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 528
    :goto_1
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 518
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 521
    :pswitch_3
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 522
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private rebalanceRightGrown()Z
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v1, 0x0

    .line 457
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 487
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 488
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 459
    :pswitch_0
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 462
    :pswitch_1
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v2, v3, :cond_0

    .line 463
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 464
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 465
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 468
    .local v0, "s":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 469
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 470
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 480
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 481
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 483
    :goto_1
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 472
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 473
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 476
    :pswitch_3
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 477
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private rebalanceRightShrunk()Z
    .locals 5

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 541
    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 577
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    move v1, v2

    .line 578
    :goto_0
    return v1

    .line 543
    :pswitch_0
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v3, v4, :cond_0

    .line 547
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 548
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 549
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 551
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v3, v4, :cond_1

    .line 552
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 553
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 554
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    move v1, v2

    .line 555
    goto :goto_0

    .line 557
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 558
    .local v0, "s":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 559
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 560
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 570
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 571
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 573
    :goto_1
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 562
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 563
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 566
    :pswitch_3
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 567
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 560
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private rotateCCW()V
    .locals 4

    .prologue
    .line 613
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 614
    .local v0, "tmpElt":Ljava/lang/Comparable;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 615
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 617
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 618
    .local v1, "tmpNode":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 619
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 620
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 621
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 623
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object p0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 626
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_1

    .line 627
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 630
    :cond_1
    return-void
.end method

.method private rotateCW()V
    .locals 4

    .prologue
    .line 588
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 589
    .local v0, "tmpElt":Ljava/lang/Comparable;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 590
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 592
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 593
    .local v1, "tmpNode":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 594
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 595
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 596
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 598
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object p0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 601
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_1

    .line 602
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v3, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 605
    :cond_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 372
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_1

    .line 374
    iput-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 375
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-static {v3, v6}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->access$302(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 412
    :cond_0
    return-void

    .line 381
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_4

    .line 382
    move-object v2, p0

    .line 383
    .local v2, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iput-object v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 384
    iget-object v5, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 385
    .local v1, "leftShrunk":Z
    :goto_0
    const/4 v0, 0x0

    .line 393
    .local v0, "child":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_1
    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 394
    if-eqz v1, :cond_8

    .line 395
    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 399
    :goto_2
    if-eqz v0, :cond_2

    .line 400
    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 403
    :cond_2
    :goto_3
    if-eqz v1, :cond_9

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftShrunk()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    :goto_4
    iget-object v5, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v5, :cond_0

    .line 407
    iget-object v5, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v2, v5, :cond_a

    move v1, v3

    .line 408
    :goto_5
    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_3

    .end local v0    # "child":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    .end local v1    # "leftShrunk":Z
    :cond_3
    move v1, v4

    .line 384
    goto :goto_0

    .line 387
    .end local v2    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    .line 388
    .restart local v2    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_6
    iget-object v5, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 389
    iget-object v5, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v2, v5, :cond_6

    move v1, v3

    .line 390
    .restart local v1    # "leftShrunk":Z
    :goto_7
    iget-object v5, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v5, :cond_7

    iget-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .restart local v0    # "child":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_8
    goto :goto_1

    .line 387
    .end local v0    # "child":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    .end local v1    # "leftShrunk":Z
    .end local v2    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    goto :goto_6

    .restart local v2    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_6
    move v1, v4

    .line 389
    goto :goto_7

    .line 390
    .restart local v1    # "leftShrunk":Z
    :cond_7
    iget-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_8

    .line 397
    .restart local v0    # "child":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_8
    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_2

    .line 403
    :cond_9
    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightShrunk()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_4

    :cond_a
    move v1, v4

    .line 407
    goto :goto_5
.end method

.method public getElement()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object v0
.end method

.method getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    move-object v0, p0

    .line 291
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    .line 292
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_0

    .line 294
    :cond_0
    return-object v0
.end method

.method public getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    .line 331
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 342
    :goto_0
    return-object v1

    .line 336
    .end local v0    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_0
    move-object v0, p0

    .restart local v0    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v1, :cond_1

    .line 338
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_1

    .line 342
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrevious()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    .line 306
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 317
    :goto_0
    return-object v1

    .line 311
    .end local v0    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :cond_0
    move-object v0, p0

    .restart local v0    # "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v1, :cond_1

    .line 313
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_1

    .line 317
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree",
            "<TT;>.Node;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    move-object v0, p0

    .line 277
    .local v0, "node":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    .line 278
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_0

    .line 280
    :cond_0
    return-object v0
.end method

.method insert(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    .local p1, "newElement":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    .line 351
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    .line 353
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v1, :cond_1

    .line 354
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 355
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result v0

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result v0

    goto :goto_0

    .line 361
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v1, :cond_3

    .line 362
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 363
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result v0

    goto :goto_0
.end method

.method size()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;, "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<TT;>.Node;"
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v1

    goto :goto_1
.end method
