.class public Lorg/apache/commons/math3/random/Well1024a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well1024a.java"


# static fields
.field private static final K:I = 0x400

.field private static final M1:I = 0x3

.field private static final M2:I = 0x18

.field private static final M3:I = 0xa

.field private static final serialVersionUID:J = 0x4ed407abbab85ff4L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    const/16 v0, 0x400

    const/4 v1, 0x3

    const/16 v2, 0x18

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "seed"    # I

    .prologue
    .line 63
    const/16 v1, 0x400

    const/4 v2, 0x3

    const/16 v3, 0x18

    const/16 v4, 0xa

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
    const/16 v2, 0x400

    const/4 v3, 0x3

    const/16 v4, 0x18

    const/16 v5, 0xa

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
    const/16 v1, 0x400

    const/4 v2, 0x3

    const/16 v3, 0x18

    const/16 v4, 0xa

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 13
    .param p1, "bits"    # I

    .prologue
    .line 85
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->iRm1:[I

    iget v11, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    aget v0, v10, v11

    .line 87
    .local v0, "indexRm1":I
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    iget v11, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    aget v1, v10, v11

    .line 88
    .local v1, "v0":I
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    iget-object v11, p0, Lorg/apache/commons/math3/random/Well1024a;->i1:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    aget v11, v11, v12

    aget v2, v10, v11

    .line 89
    .local v2, "vM1":I
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    iget-object v11, p0, Lorg/apache/commons/math3/random/Well1024a;->i2:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    aget v11, v11, v12

    aget v3, v10, v11

    .line 90
    .local v3, "vM2":I
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    iget-object v11, p0, Lorg/apache/commons/math3/random/Well1024a;->i3:[I

    iget v12, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    aget v11, v11, v12

    aget v4, v10, v11

    .line 92
    .local v4, "vM3":I
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    aget v5, v10, v0

    .line 93
    .local v5, "z0":I
    ushr-int/lit8 v10, v2, 0x8

    xor-int/2addr v10, v2

    xor-int v6, v1, v10

    .line 94
    .local v6, "z1":I
    shl-int/lit8 v10, v3, 0x13

    xor-int/2addr v10, v3

    shl-int/lit8 v11, v4, 0xe

    xor-int/2addr v11, v4

    xor-int v7, v10, v11

    .line 95
    .local v7, "z2":I
    xor-int v8, v6, v7

    .line 96
    .local v8, "z3":I
    shl-int/lit8 v10, v5, 0xb

    xor-int/2addr v10, v5

    shl-int/lit8 v11, v6, 0x7

    xor-int/2addr v11, v6

    xor-int/2addr v10, v11

    shl-int/lit8 v11, v7, 0xd

    xor-int/2addr v11, v7

    xor-int v9, v10, v11

    .line 98
    .local v9, "z4":I
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    iget v11, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    aput v8, v10, v11

    .line 99
    iget-object v10, p0, Lorg/apache/commons/math3/random/Well1024a;->v:[I

    aput v9, v10, v0

    .line 100
    iput v0, p0, Lorg/apache/commons/math3/random/Well1024a;->index:I

    .line 102
    rsub-int/lit8 v10, p1, 0x20

    ushr-int v10, v9, v10

    return v10
.end method
