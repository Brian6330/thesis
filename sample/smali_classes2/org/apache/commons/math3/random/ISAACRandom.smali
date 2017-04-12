.class public Lorg/apache/commons/math3/random/ISAACRandom;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "ISAACRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GLD_RATIO:I = -0x61c88647

.field private static final H_SIZE:I = 0x80

.field private static final MASK:I = 0x3fc

.field private static final SIZE:I = 0x100

.field private static final SIZE_L:I = 0x8

.field private static final serialVersionUID:J = 0x6524e169b7df8ea0L


# instance fields
.field private final arr:[I

.field private count:I

.field private isaacA:I

.field private isaacB:I

.field private isaacC:I

.field private isaacI:I

.field private isaacJ:I

.field private isaacX:I

.field private final mem:[I

.field private final rsl:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x100

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 59
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    .line 86
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "seed"    # J

    .prologue
    const/16 v1, 0x100

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 59
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    .line 95
    return-void
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "seed"    # [I

    .prologue
    const/16 v1, 0x100

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 59
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    .line 105
    return-void
.end method

.method private initState()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 191
    iput v6, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 192
    iput v6, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 193
    iput v6, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    .line 194
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const v2, -0x61c88647

    aput v2, v1, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    .line 198
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    .line 202
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v6

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 203
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v8

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v8

    .line 204
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v9

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v9

    .line 205
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v10

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v10

    .line 206
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v7

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v4, v0, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v7

    .line 207
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x5

    aget v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v5, v0, 0x5

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 208
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x6

    aget v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v5, v0, 0x6

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 209
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x7

    aget v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v5, v0, 0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 210
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 211
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/ISAACRandom;->setState(I)V

    .line 201
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 214
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x100

    if-ge v0, v1, :cond_3

    .line 215
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v6

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 216
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v8

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v8

    .line 217
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v9

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v9

    .line 218
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v10

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v10

    .line 219
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v1, v7

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v4, v0, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v7

    .line 220
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x5

    aget v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v5, v0, 0x5

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 221
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x6

    aget v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v5, v0, 0x6

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 222
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x7

    aget v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v5, v0, 0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 223
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 224
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/ISAACRandom;->setState(I)V

    .line 214
    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    .line 226
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac()V

    .line 227
    const/16 v1, 0xff

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->clear()V

    .line 229
    return-void
.end method

.method private isaac()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x80

    .line 150
    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    .line 151
    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    .line 152
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 153
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    if-ge v0, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac2()V

    goto :goto_0

    .line 156
    :cond_0
    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    .line 157
    :goto_1
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    if-ge v0, v2, :cond_1

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac2()V

    goto :goto_1

    .line 160
    :cond_1
    return-void
.end method

.method private isaac2()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 165
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    shl-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 166
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 167
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 169
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    ushr-int/lit8 v1, v1, 0x6

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 170
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 173
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 174
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 175
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 177
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 178
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 179
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 180
    return-void
.end method

.method private isaac3()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    and-int/lit16 v3, v3, 0x3fc

    shr-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0x3fc

    shr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    aput v2, v0, v1

    .line 187
    return-void
.end method

.method private setState(I)V
    .locals 4
    .param p1, "start"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, p1

    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 266
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x5

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x6

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 271
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x7

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 272
    return-void
.end method

.method private shuffle()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v5

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v6

    shl-int/lit8 v2, v2, 0xb

    xor-int/2addr v1, v2

    aput v1, v0, v5

    .line 234
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v4

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 235
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 236
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v7

    ushr-int/lit8 v2, v2, 0x2

    xor-int/2addr v1, v2

    aput v1, v0, v6

    .line 237
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v8

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v7

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 239
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v7

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v4

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    aput v1, v0, v7

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v4

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v8

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 242
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v4

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v8

    ushr-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    aput v1, v0, v4

    .line 243
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 244
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v8

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 245
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v8

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xa

    xor-int/2addr v1, v2

    aput v1, v0, v8

    .line 246
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v3, v8

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v5

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 252
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 253
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v3, v5

    ushr-int/lit8 v3, v3, 0x9

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 255
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v7

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 256
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v1, v0, v5

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 257
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 3
    .param p1, "bits"    # I

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    if-gez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac()V

    .line 143
    const/16 v0, 0xff

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    aget v0, v0, v1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    return v0
.end method

.method public setSeed(I)V
    .locals 2
    .param p1, "seed"    # I

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    .line 111
    return-void
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 116
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

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    .line 117
    return-void
.end method

.method public setSeed([I)V
    .locals 10
    .param p1, "seed"    # [I

    .prologue
    const/4 v7, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    array-length v4, p1

    .line 127
    .local v4, "seedLen":I
    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    array-length v1, v5

    .line 128
    .local v1, "rslLen":I
    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    invoke-static {v4, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    if-ge v4, v1, :cond_1

    .line 130
    move v0, v4

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 131
    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    sub-int v6, v0, v4

    aget v5, v5, v6

    int-to-long v2, v5

    .line 132
    .local v2, "k":J
    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    const-wide/32 v6, 0x6c078965

    const/16 v8, 0x1e

    shr-long v8, v2, v8

    xor-long/2addr v8, v2

    mul-long/2addr v6, v8

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "j":I
    .end local v2    # "k":J
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->initState()V

    goto :goto_0
.end method
