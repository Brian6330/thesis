.class public Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
.super Ljava/lang/Object;
.source "OpenIntToFieldHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$1;,
        Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
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

.field private static final serialVersionUID:J = -0x7f62a4e3566eb9d0L


# instance fields
.field private transient count:I

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private keys:[I

.field private mask:I

.field private final missingEntries:Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private size:I

.field private states:[B

.field private values:[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/16 v1, 0x10

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 1
    .param p2, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .param p2, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;ITT;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "missingEntries":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    .line 129
    invoke-static {p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->computeCapacity(I)I

    move-result v0

    .line 130
    .local v0, "capacity":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 131
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->buildArray(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 132
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    .line 133
    iput-object p3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    .line 134
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "missingEntries":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    .local p1, "source":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    .line 143
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    array-length v0, v1

    .line 144
    .local v0, "length":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 145
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->buildArray(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 147
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    .line 149
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget-object v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    .line 151
    iget v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    .line 152
    iget v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    .line 153
    iget v1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    .line 154
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .prologue
    .line 40
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    return-object v0
.end method

.method private buildArray(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method private static changeIndexSign(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 344
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static computeCapacity(I)I
    .locals 4
    .param p0, "expectedSize"    # I

    .prologue
    .line 162
    if-nez p0, :cond_1

    .line 163
    const/4 v0, 0x1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    int-to-float v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 166
    .local v0, "capacity":I
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 167
    .local v1, "powerOfTwo":I
    if-eq v1, v0, :cond_0

    .line 170
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->nextPowerOfTwo(I)I

    move-result v0

    goto :goto_0
.end method

.method private containsKey(II)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    const/4 v0, 0x1

    .line 394
    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v1, v1, p2

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    aget v1, v1, p2

    if-ne v1, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doRemove(I)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    .line 404
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    const/4 v2, 0x2

    aput-byte v2, v1, p1

    .line 405
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v1, p1

    .line 406
    .local v0, "previous":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, p1

    .line 407
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    .line 408
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    .line 409
    return-object v0
.end method

.method private findInsertionIndex(I)I
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    invoke-static {v0, v1, p1, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->findInsertionIndex([I[BII)I

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

    .line 281
    invoke-static {p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v1

    .line 282
    .local v1, "hash":I
    and-int v2, v1, p3

    .line 283
    .local v2, "index":I
    aget-byte v5, p1, v2

    if-nez v5, :cond_1

    move v0, v2

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_2

    aget v5, p0, v2

    if-ne v5, p2, :cond_2

    .line 286
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result v0

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v4

    .line 290
    .local v4, "perturb":I
    move v3, v2

    .line 291
    .local v3, "j":I
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_4

    .line 293
    :cond_3
    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v3

    .line 294
    and-int v2, v3, p3

    .line 295
    shr-int/lit8 v4, v4, 0x5

    .line 297
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_4

    aget v5, p0, v2

    if-ne v5, p2, :cond_3

    .line 303
    :cond_4
    aget-byte v5, p1, v2

    if-nez v5, :cond_5

    move v0, v2

    .line 304
    goto :goto_0

    .line 305
    :cond_5
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_6

    .line 308
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result v0

    goto :goto_0

    .line 311
    :cond_6
    move v0, v2

    .line 313
    .local v0, "firstRemoved":I
    :goto_1
    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v3

    .line 314
    and-int v2, v3, p3

    .line 316
    aget-byte v5, p1, v2

    if-eqz v5, :cond_0

    .line 318
    aget-byte v5, p1, v2

    if-ne v5, v6, :cond_7

    aget v5, p0, v2

    if-ne v5, p2, :cond_7

    .line 319
    invoke-static {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result v0

    goto :goto_0

    .line 322
    :cond_7
    shr-int/lit8 v4, v4, 0x5

    goto :goto_1
.end method

.method private growTable()V
    .locals 14

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    const/4 v13, 0x1

    .line 446
    iget-object v12, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    array-length v9, v12

    .line 447
    .local v9, "oldLength":I
    iget-object v8, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 448
    .local v8, "oldKeys":[I
    iget-object v11, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 449
    .local v11, "oldValues":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v10, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    .line 451
    .local v10, "oldStates":[B
    mul-int/lit8 v4, v9, 0x2

    .line 452
    .local v4, "newLength":I
    new-array v3, v4, [I

    .line 453
    .local v3, "newKeys":[I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->buildArray(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    .line 454
    .local v7, "newValues":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    new-array v6, v4, [B

    .line 455
    .local v6, "newStates":[B
    add-int/lit8 v5, v4, -0x1

    .line 456
    .local v5, "newMask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 457
    aget-byte v12, v10, v0

    if-ne v12, v13, :cond_0

    .line 458
    aget v2, v8, v0

    .line 459
    .local v2, "key":I
    invoke-static {v3, v6, v2, v5}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->findInsertionIndex([I[BII)I

    move-result v1

    .line 460
    .local v1, "index":I
    aput v2, v3, v1

    .line 461
    aget-object v12, v11, v0

    aput-object v12, v7, v1

    .line 462
    aput-byte v13, v6, v1

    .line 456
    .end local v1    # "index":I
    .end local v2    # "key":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    iput v5, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    .line 467
    iput-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 468
    iput-object v7, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 469
    iput-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    .line 471
    return-void
.end method

.method private static hashOf(I)I
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 487
    ushr-int/lit8 v1, p0, 0x14

    ushr-int/lit8 v2, p0, 0xc

    xor-int/2addr v1, v2

    xor-int v0, p0, v1

    .line 488
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
    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static perturb(I)I
    .locals 1
    .param p0, "hash"    # I

    .prologue
    .line 259
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static probe(II)I
    .locals 1
    .param p0, "perturb"    # I
    .param p1, "j"    # I

    .prologue
    .line 335
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
    .line 604
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    .line 606
    return-void
.end method

.method private shouldGrowTable()Z
    .locals 3

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

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
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    .line 220
    .local v0, "hash":I
    iget v6, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int v1, v0, v6

    .line 221
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v4

    .line 225
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v6, v6, v1

    if-nez v6, :cond_2

    move v4, v5

    .line 226
    goto :goto_0

    .line 229
    :cond_2
    move v2, v1

    .line 230
    .local v2, "j":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v3

    .local v3, "perturb":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v6, v6, v1

    if-eqz v6, :cond_3

    .line 231
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    .line 232
    iget v6, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int v1, v2, v6

    .line 233
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 230
    shr-int/lit8 v3, v3, 0x5

    goto :goto_1

    :cond_3
    move v4, v5

    .line 238
    goto :goto_0
.end method

.method public get(I)Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    .line 190
    .local v0, "hash":I
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int v1, v0, v4

    .line 191
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    .line 208
    :goto_0
    return-object v4

    .line 195
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_1

    .line 196
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 199
    :cond_1
    move v2, v1

    .line 200
    .local v2, "j":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v3

    .local v3, "perturb":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_3

    .line 201
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    .line 202
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int v1, v2, v4

    .line 203
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    goto :goto_0

    .line 200
    :cond_2
    shr-int/lit8 v3, v3, 0x5

    goto :goto_1

    .line 208
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method

.method public iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap",
            "<TT;>.Iterator;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$1;)V

    return-object v0
.end method

.method public put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    .local p2, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->findInsertionIndex(I)I

    move-result v0

    .line 420
    .local v0, "index":I
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    .line 421
    .local v2, "previous":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x1

    .line 422
    .local v1, "newMapping":Z
    if-gez v0, :cond_0

    .line 423
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result v0

    .line 424
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v3, v0

    .line 425
    const/4 v1, 0x0

    .line 427
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    aput p1, v3, v0

    .line 428
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    const/4 v4, 0x1

    aput-byte v4, v3, v0

    .line 429
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aput-object p2, v3, v0

    .line 430
    if-eqz v1, :cond_2

    .line 431
    iget v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    .line 432
    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->shouldGrowTable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->growTable()V

    .line 435
    :cond_1
    iget v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    .line 437
    :cond_2
    return-object v2
.end method

.method public remove(I)Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    .line 364
    .local v0, "hash":I
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int v1, v0, v4

    .line 365
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->doRemove(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    .line 382
    :goto_0
    return-object v4

    .line 369
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_1

    .line 370
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 373
    :cond_1
    move v2, v1

    .line 374
    .local v2, "j":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v3

    .local v3, "perturb":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_3

    .line 375
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    .line 376
    iget v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int v1, v2, v4

    .line 377
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->doRemove(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    goto :goto_0

    .line 374
    :cond_2
    shr-int/lit8 v3, v3, 0x5

    goto :goto_1

    .line 382
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    return v0
.end method
