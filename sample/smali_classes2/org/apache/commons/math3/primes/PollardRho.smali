.class Lorg/apache/commons/math3/primes/PollardRho;
.super Ljava/lang/Object;
.source "PollardRho.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static gcdPositive(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 135
    if-nez p0, :cond_1

    move p0, p1

    .line 162
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .line 137
    .restart local p0    # "a":I
    :cond_1
    if-eqz p1, :cond_0

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 143
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 145
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 146
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 152
    .local v3, "shift":I
    :goto_1
    if-eq p0, p1, :cond_2

    .line 153
    sub-int v2, p0, p1

    .line 154
    .local v2, "delta":I
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    .line 155
    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p0

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 159
    goto :goto_1

    .line 162
    .end local v2    # "delta":I
    :cond_2
    shl-int/2addr p0, v3

    goto :goto_0
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 3
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, v1}, Lorg/apache/commons/math3/primes/SmallPrimes;->smallTrialDivision(ILjava/util/List;)I

    move-result p0

    .line 45
    const/4 v2, 0x1

    if-ne v2, p0, :cond_0

    .line 57
    :goto_0
    return-object v1

    .line 49
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->millerRabinPrimeTest(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/PollardRho;->rhoBrent(I)I

    move-result v0

    .line 55
    .local v0, "divisor":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    div-int v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static rhoBrent(I)I
    .locals 24
    .param p0, "n"    # I

    .prologue
    .line 73
    const/4 v15, 0x2

    .line 74
    .local v15, "x0":I
    const/16 v8, 0x19

    .line 75
    .local v8, "m":I
    sget v3, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    .line 76
    .local v3, "cst":I
    const/16 v16, 0x2

    .line 77
    .local v16, "y":I
    const/4 v13, 0x1

    .line 79
    .local v13, "r":I
    :goto_0
    move/from16 v14, v16

    .line 80
    .local v14, "x":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v13, :cond_0

    .line 81
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v18, v20, v22

    .line 82
    .local v18, "y2":J
    int-to-long v0, v3

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v22, v0

    rem-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    .end local v18    # "y2":J
    :cond_0
    const/4 v7, 0x0

    .line 86
    .local v7, "k":I
    :cond_1
    const/16 v17, 0x19

    sub-int v20, v13, v7

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 87
    .local v2, "bound":I
    const/4 v12, 0x1

    .line 88
    .local v12, "q":I
    const/4 v6, -0x3

    :goto_2
    if-ge v6, v2, :cond_2

    .line 89
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v18, v20, v22

    .line 90
    .restart local v18    # "y2":J
    int-to-long v0, v3

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v22, v0

    rem-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    .line 91
    sub-int v17, v14, v16

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 92
    .local v4, "divisor":J
    const-wide/16 v20, 0x0

    cmp-long v17, v20, v4

    if-nez v17, :cond_3

    .line 93
    sget v17, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    add-int v3, v3, v17

    .line 94
    const/16 v7, -0x19

    .line 95
    const/16 v16, 0x2

    .line 96
    const/4 v13, 0x1

    .line 105
    .end local v4    # "divisor":J
    .end local v18    # "y2":J
    :cond_2
    invoke-static {v12}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/primes/PollardRho;->gcdPositive(II)I

    move-result v9

    .line 106
    .local v9, "out":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v9, :cond_5

    .line 107
    .end local v9    # "out":I
    :goto_3
    return v9

    .line 99
    .restart local v4    # "divisor":J
    .restart local v18    # "y2":J
    :cond_3
    int-to-long v0, v12

    move-wide/from16 v20, v0

    mul-long v10, v4, v20

    .line 100
    .local v10, "prod":J
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v20, v0

    rem-long v20, v10, v20

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 101
    if-nez v12, :cond_4

    .line 102
    long-to-int v0, v4

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/primes/PollardRho;->gcdPositive(II)I

    move-result v9

    goto :goto_3

    .line 88
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 109
    .end local v4    # "divisor":J
    .end local v10    # "prod":J
    .end local v18    # "y2":J
    .restart local v9    # "out":I
    :cond_5
    add-int/lit8 v7, v7, 0x19

    .line 110
    if-lt v7, v13, :cond_1

    .line 111
    mul-int/lit8 v13, v13, 0x2

    .line 112
    goto/16 :goto_0
.end method
