.class public abstract Lorg/apache/commons/math3/random/BitsStreamGenerator;
.super Ljava/lang/Object;
.source "BitsStreamGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332938L


# instance fields
.field private nextGaussian:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 194
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 195
    return-void
.end method

.method protected abstract next(I)I
.end method

.method public nextBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    const/16 v6, 0x20

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "i":I
    array-length v4, p1

    add-int/lit8 v2, v4, -0x3

    .line 72
    .local v2, "iEnd":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 73
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v3

    .line 74
    .local v3, "random":I
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 75
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 76
    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 77
    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 78
    add-int/lit8 v0, v0, 0x4

    .line 79
    goto :goto_0

    .line 80
    .end local v3    # "random":I
    :cond_0
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v3

    .line 81
    .restart local v3    # "random":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 82
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 83
    shr-int/lit8 v3, v3, 0x8

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 85
    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 8

    .prologue
    const/16 v6, 0x1a

    .line 89
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v3

    int-to-long v4, v3

    shl-long v0, v4, v6

    .line 90
    .local v0, "high":J
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    .line 91
    .local v2, "low":I
    int-to-long v4, v2

    or-long/2addr v4, v0

    long-to-double v4, v4

    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 96
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x34000000

    mul-float/2addr v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 14

    .prologue
    .line 103
    iget-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v6

    .line 106
    .local v6, "x":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v8

    .line 107
    .local v8, "y":D
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v0, v10, v6

    .line 108
    .local v0, "alpha":D
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 109
    .local v2, "r":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v10

    mul-double v4, v2, v10

    .line 110
    .local v4, "random":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    iput-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 117
    .end local v0    # "alpha":D
    .end local v2    # "r":D
    .end local v6    # "x":D
    .end local v8    # "y":D
    :goto_0
    return-wide v4

    .line 113
    .end local v4    # "random":D
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 114
    .restart local v4    # "random":D
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    iput-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    goto :goto_0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1f

    .line 142
    if-lez p1, :cond_1

    .line 143
    neg-int v2, p1

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_0

    .line 144
    int-to-long v2, p1

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v1, v2

    .line 152
    :goto_0
    return v1

    .line 149
    :cond_0
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 150
    .local v0, "bits":I
    rem-int v1, v0, p1

    .line 151
    .local v1, "val":I
    sub-int v2, v0, v1

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_0

    goto :goto_0

    .line 154
    .end local v0    # "bits":I
    .end local v1    # "val":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2
.end method

.method public nextLong()J
    .locals 8

    .prologue
    const/16 v6, 0x20

    .line 159
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v6

    .line 160
    .local v0, "high":J
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 161
    .local v2, "low":J
    or-long v4, v0, v2

    return-wide v4
.end method

.method public nextLong(J)J
    .locals 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x20

    .line 176
    cmp-long v4, p1, v10

    if-lez v4, :cond_1

    .line 180
    :cond_0
    const/16 v4, 0x1f

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v8

    .line 181
    .local v0, "bits":J
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 182
    rem-long v2, v0, p1

    .line 183
    .local v2, "val":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-ltz v4, :cond_0

    .line 184
    return-wide v2

    .line 186
    .end local v0    # "bits":J
    .end local v2    # "val":J
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v4
.end method

.method public abstract setSeed(I)V
.end method

.method public abstract setSeed(J)V
.end method

.method public abstract setSeed([I)V
.end method
