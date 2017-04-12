.class public Lorg/apache/commons/math3/random/MersenneTwister;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "MersenneTwister.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final M:I = 0x18d

.field private static final MAG01:[I

.field private static final N:I = 0x270

.field private static final serialVersionUID:J = 0x7832beb90773fa2eL


# instance fields
.field private mt:[I

.field private mti:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x66f74f21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 106
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "seed"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 114
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 131
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    .line 133
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "seed"    # [I

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 123
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    .line 125
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 12
    .param p1, "bits"    # I

    .prologue
    const/16 v11, 0x26f

    const v10, 0x7fffffff

    const/4 v9, 0x0

    const/high16 v8, -0x80000000

    .line 232
    iget v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v5, 0x270

    if-lt v4, v5, :cond_2

    .line 233
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v2, v4, v9

    .line 234
    .local v2, "mtNext":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/16 v4, 0xe3

    if-ge v0, v4, :cond_0

    .line 235
    move v1, v2

    .line 236
    .local v1, "mtCurr":I
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v5, v0, 0x1

    aget v2, v4, v5

    .line 237
    and-int v4, v1, v8

    and-int v5, v2, v10

    or-int v3, v4, v5

    .line 238
    .local v3, "y":I
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit16 v6, v0, 0x18d

    aget v5, v5, v6

    ushr-int/lit8 v6, v3, 0x1

    xor-int/2addr v5, v6

    sget-object v6, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "mtCurr":I
    .end local v3    # "y":I
    :cond_0
    const/16 v0, 0xe3

    :goto_1
    if-ge v0, v11, :cond_1

    .line 241
    move v1, v2

    .line 242
    .restart local v1    # "mtCurr":I
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v5, v0, 0x1

    aget v2, v4, v5

    .line 243
    and-int v4, v1, v8

    and-int v5, v2, v10

    or-int v3, v4, v5

    .line 244
    .restart local v3    # "y":I
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit16 v6, v0, -0xe3

    aget v5, v5, v6

    ushr-int/lit8 v6, v3, 0x1

    xor-int/2addr v5, v6

    sget-object v6, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    .end local v1    # "mtCurr":I
    .end local v3    # "y":I
    :cond_1
    and-int v4, v2, v8

    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v5, v5, v9

    and-int/2addr v5, v10

    or-int v3, v4, v5

    .line 247
    .restart local v3    # "y":I
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/16 v6, 0x18c

    aget v5, v5, v6

    ushr-int/lit8 v6, v3, 0x1

    xor-int/2addr v5, v6

    sget-object v6, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v11

    .line 249
    iput v9, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    .line 252
    .end local v0    # "k":I
    .end local v2    # "mtNext":I
    .end local v3    # "y":I
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    aget v3, v4, v5

    .line 255
    .restart local v3    # "y":I
    ushr-int/lit8 v4, v3, 0xb

    xor-int/2addr v3, v4

    .line 256
    shl-int/lit8 v4, v3, 0x7

    const v5, -0x62d3a980

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    .line 257
    shl-int/lit8 v4, v3, 0xf

    const/high16 v5, -0x103a0000

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    .line 258
    ushr-int/lit8 v4, v3, 0x12

    xor-int/2addr v3, v4

    .line 260
    rsub-int/lit8 v4, p1, 0x20

    ushr-int v4, v3, v4

    return v4
.end method

.method public setSeed(I)V
    .locals 6
    .param p1, "seed"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    .line 145
    .local v0, "longMT":J
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v3, 0x0

    long-to-int v4, v0

    aput v4, v2, v3

    .line 146
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v3, 0x270

    if-ge v2, v3, :cond_0

    .line 149
    const-wide/32 v2, 0x6c078965

    const/16 v4, 0x1e

    shr-long v4, v0, v4

    xor-long/2addr v4, v0

    mul-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long v0, v2, v4

    .line 150
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    long-to-int v4, v0

    aput v4, v2, v3

    .line 146
    iget v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    .line 154
    return-void
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    .line 216
    return-void
.end method

.method public setSeed([I)V
    .locals 14
    .param p1, "seed"    # [I

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v12, v3

    add-long/2addr v10, v12

    invoke-virtual {p0, v10, v11}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    .line 206
    :goto_0
    return-void

    .line 171
    :cond_0
    const v3, 0x12bd6aa

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, "i":I
    const/4 v1, 0x0

    .line 175
    .local v1, "j":I
    const/16 v3, 0x270

    array-length v10, p1

    invoke-static {v3, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    .local v2, "k":I
    :goto_1
    if-eqz v2, :cond_5

    .line 176
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v3, v3, v0

    int-to-long v10, v3

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v12, v10

    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v3, v3, v0

    if-gez v3, :cond_3

    const-wide v10, 0x80000000L

    :goto_2
    or-long v6, v12, v10

    .line 177
    .local v6, "l0":J
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v10, v0, -0x1

    aget v3, v3, v10

    int-to-long v10, v3

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v12, v10

    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v10, v0, -0x1

    aget v3, v3, v10

    if-gez v3, :cond_4

    const-wide v10, 0x80000000L

    :goto_3
    or-long v8, v12, v10

    .line 178
    .local v8, "l1":J
    const/16 v3, 0x1e

    shr-long v10, v8, v3

    xor-long/2addr v10, v8

    const-wide/32 v12, 0x19660d

    mul-long/2addr v10, v12

    xor-long/2addr v10, v6

    aget v3, p1, v1

    int-to-long v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v1

    add-long v4, v10, v12

    .line 179
    .local v4, "l":J
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v4

    long-to-int v10, v10

    aput v10, v3, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 181
    const/16 v3, 0x270

    if-lt v0, v3, :cond_1

    .line 182
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/16 v12, 0x26f

    aget v11, v11, v12

    aput v11, v3, v10

    .line 183
    const/4 v0, 0x1

    .line 185
    :cond_1
    array-length v3, p1

    if-lt v1, v3, :cond_2

    .line 186
    const/4 v1, 0x0

    .line 175
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 176
    .end local v4    # "l":J
    .end local v6    # "l0":J
    .end local v8    # "l1":J
    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 177
    .restart local v6    # "l0":J
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 190
    .end local v6    # "l0":J
    :cond_5
    const/16 v2, 0x26f

    :goto_4
    if-eqz v2, :cond_9

    .line 191
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v3, v3, v0

    int-to-long v10, v3

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v12, v10

    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v3, v3, v0

    if-gez v3, :cond_7

    const-wide v10, 0x80000000L

    :goto_5
    or-long v6, v12, v10

    .line 192
    .restart local v6    # "l0":J
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v10, v0, -0x1

    aget v3, v3, v10

    int-to-long v10, v3

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v12, v10

    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v10, v0, -0x1

    aget v3, v3, v10

    if-gez v3, :cond_8

    const-wide v10, 0x80000000L

    :goto_6
    or-long v8, v12, v10

    .line 193
    .restart local v8    # "l1":J
    const/16 v3, 0x1e

    shr-long v10, v8, v3

    xor-long/2addr v10, v8

    const-wide/32 v12, 0x5d588b65

    mul-long/2addr v10, v12

    xor-long/2addr v10, v6

    int-to-long v12, v0

    sub-long v4, v10, v12

    .line 194
    .restart local v4    # "l":J
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v4

    long-to-int v10, v10

    aput v10, v3, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 196
    const/16 v3, 0x270

    if-lt v0, v3, :cond_6

    .line 197
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/16 v12, 0x26f

    aget v11, v11, v12

    aput v11, v3, v10

    .line 198
    const/4 v0, 0x1

    .line 190
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 191
    .end local v4    # "l":J
    .end local v6    # "l0":J
    .end local v8    # "l1":J
    :cond_7
    const-wide/16 v10, 0x0

    goto :goto_5

    .line 192
    .restart local v6    # "l0":J
    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_6

    .line 202
    .end local v6    # "l0":J
    :cond_9
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v10, 0x0

    const/high16 v11, -0x80000000

    aput v11, v3, v10

    .line 204
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    goto/16 :goto_0
.end method
