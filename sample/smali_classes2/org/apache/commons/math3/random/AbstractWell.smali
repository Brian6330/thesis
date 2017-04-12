.class public abstract Lorg/apache/commons/math3/random/AbstractWell;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "AbstractWell.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xb590f627ca0d9acL


# instance fields
.field protected final i1:[I

.field protected final i2:[I

.field protected final i3:[I

.field protected final iRm1:[I

.field protected final iRm2:[I

.field protected index:I

.field protected final v:[I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6
    .param p1, "k"    # I
    .param p2, "m1"    # I
    .param p3, "m2"    # I
    .param p4, "m3"    # I

    .prologue
    .line 73
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 74
    return-void
.end method

.method protected constructor <init>(IIIII)V
    .locals 6
    .param p1, "k"    # I
    .param p2, "m1"    # I
    .param p3, "m2"    # I
    .param p4, "m3"    # I
    .param p5, "seed"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p5, v5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 85
    return-void
.end method

.method protected constructor <init>(IIIIJ)V
    .locals 7
    .param p1, "k"    # I
    .param p2, "m1"    # I
    .param p3, "m2"    # I
    .param p4, "m3"    # I
    .param p5, "seed"    # J

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0x20

    ushr-long v2, p5, v1

    long-to-int v1, v2

    aput v1, v5, v0

    const/4 v0, 0x1

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p5

    long-to-int v1, v2

    aput v1, v5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    .line 134
    return-void
.end method

.method protected constructor <init>(IIII[I)V
    .locals 5
    .param p1, "k"    # I
    .param p2, "m1"    # I
    .param p3, "m2"    # I
    .param p4, "m3"    # I
    .param p5, "seed"    # [I

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 100
    const/16 v2, 0x20

    .line 101
    .local v2, "w":I
    add-int/lit8 v3, p1, 0x20

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v1, v3, 0x20

    .line 102
    .local v1, "r":I
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    .line 103
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    .line 107
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm1:[I

    .line 108
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm2:[I

    .line 109
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->i1:[I

    .line 110
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->i2:[I

    .line 111
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->i3:[I

    .line 112
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 113
    iget-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm1:[I

    add-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v1

    aput v4, v3, v0

    .line 114
    iget-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm2:[I

    add-int v4, v0, v1

    add-int/lit8 v4, v4, -0x2

    rem-int/2addr v4, v1

    aput v4, v3, v0

    .line 115
    iget-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->i1:[I

    add-int v4, v0, p2

    rem-int/2addr v4, v1

    aput v4, v3, v0

    .line 116
    iget-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->i2:[I

    add-int v4, v0, p3

    rem-int/2addr v4, v1

    aput v4, v3, v0

    .line 117
    iget-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->i3:[I

    add-int v4, v0, p4

    rem-int/2addr v4, v1

    aput v4, v3, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed([I)V

    .line 123
    return-void
.end method


# virtual methods
.method protected abstract next(I)I
.end method

.method public setSeed(I)V
    .locals 2
    .param p1, "seed"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed([I)V

    .line 144
    return-void
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 180
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

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed([I)V

    .line 181
    return-void
.end method

.method public setSeed([I)V
    .locals 9
    .param p1, "seed"    # [I

    .prologue
    const/4 v8, 0x0

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed(J)V

    .line 171
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v4, p1

    iget-object v5, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v5, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    invoke-static {p1, v8, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v1, p1

    iget-object v4, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 163
    array-length v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v4, p1

    sub-int v4, v0, v4

    aget v1, v1, v4

    int-to-long v2, v1

    .line 165
    .local v2, "l":J
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    const-wide/32 v4, 0x6c078965

    const/16 v6, 0x1e

    shr-long v6, v2, v6

    xor-long/2addr v6, v2

    mul-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "i":I
    .end local v2    # "l":J
    :cond_1
    iput v8, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractWell;->clear()V

    goto :goto_0
.end method
