.class public abstract Lorg/apache/commons/math3/random/AbstractRandomGenerator;
.super Ljava/lang/Object;
.source "AbstractRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# instance fields
.field private cachedNormalDeviate:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 52
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 61
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 62
    return-void
.end method

.method public nextBoolean()Z
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "bytesOut":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextInt()I

    move-result v3

    .line 109
    .local v3, "randInt":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v1, v0

    .end local v0    # "bytesOut":I
    .local v1, "bytesOut":I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    .line 110
    if-lez v2, :cond_0

    .line 111
    shr-int/lit8 v3, v3, 0x8

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "bytesOut":I
    .restart local v0    # "bytesOut":I
    int-to-byte v4, v3

    aput-byte v4, p1, v1

    .line 114
    array-length v4, p1

    if-ne v0, v4, :cond_2

    .line 119
    .end local v2    # "i":I
    .end local v3    # "randInt":I
    :cond_1
    return-void

    .line 109
    .restart local v2    # "i":I
    .restart local v3    # "randInt":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "bytesOut":I
    .restart local v1    # "bytesOut":I
    goto :goto_1

    :cond_3
    move v0, v1

    .line 118
    .end local v1    # "bytesOut":I
    .restart local v0    # "bytesOut":I
    goto :goto_0
.end method

.method public abstract nextDouble()D
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public nextGaussian()D
    .locals 12

    .prologue
    .line 252
    iget-wide v8, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_0

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 254
    .local v0, "dev":D
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    iput-wide v8, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 269
    .end local v0    # "dev":D
    :goto_0
    return-wide v0

    .line 257
    :cond_0
    const-wide/16 v4, 0x0

    .line 258
    .local v4, "v1":D
    const-wide/16 v6, 0x0

    .line 259
    .local v6, "v2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 260
    .local v2, "s":D
    :goto_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v2, v8

    if-ltz v8, :cond_1

    .line 261
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v10

    .line 262
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v10

    .line 263
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    goto :goto_1

    .line 265
    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_2

    .line 266
    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 268
    :cond_2
    mul-double v8, v6, v2

    iput-wide v8, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 269
    mul-double v0, v4, v2

    goto :goto_0
.end method

.method public nextInt()I
    .locals 4

    .prologue
    .line 136
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "n"    # I

    .prologue
    .line 156
    if-gtz p1, :cond_0

    .line 157
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 160
    .local v0, "result":I
    if-ge v0, p1, :cond_1

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method public nextLong()J
    .locals 4

    .prologue
    .line 178
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 2
    .param p1, "seed"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->setSeed(J)V

    .line 67
    return-void
.end method

.method public abstract setSeed(J)V
.end method

.method public setSeed([I)V
    .locals 12
    .param p1, "seed"    # [I

    .prologue
    .line 72
    const-wide v6, 0xfffffffbL

    .line 74
    .local v6, "prime":J
    const-wide/16 v2, 0x0

    .line 75
    .local v2, "combined":J
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, v0, v1

    .line 76
    .local v5, "s":I
    const-wide v8, 0xfffffffbL

    mul-long/2addr v8, v2

    int-to-long v10, v5

    add-long v2, v8, v10

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v5    # "s":I
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->setSeed(J)V

    .line 79
    return-void
.end method
