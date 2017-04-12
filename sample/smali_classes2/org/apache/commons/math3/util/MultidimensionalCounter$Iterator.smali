.class public Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
.super Ljava/lang/Object;
.source "MultidimensionalCounter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MultidimensionalCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private final counter:[I

.field private final maxCount:I

.field final synthetic this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 89
    iput-object p1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    # getter for: Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I
    invoke-static {v0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$000(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    .line 79
    iput v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    # getter for: Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I
    invoke-static {v0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$100(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->maxCount:I

    .line 90
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    # getter for: Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I
    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v1

    aput v2, v0, v1

    .line 91
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    return v0
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "dim"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCounts()[I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->maxCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    # getter for: Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I
    invoke-static {v1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 112
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    # getter for: Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I
    invoke-static {v2}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$300(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I

    move-result-object v2

    aget v2, v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 113
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 120
    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
