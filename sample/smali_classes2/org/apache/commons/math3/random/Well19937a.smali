.class public Lorg/apache/commons/math3/random/Well19937a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well19937a.java"


# static fields
.field private static final K:I = 0x4de1

.field private static final M1:I = 0x46

.field private static final M2:I = 0xb3

.field private static final M3:I = 0x1c1

.field private static final serialVersionUID:J = -0x678eb66171065afbL


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    const/16 v0, 0x4de1

    const/16 v1, 0x46

    const/16 v2, 0xb3

    const/16 v3, 0x1c1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "seed"    # I

    .prologue
    .line 63
    const/16 v1, 0x4de1

    const/16 v2, 0x46

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

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
    const/16 v2, 0x4de1

    const/16 v3, 0x46

    const/16 v4, 0xb3

    const/16 v5, 0x1c1

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
    const/16 v1, 0x4de1

    const/16 v2, 0x46

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 14
    .param p1, "bits"    # I

    .prologue
    .line 85
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->iRm1:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aget v0, v11, v12

    .line 86
    .local v0, "indexRm1":I
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->iRm2:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aget v1, v11, v12

    .line 88
    .local v1, "indexRm2":I
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aget v2, v11, v12

    .line 89
    .local v2, "v0":I
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    iget-object v12, p0, Lorg/apache/commons/math3/random/Well19937a;->i1:[I

    iget v13, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aget v12, v12, v13

    aget v3, v11, v12

    .line 90
    .local v3, "vM1":I
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    iget-object v12, p0, Lorg/apache/commons/math3/random/Well19937a;->i2:[I

    iget v13, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aget v12, v12, v13

    aget v4, v11, v12

    .line 91
    .local v4, "vM2":I
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    iget-object v12, p0, Lorg/apache/commons/math3/random/Well19937a;->i3:[I

    iget v13, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aget v12, v12, v13

    aget v5, v11, v12

    .line 93
    .local v5, "vM3":I
    const/high16 v11, -0x80000000

    iget-object v12, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    aget v12, v12, v0

    and-int/2addr v11, v12

    const v12, 0x7fffffff

    iget-object v13, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    aget v13, v13, v1

    and-int/2addr v12, v13

    xor-int v6, v11, v12

    .line 94
    .local v6, "z0":I
    shl-int/lit8 v11, v2, 0x19

    xor-int/2addr v11, v2

    ushr-int/lit8 v12, v3, 0x1b

    xor-int/2addr v12, v3

    xor-int v7, v11, v12

    .line 95
    .local v7, "z1":I
    ushr-int/lit8 v11, v4, 0x9

    ushr-int/lit8 v12, v5, 0x1

    xor-int/2addr v12, v5

    xor-int v8, v11, v12

    .line 96
    .local v8, "z2":I
    xor-int v9, v7, v8

    .line 97
    .local v9, "z3":I
    shl-int/lit8 v11, v7, 0x9

    xor-int/2addr v11, v7

    xor-int/2addr v11, v6

    shl-int/lit8 v12, v8, 0x15

    xor-int/2addr v12, v8

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x15

    xor-int/2addr v12, v9

    xor-int v10, v11, v12

    .line 99
    .local v10, "z4":I
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    aput v9, v11, v12

    .line 100
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    aput v10, v11, v0

    .line 101
    iget-object v11, p0, Lorg/apache/commons/math3/random/Well19937a;->v:[I

    aget v12, v11, v1

    const/high16 v13, -0x80000000

    and-int/2addr v12, v13

    aput v12, v11, v1

    .line 102
    iput v0, p0, Lorg/apache/commons/math3/random/Well19937a;->index:I

    .line 104
    rsub-int/lit8 v11, p1, 0x20

    ushr-int v11, v10, v11

    return v11
.end method
