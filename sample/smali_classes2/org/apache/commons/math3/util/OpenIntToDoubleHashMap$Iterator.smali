.class public Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
.super Ljava/lang/Object;
.source "OpenIntToDoubleHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation


# instance fields
.field private current:I

.field private next:I

.field private final referenceCount:I

.field final synthetic this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V
    .locals 1

    .prologue
    .line 494
    iput-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .param p2, "x1"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 559
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 560
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 564
    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    .line 568
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$400(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[B

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 578
    :cond_2
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, -0x2

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    .line 573
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    if-gez v1, :cond_2

    .line 574
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public key()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 525
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 526
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 528
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    if-gez v0, :cond_1

    .line 529
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 531
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$200(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[I

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    aget v0, v0, v1

    return v0
.end method

.method public value()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 542
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 545
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    if-gez v0, :cond_1

    .line 546
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 548
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$300(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[D

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    aget-wide v0, v0, v1

    return-wide v0
.end method
