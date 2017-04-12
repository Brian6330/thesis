.class public Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
.super Ljava/lang/Object;
.source "OpenIntToDoubleHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$1;,
        Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_SIZE:I = 0x10

.field protected static final FREE:B = 0x0t

.field protected static final FULL:B = 0x1t

.field private static final LOAD_FACTOR:F = 0.5f

.field private static final PERTURB_SHIFT:I = 0x5

.field protected static final REMOVED:B = 0x2t

.field private static final RESIZE_MULTIPLIER:I = 0x2

.field private static final serialVersionUID:J = -0x329a643b11501df1L


# instance fields
.field private transient count:I

.field private keys:[I

.field private mask:I

.field private final missingEntries:D

.field private size:I

.field private states:[B

.field private values:[D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 91
    const/16 v0, 0x10

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    .line 92
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "missingEntries"    # D

    .prologue
    .line 99
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "expectedSize"    # I

    .prologue
    .line 107
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    .line 108
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2
    .param p1, "expectedSize"    # I
    .param p2, "missingEntries"    # D

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->computeCapacity(I)I

    move-result v0

    .line 118
    .local v0, "capacity":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    .line 119
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    .line 120
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    .line 121
    iput-wide p2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    .line 122
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V
    .locals 4
    .param p1, "source"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    array-length v0, v1

    .line 131
    .local v0, "length":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    .line 132
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    .line 134
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    .line 136
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-wide v2, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    iput-wide v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    .line 138
    iget v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    .line 139
    iget v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    .line 140
    iget v1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    .line 141
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    return-object v0
.end method

.method private static changeIndexSign(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 331
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static computeCapacity(I)I
    .locals 4
    .param p0, "expectedSize"    # I

    .prologue
    .line 149
    if-nez p0, :cond_1

    .line 150
    const/4 v0, 0x1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    int-to-float v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 153
    .local v0, "capacity":I
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 154
    .local v1, "powerOfTwo":I
    if-eq v1, v0, :cond_0

    .line 157
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->nextPowerOfTwo(I)I

    move-result v0

    goto :goto_0
.end method

.method private containsKey(II)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 381
    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v1, v1, p2

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    aget v1, v1, p2

    if-ne v1, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doRemove(I)D
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 390
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 391
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    const/4 v3, 0x2

    aput-byte v3, v2, p1

    .line 392
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide v0, v2, p1

    .line 393
    .local v0, "previous":D
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    iget-wide v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    aput-wide v4, v2, p1

    .line 394
    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    .line 395
    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    .line 396
    return-wide v0
.end method

.method private findInsertionIndex(I)I
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    invoke-static {v0, v1, p1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->findInsertionIndex([I[BII)I

    move-result v0

    return v0
.end method

.method private static findInsertionIndex([I[BII)I
    .locals 7
    .param p0, "keys"    # [I
    .param p1, "states"    # [B
    .param p2, "key"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v6, 0x1

    .line 268
    invoke-static {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v1

    .line 269
    .local v1, "hash":I
    and-int v2, v1, p3

    .line 270
    .local v2, "index":I
    aget-byte v5, p1, v2

    if-nez v5, :cond_1

    move v0, v2

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_2

    aget v5, p0, v2

    if-ne v5, p2, :cond_2

    .line 273
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result v0

    goto :goto_0

    .line 276
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v4

    .line 277
    .local v4, "perturb":I
    move v3, v2

    .line 278
    .local v3, "j":I
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_4

    .line 280
    :cond_3
    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v3

    .line 281
    and-int v2, v3, p3

    .line 282
    shr-int/lit8 v4, v4, 0x5

    .line 284
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_4

    aget v5, p0, v2

    if-ne v5, p2, :cond_3

    .line 290
    :cond_4
    aget-byte v5, p1, v2

    if-nez v5, :cond_5

    move v0, v2

    .line 291
    goto :goto_0

    .line 292
    :cond_5
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_6

    .line 295
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_6
    move v0, v2

    .line 300
    .local v0, "firstRemoved":I
    :goto_1
    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v3

    .line 301
    and-int v2, v3, p3

    .line 303
    aget-byte v5, p1, v2

    if-eqz v5, :cond_0

    .line 305
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_7

    aget v5, p0, v2

    if-ne v5, p2, :cond_7

    .line 306
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result v0

    goto :goto_0

    .line 309
    :cond_7
    shr-int/lit8 v4, v4, 0x5

    goto :goto_1
.end method

.method private growTable()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 433
    iget-object v12, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    array-length v9, v12

    .line 434
    .local v9, "oldLength":I
    iget-object v8, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    .line 435
    .local v8, "oldKeys":[I
    iget-object v11, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    .line 436
    .local v11, "oldValues":[D
    iget-object v10, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    .line 438
    .local v10, "oldStates":[B
    mul-int/lit8 v4, v9, 0x2

    .line 439
    .local v4, "newLength":I
    new-array v3, v4, [I

    .line 440
    .local v3, "newKeys":[I
    new-array v7, v4, [D

    .line 441
    .local v7, "newValues":[D
    new-array v6, v4, [B

    .line 442
    .local v6, "newStates":[B
    add-int/lit8 v5, v4, -0x1

    .line 443
    .local v5, "newMask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 444
    aget-byte v12, v10, v0

    if-ne v12, v14, :cond_0

    .line 445
    aget v2, v8, v0

    .line 446
    .local v2, "key":I
    invoke-static {v3, v6, v2, v5}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->findInsertionIndex([I[BII)I

    move-result v1

    .line 447
    .local v1, "index":I
    aput v2, v3, v1

    .line 448
    aget-wide v12, v11, v0

    aput-wide v12, v7, v1

    .line 449
    aput-byte v14, v6, v1

    .line 443
    .end local v1    # "index":I
    .end local v2    # "key":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iput v5, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    .line 454
    iput-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    .line 455
    iput-object v7, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    .line 456
    iput-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    .line 458
    return-void
.end method

.method private static hashOf(I)I
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 474
    ushr-int/lit8 v1, p0, 0x14

    ushr-int/lit8 v2, p0, 0xc

    xor-int/2addr v1, v2

    xor-int v0, p0, v1

    .line 475
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    return v1
.end method

.method private static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static perturb(I)I
    .locals 1
    .param p0, "hash"    # I

    .prologue
    .line 246
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static probe(II)I
    .locals 1
    .param p0, "perturb"    # I
    .param p1, "j"    # I

    .prologue
    .line 322
    shl-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    .line 593
    return-void
.end method

.method private shouldGrowTable()Z
    .locals 3

    .prologue
    .line 465
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 7
    .param p1, "key"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    .line 207
    .local v0, "hash":I
    iget v6, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int v1, v0, v6

    .line 208
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v4

    .line 212
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v6, v6, v1

    if-nez v6, :cond_2

    move v4, v5

    .line 213
    goto :goto_0

    .line 216
    :cond_2
    move v2, v1

    .line 217
    .local v2, "j":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v3

    .local v3, "perturb":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v6, v6, v1

    if-eqz v6, :cond_3

    .line 218
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    .line 219
    iget v6, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int v1, v2, v6

    .line 220
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    shr-int/lit8 v3, v3, 0x5

    goto :goto_1

    :cond_3
    move v4, v5

    .line 225
    goto :goto_0
.end method

.method public get(I)D
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 176
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    .line 177
    .local v0, "hash":I
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int v1, v0, v4

    .line 178
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide v4, v4, v1

    .line 195
    :goto_0
    return-wide v4

    .line 182
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_1

    .line 183
    iget-wide v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    goto :goto_0

    .line 186
    :cond_1
    move v2, v1

    .line 187
    .local v2, "j":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v3

    .local v3, "perturb":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_3

    .line 188
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    .line 189
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int v1, v2, v4

    .line 190
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide v4, v4, v1

    goto :goto_0

    .line 187
    :cond_2
    shr-int/lit8 v3, v3, 0x5

    goto :goto_1

    .line 195
    :cond_3
    iget-wide v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    goto :goto_0
.end method

.method public iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$1;)V

    return-object v0
.end method

.method public put(ID)D
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # D

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->findInsertionIndex(I)I

    move-result v0

    .line 407
    .local v0, "index":I
    iget-wide v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    .line 408
    .local v2, "previous":D
    const/4 v1, 0x1

    .line 409
    .local v1, "newMapping":Z
    if-gez v0, :cond_0

    .line 410
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result v0

    .line 411
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide v2, v4, v0

    .line 412
    const/4 v1, 0x0

    .line 414
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    aput p1, v4, v0

    .line 415
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    const/4 v5, 0x1

    aput-byte v5, v4, v0

    .line 416
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aput-wide p2, v4, v0

    .line 417
    if-eqz v1, :cond_2

    .line 418
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    .line 419
    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->shouldGrowTable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->growTable()V

    .line 422
    :cond_1
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    .line 424
    :cond_2
    return-wide v2
.end method

.method public remove(I)D
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 350
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    .line 351
    .local v0, "hash":I
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int v1, v0, v4

    .line 352
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->doRemove(I)D

    move-result-wide v4

    .line 369
    :goto_0
    return-wide v4

    .line 356
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_1

    .line 357
    iget-wide v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    goto :goto_0

    .line 360
    :cond_1
    move v2, v1

    .line 361
    .local v2, "j":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v3

    .local v3, "perturb":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_3

    .line 362
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    .line 363
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int v1, v2, v4

    .line 364
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->doRemove(I)D

    move-result-wide v4

    goto :goto_0

    .line 361
    :cond_2
    shr-int/lit8 v3, v3, 0x5

    goto :goto_1

    .line 369
    :cond_3
    iget-wide v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    return v0
.end method
