.class public Lorg/apache/commons/math3/util/MultidimensionalCounter;
.super Ljava/lang/Object;
.source "MultidimensionalCounter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final dimension:I

.field private final last:I

.field private final size:[I

.field private final totalSize:I

.field private final uniCounterOffset:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 7
    .param p1, "size"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    array-length v4, p1

    iput v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    .line 172
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    .line 174
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    .line 176
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    .line 177
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    aget v3, p1, v4

    .line 178
    .local v3, "tS":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    if-ge v1, v4, :cond_1

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v2, v4, :cond_0

    .line 181
    aget v4, p1, v2

    mul-int/2addr v0, v4

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aput v0, v4, v1

    .line 184
    aget v4, p1, v1

    mul-int/2addr v3, v4

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "count":I
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    iget v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 188
    if-gtz v3, :cond_2

    .line 189
    new-instance v4, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v4

    .line 192
    :cond_2
    iput v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    .line 193
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    return-object v0
.end method


# virtual methods
.method public varargs getCount([I)I
    .locals 7
    .param p1, "c"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 260
    array-length v3, p1

    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-eq v3, v4, :cond_0

    .line 261
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, p1

    iget v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v1, v3, :cond_3

    .line 265
    aget v2, p1, v1

    .line 266
    .local v2, "index":I
    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    aget v3, v3, v1

    if-lt v2, v3, :cond_2

    .line 268
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    aget v6, v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 270
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aget v3, v3, v1

    aget v4, p1, v1

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v2    # "index":I
    :cond_3
    iget v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    aget v3, p1, v3

    add-int/2addr v3, v0

    return v3
.end method

.method public getCounts(I)[I
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 222
    if-ltz p1, :cond_0

    iget v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    if-lt p1, v5, :cond_1

    .line 224
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 227
    :cond_1
    iget v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    new-array v3, v5, [I

    .line 229
    .local v3, "indices":[I
    const/4 v0, 0x0

    .line 230
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    if-ge v1, v5, :cond_3

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "idx":I
    iget-object v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aget v4, v5, v1

    .line 233
    .local v4, "offset":I
    :goto_1
    if-gt v0, p1, :cond_2

    .line 234
    add-int/2addr v0, v4

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 238
    sub-int/2addr v0, v4

    .line 239
    aput v2, v3, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v2    # "idx":I
    .end local v4    # "offset":I
    :cond_3
    iget v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    sub-int v6, p1, v0

    aput v6, v3, v5

    .line 244
    return-object v3
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return v0
.end method

.method public getSizes()[I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;-><init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v0, v2, :cond_0

    .line 299
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->getCount([I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
