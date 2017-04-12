.class public Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;
.super Ljava/lang/Object;
.source "OpenIntToFieldHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation


# instance fields
.field private current:I

.field private next:I

.field private final referenceCount:I

.field final synthetic this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    iput-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .param p2, "x1"    # Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$1;

    .prologue
    .line 493
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

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
    .line 572
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 573
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 577
    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    .line 581
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$400(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[B

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 591
    :cond_2
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, -0x2

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    .line 586
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    if-gez v1, :cond_2

    .line 587
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 527
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

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
    .line 538
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 539
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 541
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    if-gez v0, :cond_1

    .line 542
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 544
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$200(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[I

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    aget v0, v0, v1

    return v0
.end method

.method public value()Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 556
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 558
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    if-gez v0, :cond_1

    .line 559
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 561
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    # getter for: Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$300(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    aget-object v0, v0, v1

    return-object v0
.end method
