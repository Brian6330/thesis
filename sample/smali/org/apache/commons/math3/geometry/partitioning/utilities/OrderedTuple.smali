.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;
.super Ljava/lang/Object;
.source "OrderedTuple.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field private static final IMPLICIT_ONE:J = 0x10000000000000L

.field private static final MANTISSA_MASK:J = 0xfffffffffffffL

.field private static final SIGN_MASK:J = -0x8000000000000000L


# instance fields
.field private components:[D

.field private encoding:[J

.field private lsb:I

.field private nan:Z

.field private negInf:Z

.field private offset:I

.field private posInf:Z


# direct methods
.method public varargs constructor <init>([D)V
    .locals 12
    .param p1, "components"    # [D

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    iput-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    .line 136
    const/high16 v6, -0x80000000

    .line 137
    .local v6, "msb":I
    const v7, 0x7fffffff

    iput v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    .line 138
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    .line 139
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 140
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    .line 141
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_4

    .line 142
    aget-wide v8, p1, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    aget-wide v8, p1, v3

    const-wide/16 v10, 0x0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_1

    .line 144
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 141
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    goto :goto_1

    .line 148
    :cond_2
    aget-wide v8, p1, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    goto :goto_1

    .line 151
    :cond_3
    aget-wide v8, p1, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 152
    .local v0, "b":J
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v4

    .line 153
    .local v4, "m":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    .line 154
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->exponent(J)I

    move-result v2

    .line 155
    .local v2, "e":I
    invoke-static {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->computeMSB(J)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    .line 156
    iget v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->computeLSB(J)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    goto :goto_1

    .line 161
    .end local v0    # "b":J
    .end local v2    # "e":I
    .end local v4    # "m":J
    :cond_4
    iget-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v7, :cond_5

    .line 163
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    .line 164
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 165
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    .line 168
    :cond_5
    iget v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    if-gt v7, v6, :cond_6

    .line 170
    add-int/lit8 v7, v6, 0x10

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    .line 177
    :goto_2
    return-void

    .line 172
    :cond_6
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v8

    iput-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    goto :goto_2
.end method

.method private static computeLSB(J)I
    .locals 8
    .param p0, "l"    # J

    .prologue
    .line 392
    move-wide v0, p0

    .line 393
    .local v0, "ll":J
    const-wide v4, -0x100000000L

    .line 394
    .local v4, "mask":J
    const/16 v3, 0x20

    .line 395
    .local v3, "scale":I
    const/4 v2, 0x0

    .line 397
    .local v2, "lsb":I
    :goto_0
    if-eqz v3, :cond_1

    .line 398
    and-long v6, v0, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 399
    or-int/2addr v2, v3

    .line 400
    shr-long/2addr v0, v3

    .line 402
    :cond_0
    shr-int/lit8 v3, v3, 0x1

    .line 403
    shr-long/2addr v4, v3

    goto :goto_0

    .line 406
    :cond_1
    return v2
.end method

.method private static computeMSB(J)I
    .locals 8
    .param p0, "l"    # J

    .prologue
    .line 366
    move-wide v0, p0

    .line 367
    .local v0, "ll":J
    const-wide v2, 0xffffffffL

    .line 368
    .local v2, "mask":J
    const/16 v5, 0x20

    .line 369
    .local v5, "scale":I
    const/4 v4, 0x0

    .line 371
    .local v4, "msb":I
    :goto_0
    if-eqz v5, :cond_1

    .line 372
    and-long v6, v0, v2

    cmp-long v6, v6, v0

    if-eqz v6, :cond_0

    .line 373
    or-int/2addr v4, v5

    .line 374
    shr-long/2addr v0, v5

    .line 376
    :cond_0
    shr-int/lit8 v5, v5, 0x1

    .line 377
    shr-long/2addr v2, v5

    goto :goto_0

    .line 380
    :cond_1
    return v4
.end method

.method private encode(I)V
    .locals 14
    .param p1, "minOffset"    # I

    .prologue
    .line 186
    add-int/lit8 v10, p1, 0x1f

    iput v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .line 187
    iget v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v11, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    rem-int/lit8 v11, v11, 0x20

    sub-int/2addr v10, v11

    iput v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .line 189
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 217
    :cond_0
    return-void

    .line 196
    :cond_1
    iget v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    sub-int v3, v10, v11

    .line 197
    .local v3, "neededBits":I
    add-int/lit8 v10, v3, 0x3e

    div-int/lit8 v4, v10, 0x3f

    .line 198
    .local v4, "neededLongs":I
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v10, v10

    mul-int/2addr v10, v4

    new-array v10, v10, [J

    iput-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "eIndex":I
    const/16 v5, 0x3e

    .line 203
    .local v5, "shift":I
    const-wide/16 v8, 0x0

    .line 204
    .local v8, "word":J
    iget v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .local v2, "k":I
    :goto_0
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v10, v10

    if-ge v0, v10, :cond_0

    .line 205
    const/4 v7, 0x0

    .local v7, "vIndex":I
    :goto_1
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v10, v10

    if-ge v7, v10, :cond_3

    .line 206
    invoke-direct {p0, v7, v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->getBit(II)I

    move-result v10

    if-eqz v10, :cond_2

    .line 207
    const-wide/16 v10, 0x1

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    .line 209
    :cond_2
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "shift":I
    .local v6, "shift":I
    if-nez v5, :cond_4

    .line 210
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "eIndex":I
    .local v1, "eIndex":I
    aput-wide v8, v10, v0

    .line 211
    const-wide/16 v8, 0x0

    .line 212
    const/16 v5, 0x3e

    .end local v6    # "shift":I
    .restart local v5    # "shift":I
    move v0, v1

    .line 205
    .end local v1    # "eIndex":I
    .restart local v0    # "eIndex":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 204
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v5    # "shift":I
    .restart local v6    # "shift":I
    :cond_4
    move v5, v6

    .end local v6    # "shift":I
    .restart local v5    # "shift":I
    goto :goto_2
.end method

.method private static exponent(J)I
    .locals 4
    .param p0, "bits"    # J

    .prologue
    .line 345
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, p0

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x433

    return v0
.end method

.method private getBit(II)I
    .locals 12
    .param p1, "i"    # I
    .param p2, "k"    # I

    .prologue
    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    .line 417
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    aget-wide v8, v7, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 418
    .local v0, "bits":J
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->exponent(J)I

    move-result v2

    .line 419
    .local v2, "e":I
    if-lt p2, v2, :cond_0

    iget v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-le p2, v7, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v6

    .line 421
    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-ne p2, v7, :cond_3

    .line 422
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    :goto_1
    move v6, v3

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    .line 423
    :cond_3
    add-int/lit8 v7, v2, 0x34

    if-le p2, v7, :cond_4

    .line 424
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    move v6, v3

    goto :goto_0

    .line 426
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-nez v3, :cond_5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v4

    .line 427
    .local v4, "m":J
    :goto_2
    sub-int v3, p2, v2

    shr-long v6, v4, v3

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    long-to-int v6, v6

    goto :goto_0

    .line 426
    .end local v4    # "m":J
    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v6

    neg-long v4, v6

    goto :goto_2
.end method

.method private static mantissa(J)J
    .locals 6
    .param p0, "bits"    # J

    .prologue
    const-wide v4, 0xfffffffffffffL

    .line 353
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    and-long v0, p0, v4

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x10000000000000L

    and-long v2, p0, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method private static sign(J)J
    .locals 2
    .param p0, "bits"    # J

    .prologue
    .line 337
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I
    .locals 8
    .param p1, "ot"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 250
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v4, v4

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v5, v5

    if-ne v4, v5, :cond_a

    .line 251
    iget-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    if-eqz v4, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v2

    .line 253
    :cond_1
    iget-boolean v4, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 254
    goto :goto_0

    .line 255
    :cond_2
    iget-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-nez v4, :cond_3

    iget-boolean v4, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    .line 256
    goto :goto_0

    .line 257
    :cond_4
    iget-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-nez v4, :cond_0

    iget-boolean v4, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-nez v4, :cond_0

    .line 261
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v5, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-ge v4, v5, :cond_6

    .line 262
    iget v4, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    .line 267
    :cond_5
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v4, v4

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v5, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    .line 268
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_8

    .line 269
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v4, v4, v0

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    move v2, v3

    .line 270
    goto :goto_0

    .line 263
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :cond_6
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v5, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-le v4, v5, :cond_5

    .line 264
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    invoke-direct {p1, v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    goto :goto_1

    .line 271
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    :cond_7
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v4, v4, v0

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 276
    :cond_8
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v4, v4

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v5, v5

    if-ge v4, v5, :cond_9

    move v2, v3

    .line 277
    goto :goto_0

    .line 278
    :cond_9
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v3, v3

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v4, v4

    if-gt v3, v4, :cond_0

    .line 281
    const/4 v2, 0x0

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :cond_a
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v2, v2

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v3, v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    if-ne p0, p1, :cond_1

    .line 299
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 296
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    if-eqz v2, :cond_2

    .line 297
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 299
    goto :goto_0
.end method

.method public getComponents()[D
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v5, 0x61

    const/16 v6, 0x47

    .line 307
    const/16 v2, 0x25

    .line 308
    .local v2, "multiplier":I
    const/16 v3, 0x61

    .line 309
    .local v3, "trueHash":I
    const/16 v0, 0x47

    .line 314
    .local v0, "falseHash":I
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    .line 315
    .local v1, "hash":I
    mul-int/lit8 v4, v1, 0x25

    iget v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    add-int v1, v4, v7

    .line 316
    mul-int/lit8 v4, v1, 0x25

    iget v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    add-int v1, v4, v7

    .line 317
    mul-int/lit8 v7, v1, 0x25

    iget-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    add-int v1, v7, v4

    .line 318
    mul-int/lit8 v7, v1, 0x25

    iget-boolean v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    add-int v1, v7, v4

    .line 319
    mul-int/lit8 v4, v1, 0x25

    iget-boolean v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    if-eqz v7, :cond_2

    :goto_2
    add-int v1, v4, v5

    .line 321
    return v1

    :cond_0
    move v4, v6

    .line 317
    goto :goto_0

    :cond_1
    move v4, v6

    .line 318
    goto :goto_1

    :cond_2
    move v5, v6

    .line 319
    goto :goto_2
.end method
