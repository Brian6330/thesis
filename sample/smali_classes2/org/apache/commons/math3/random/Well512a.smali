.class public Lorg/apache/commons/math3/random/Well512a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well512a.java"


# static fields
.field private static final K:I = 0x200

.field private static final M1:I = 0xd

.field private static final M2:I = 0x9

.field private static final M3:I = 0x5

.field private static final serialVersionUID:J = -0x54b66732a18f151eL


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    const/16 v0, 0x200

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "seed"    # I

    .prologue
    .line 63
    const/16 v1, 0x200

    const/16 v2, 0xd

    const/16 v3, 0x9

    const/4 v4, 0x5

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
    const/16 v2, 0x200

    const/16 v3, 0xd

    const/16 v4, 0x9

    const/4 v5, 0x5

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
    const/16 v1, 0x200

    const/16 v2, 0xd

    const/16 v3, 0x9

    const/4 v4, 0x5

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 12
    .param p1, "bits"    # I

    .prologue
    .line 85
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->iRm1:[I

    iget v10, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v0, v9, v10

    .line 87
    .local v0, "indexRm1":I
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget v10, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v1, v9, v10

    .line 88
    .local v1, "vi":I
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget-object v10, p0, Lorg/apache/commons/math3/random/Well512a;->i1:[I

    iget v11, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v10, v10, v11

    aget v2, v9, v10

    .line 89
    .local v2, "vi1":I
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget-object v10, p0, Lorg/apache/commons/math3/random/Well512a;->i2:[I

    iget v11, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v10, v10, v11

    aget v3, v9, v10

    .line 90
    .local v3, "vi2":I
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    aget v4, v9, v0

    .line 93
    .local v4, "z0":I
    shl-int/lit8 v9, v1, 0x10

    xor-int/2addr v9, v1

    shl-int/lit8 v10, v2, 0xf

    xor-int/2addr v10, v2

    xor-int v5, v9, v10

    .line 94
    .local v5, "z1":I
    ushr-int/lit8 v9, v3, 0xb

    xor-int v6, v3, v9

    .line 95
    .local v6, "z2":I
    xor-int v7, v5, v6

    .line 96
    .local v7, "z3":I
    shl-int/lit8 v9, v4, 0x2

    xor-int/2addr v9, v4

    shl-int/lit8 v10, v5, 0x12

    xor-int/2addr v10, v5

    xor-int/2addr v9, v10

    shl-int/lit8 v10, v6, 0x1c

    xor-int/2addr v9, v10

    shl-int/lit8 v10, v7, 0x5

    const v11, -0x25bbd2dc

    and-int/2addr v10, v11

    xor-int/2addr v10, v7

    xor-int v8, v9, v10

    .line 98
    .local v8, "z4":I
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget v10, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aput v7, v9, v10

    .line 99
    iget-object v9, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    aput v8, v9, v0

    .line 100
    iput v0, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    .line 102
    rsub-int/lit8 v9, p1, 0x20

    ushr-int v9, v8, v9

    return v9
.end method
