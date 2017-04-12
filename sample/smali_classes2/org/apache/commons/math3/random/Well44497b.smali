.class public Lorg/apache/commons/math3/random/Well44497b;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well44497b.java"


# static fields
.field private static final K:I = 0xadd1

.field private static final M1:I = 0x17

.field private static final M2:I = 0x1e1

.field private static final M3:I = 0xe5

.field private static final serialVersionUID:J = 0x37f4917e58e3ec24L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    const v0, 0xadd1

    const/16 v1, 0x17

    const/16 v2, 0x1e1

    const/16 v3, 0xe5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "seed"    # I

    .prologue
    .line 63
    const v1, 0xadd1

    const/16 v2, 0x17

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    .line 64
    return-void
.end method

.method public constructor <init>(J)V
    .locals 9
    .param p1, "seed"    # J

    .prologue
    .line 78
    const v2, 0xadd1

    const/16 v3, 0x17

    const/16 v4, 0x1e1

    const/16 v5, 0xe5

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    .line 79
    return-void
.end method

.method public constructor <init>([I)V
    .locals 6
    .param p1, "seed"    # [I

    .prologue
    .line 71
    const v1, 0xadd1

    const/16 v2, 0x17

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 17
    .param p1, "bits"    # I

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->iRm1:[I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v1, v14, v15

    .line 88
    .local v1, "indexRm1":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->iRm2:[I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v2, v14, v15

    .line 90
    .local v2, "indexRm2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v3, v14, v15

    .line 91
    .local v3, "v0":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/random/Well44497b;->i1:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    move/from16 v16, v0

    aget v15, v15, v16

    aget v4, v14, v15

    .line 92
    .local v4, "vM1":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/random/Well44497b;->i2:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    move/from16 v16, v0

    aget v15, v15, v16

    aget v5, v14, v15

    .line 93
    .local v5, "vM2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/random/Well44497b;->i3:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    move/from16 v16, v0

    aget v15, v15, v16

    aget v6, v14, v15

    .line 96
    .local v6, "vM3":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aget v14, v14, v1

    and-int/lit16 v14, v14, -0x8000

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aget v15, v15, v2

    and-int/lit16 v15, v15, 0x7fff

    xor-int v7, v14, v15

    .line 97
    .local v7, "z0":I
    shl-int/lit8 v14, v3, 0x18

    xor-int/2addr v14, v3

    ushr-int/lit8 v15, v4, 0x1e

    xor-int/2addr v15, v4

    xor-int v8, v14, v15

    .line 98
    .local v8, "z1":I
    shl-int/lit8 v14, v5, 0xa

    xor-int/2addr v14, v5

    shl-int/lit8 v15, v6, 0x1a

    xor-int v9, v14, v15

    .line 99
    .local v9, "z2":I
    xor-int v12, v8, v9

    .line 100
    .local v12, "z3":I
    shl-int/lit8 v14, v9, 0x9

    ushr-int/lit8 v15, v9, 0x17

    xor-int/2addr v14, v15

    const v15, -0x4000001

    and-int v10, v14, v15

    .line 101
    .local v10, "z2Prime":I
    const/high16 v14, 0x20000

    and-int/2addr v14, v9

    if-eqz v14, :cond_0

    const v14, -0x48d60314

    xor-int v11, v10, v14

    .line 102
    .local v11, "z2Second":I
    :goto_0
    ushr-int/lit8 v14, v8, 0x14

    xor-int/2addr v14, v8

    xor-int/2addr v14, v7

    xor-int/2addr v14, v11

    xor-int v13, v14, v12

    .line 104
    .local v13, "z4":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aput v12, v14, v15

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aput v13, v14, v1

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aget v15, v14, v2

    and-int/lit16 v15, v15, -0x8000

    aput v15, v14, v2

    .line 107
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    .line 111
    shl-int/lit8 v14, v13, 0x7

    const v15, -0x6c22ec00

    and-int/2addr v14, v15

    xor-int/2addr v13, v14

    .line 112
    shl-int/lit8 v14, v13, 0xf

    const v15, -0x5ee8000

    and-int/2addr v14, v15

    xor-int/2addr v13, v14

    .line 114
    rsub-int/lit8 v14, p1, 0x20

    ushr-int v14, v13, v14

    return v14

    .end local v11    # "z2Second":I
    .end local v13    # "z4":I
    :cond_0
    move v11, v10

    .line 101
    goto :goto_0
.end method
