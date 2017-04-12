.class public Lorg/apache/commons/math3/primes/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static isPrime(I)Z
    .locals 6
    .param p0, "n"    # I

    .prologue
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x2

    if-ge p0, v5, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v4

    .line 58
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 59
    .local v3, "p":I
    rem-int v5, p0, v3

    if-nez v5, :cond_2

    .line 60
    if-ne p0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    .end local v3    # "p":I
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->millerRabinPrimeTest(I)Z

    move-result v4

    goto :goto_0
.end method

.method public static nextPrime(I)I
    .locals 7
    .param p0, "n"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x2

    .line 74
    if-gez p0, :cond_0

    .line 75
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 77
    :cond_0
    if-ne p0, v1, :cond_2

    move p0, v1

    .line 104
    :cond_1
    :goto_0
    return p0

    .line 80
    :cond_2
    or-int/lit8 p0, p0, 0x1

    .line 81
    if-ne p0, v5, :cond_3

    move p0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    rem-int/lit8 v0, p0, 0x3

    .line 92
    .local v0, "rem":I
    if-nez v0, :cond_5

    .line 93
    add-int/lit8 p0, p0, 0x2

    .line 99
    :cond_4
    :goto_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    add-int/lit8 p0, p0, 0x2

    .line 103
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    add-int/lit8 p0, p0, 0x4

    goto :goto_1

    .line 94
    :cond_5
    if-ne v5, v0, :cond_4

    .line 96
    add-int/lit8 p0, p0, 0x4

    goto :goto_1
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x2

    .line 119
    if-ge p0, v5, :cond_0

    .line 120
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 125
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->trialDivision(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
