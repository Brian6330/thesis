.class public final Lorg/apache/commons/math3/util/ArithmeticUtils;
.super Ljava/lang/Object;
.source "ArithmeticUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static addAndCheck(II)I
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 51
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 52
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 53
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 55
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public static addAndCheck(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 891
    add-long v0, p0, p2

    .line 892
    .local v0, "result":J
    xor-long v6, p0, p2

    cmp-long v2, v6, v8

    if-gez v2, :cond_0

    move v5, v3

    :goto_0
    xor-long v6, p0, v0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_1

    move v2, v3

    :goto_1
    or-int/2addr v2, v5

    if-nez v2, :cond_2

    .line 893
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-direct {v2, p4, v5}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_0
    move v5, v4

    .line 892
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 895
    :cond_2
    return-wide v0
.end method

.method public static binomialCoefficient(II)J
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static factorial(I)J
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static factorialDouble(I)D
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static factorialLog(I)D
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static gcd(II)I
    .locals 14
    .param p0, "p"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 255
    move v0, p0

    .line 256
    .local v0, "a":I
    move v1, p1

    .line 257
    .local v1, "b":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    .line 259
    :cond_0
    const/high16 v9, -0x80000000

    if-eq v0, v9, :cond_1

    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_2

    .line 261
    :cond_1
    new-instance v9, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 264
    :cond_2
    add-int v9, v0, v1

    invoke-static {v9}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v9

    .line 308
    :goto_0
    return v9

    .line 267
    :cond_3
    int-to-long v2, v0

    .line 268
    .local v2, "al":J
    int-to-long v4, v1

    .line 269
    .local v4, "bl":J
    const/4 v8, 0x0

    .line 270
    .local v8, "useLong":Z
    if-gez v0, :cond_4

    .line 271
    const/high16 v9, -0x80000000

    if-ne v9, v0, :cond_6

    .line 272
    const/4 v8, 0x1

    .line 276
    :goto_1
    neg-long v2, v2

    .line 278
    :cond_4
    if-gez v1, :cond_5

    .line 279
    const/high16 v9, -0x80000000

    if-ne v9, v1, :cond_7

    .line 280
    const/4 v8, 0x1

    .line 284
    :goto_2
    neg-long v4, v4

    .line 286
    :cond_5
    if-eqz v8, :cond_b

    .line 287
    cmp-long v9, v2, v4

    if-nez v9, :cond_8

    .line 288
    new-instance v9, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 274
    :cond_6
    neg-int v0, v0

    goto :goto_1

    .line 282
    :cond_7
    neg-int v1, v1

    goto :goto_2

    .line 291
    :cond_8
    move-wide v6, v4

    .line 292
    .local v6, "blbu":J
    move-wide v4, v2

    .line 293
    rem-long v2, v6, v2

    .line 294
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_a

    .line 295
    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v4, v10

    if-lez v9, :cond_9

    .line 296
    new-instance v9, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 299
    :cond_9
    long-to-int v9, v4

    goto :goto_0

    .line 301
    :cond_a
    move-wide v6, v4

    .line 304
    long-to-int v1, v2

    .line 305
    rem-long v10, v6, v2

    long-to-int v0, v10

    .line 308
    .end local v6    # "blbu":J
    :cond_b
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcdPositive(II)I

    move-result v9

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 12
    .param p0, "p"    # J
    .param p2, "q"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 395
    move-wide v4, p0

    .line 396
    .local v4, "u":J
    move-wide v6, p2

    .line 397
    .local v6, "v":J
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    .line 398
    :cond_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    .line 399
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v1, v8, v9}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 402
    :cond_2
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 449
    :goto_0
    return-wide v8

    .line 409
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_4

    .line 410
    neg-long v4, v4

    .line 412
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    .line 413
    neg-long v6, v6

    .line 416
    :cond_5
    const/4 v0, 0x0

    .line 417
    .local v0, "k":I
    :goto_1
    const-wide/16 v8, 0x1

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    const-wide/16 v8, 0x1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_6

    .line 419
    const-wide/16 v8, 0x2

    div-long/2addr v4, v8

    .line 420
    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    :cond_6
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_7

    .line 424
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v1, v8, v9}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 429
    :cond_7
    const-wide/16 v8, 0x1

    and-long/2addr v8, v4

    const-wide/16 v10, 0x1

    cmp-long v1, v8, v10

    if-nez v1, :cond_9

    move-wide v2, v6

    .line 435
    .local v2, "t":J
    :cond_8
    :goto_2
    const-wide/16 v8, 0x1

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_a

    .line 436
    const-wide/16 v8, 0x2

    div-long/2addr v2, v8

    goto :goto_2

    .line 429
    .end local v2    # "t":J
    :cond_9
    const-wide/16 v8, 0x2

    div-long v8, v4, v8

    neg-long v2, v8

    goto :goto_2

    .line 439
    .restart local v2    # "t":J
    :cond_a
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-lez v1, :cond_b

    .line 440
    neg-long v4, v2

    .line 445
    :goto_3
    sub-long v8, v6, v4

    const-wide/16 v10, 0x2

    div-long v2, v8, v10

    .line 448
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_8

    .line 449
    neg-long v8, v4

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v0

    mul-long/2addr v8, v10

    goto/16 :goto_0

    .line 442
    :cond_b
    move-wide v6, v2

    goto :goto_3
.end method

.method private static gcdPositive(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 332
    if-nez p0, :cond_1

    move p0, p1

    .line 362
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .line 335
    .restart local p0    # "a":I
    :cond_1
    if-eqz p1, :cond_0

    .line 340
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 341
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 343
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 344
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 352
    .local v3, "shift":I
    :goto_1
    if-eq p0, p1, :cond_2

    .line 353
    sub-int v2, p0, p1

    .line 354
    .local v2, "delta":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 355
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 358
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 359
    goto :goto_1

    .line 362
    .end local v2    # "delta":I
    :cond_2
    shl-int/2addr p0, v3

    goto :goto_0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 4
    .param p0, "n"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 905
    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lcm(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 483
    :cond_1
    return v0

    .line 478
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v2

    div-int v2, p0, v2

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    .line 479
    .local v0, "lcm":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 480
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LCM_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static lcm(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 509
    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 517
    :cond_0
    return-wide v0

    .line 512
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(JJ)J

    move-result-wide v2

    div-long v2, p0, v2

    invoke-static {v2, v3, p2, p3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v0

    .line 513
    .local v0, "lcm":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 514
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LCM_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static mulAndCheck(II)I
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 531
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 532
    .local v0, "m":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 533
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2

    .line 535
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public static mulAndCheck(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 550
    cmp-long v2, p0, p2

    if-lez v2, :cond_0

    .line 552
    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    .line 589
    .local v0, "ret":J
    :goto_0
    return-wide v0

    .line 554
    .end local v0    # "ret":J
    :cond_0
    cmp-long v2, p0, v4

    if-gez v2, :cond_5

    .line 555
    cmp-long v2, p2, v4

    if-gez v2, :cond_2

    .line 557
    div-long v2, v6, p2

    cmp-long v2, p0, v2

    if-ltz v2, :cond_1

    .line 558
    mul-long v0, p0, p2

    .restart local v0    # "ret":J
    goto :goto_0

    .line 560
    .end local v0    # "ret":J
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2

    .line 562
    :cond_2
    cmp-long v2, p2, v4

    if-lez v2, :cond_4

    .line 564
    const-wide/high16 v2, -0x8000000000000000L

    div-long/2addr v2, p2

    cmp-long v2, v2, p0

    if-gtz v2, :cond_3

    .line 565
    mul-long v0, p0, p2

    .restart local v0    # "ret":J
    goto :goto_0

    .line 567
    .end local v0    # "ret":J
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2

    .line 572
    :cond_4
    const-wide/16 v0, 0x0

    .restart local v0    # "ret":J
    goto :goto_0

    .line 574
    .end local v0    # "ret":J
    :cond_5
    cmp-long v2, p0, v4

    if-lez v2, :cond_7

    .line 579
    div-long v2, v6, p2

    cmp-long v2, p0, v2

    if-gtz v2, :cond_6

    .line 580
    mul-long v0, p0, p2

    .restart local v0    # "ret":J
    goto :goto_0

    .line 582
    .end local v0    # "ret":J
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2

    .line 586
    :cond_7
    const-wide/16 v0, 0x0

    .restart local v0    # "ret":J
    goto :goto_0
.end method

.method public static pow(II)I
    .locals 10
    .param p0, "k"    # I
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 648
    if-gez p1, :cond_0

    .line 649
    new-instance v4, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v4

    .line 653
    :cond_0
    move v0, p1

    .line 654
    .local v0, "exp":I
    const/4 v3, 0x1

    .line 655
    .local v3, "result":I
    move v1, p0

    .line 657
    .local v1, "k2p":I
    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    .line 658
    :try_start_0
    invoke-static {v3, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v3

    .line 661
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    .line 662
    if-nez v0, :cond_2

    .line 669
    return v3

    .line 666
    :cond_2
    invoke-static {v1, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 670
    :catch_0
    move-exception v2

    .line 672
    .local v2, "mae":Lorg/apache/commons/math3/exception/MathArithmeticException;
    invoke-virtual {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 673
    invoke-virtual {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BASE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 674
    invoke-virtual {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 677
    throw v2
.end method

.method public static pow(IJ)I
    .locals 7
    .param p0, "k"    # I
    .param p1, "e"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 692
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 693
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 696
    :cond_0
    const/4 v1, 0x1

    .line 697
    .local v1, "result":I
    move v0, p0

    .line 698
    .local v0, "k2p":I
    :goto_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_2

    .line 699
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 700
    mul-int/2addr v1, v0

    .line 702
    :cond_1
    mul-int/2addr v0, v0

    .line 703
    const/4 v2, 0x1

    shr-long/2addr p1, v2

    goto :goto_0

    .line 706
    :cond_2
    return v1
.end method

.method public static pow(JI)J
    .locals 12
    .param p0, "k"    # J
    .param p2, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 722
    if-gez p2, :cond_0

    .line 723
    new-instance v6, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v6

    .line 727
    :cond_0
    move v0, p2

    .line 728
    .local v0, "exp":I
    const-wide/16 v4, 0x1

    .line 729
    .local v4, "result":J
    move-wide v2, p0

    .line 731
    .local v2, "k2p":J
    :goto_0
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_1

    .line 732
    :try_start_0
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v4

    .line 735
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    .line 736
    if-nez v0, :cond_2

    .line 743
    return-wide v4

    .line 740
    :cond_2
    invoke-static {v2, v3, v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    .line 746
    .local v1, "mae":Lorg/apache/commons/math3/exception/MathArithmeticException;
    invoke-virtual {v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 747
    invoke-virtual {v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BASE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 748
    invoke-virtual {v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 751
    throw v1
.end method

.method public static pow(JJ)J
    .locals 8
    .param p0, "k"    # J
    .param p2, "e"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 766
    cmp-long v4, p2, v6

    if-gez v4, :cond_0

    .line 767
    new-instance v4, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v4

    .line 770
    :cond_0
    const-wide/16 v2, 0x1

    .line 771
    .local v2, "result":J
    move-wide v0, p0

    .line 772
    .local v0, "k2p":J
    :goto_0
    cmp-long v4, p2, v6

    if-eqz v4, :cond_2

    .line 773
    const-wide/16 v4, 0x1

    and-long/2addr v4, p2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 774
    mul-long/2addr v2, v0

    .line 776
    :cond_1
    mul-long/2addr v0, v0

    .line 777
    const/4 v4, 0x1

    shr-long/2addr p2, v4

    goto :goto_0

    .line 780
    :cond_2
    return-wide v2
.end method

.method public static pow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 792
    if-gez p1, :cond_0

    .line 793
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 796
    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 7
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "e"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 808
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 809
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 812
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 813
    .local v1, "result":Ljava/math/BigInteger;
    move-object v0, p0

    .line 814
    .local v0, "k2p":Ljava/math/BigInteger;
    :goto_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_2

    .line 815
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 816
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 818
    :cond_1
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 819
    const/4 v2, 0x1

    shr-long/2addr p1, v2

    goto :goto_0

    .line 822
    :cond_2
    return-object v1
.end method

.method public static pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "e"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 835
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    .line 836
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v2, v3, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 839
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 840
    .local v1, "result":Ljava/math/BigInteger;
    move-object v0, p0

    .line 841
    .local v0, "k2p":Ljava/math/BigInteger;
    :goto_0
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 842
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 845
    :cond_1
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 846
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 849
    :cond_2
    return-object v1
.end method

.method public static stirlingS2(II)J
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 875
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->stirlingS2(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static subAndCheck(II)I
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 603
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 604
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 605
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 607
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public static subAndCheck(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 622
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 623
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 624
    sub-long v0, p0, p2

    .line 632
    .local v0, "ret":J
    :goto_0
    return-wide v0

    .line 626
    .end local v0    # "ret":J
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    neg-long v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 630
    :cond_1
    neg-long v2, p2

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1, v2, v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J

    move-result-wide v0

    .restart local v0    # "ret":J
    goto :goto_0
.end method
