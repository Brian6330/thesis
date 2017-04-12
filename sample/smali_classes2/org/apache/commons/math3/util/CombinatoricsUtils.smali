.class public final Lorg/apache/commons/math3/util/CombinatoricsUtils;
.super Ljava/lang/Object;
.source "CombinatoricsUtils.java"


# static fields
.field static final FACTORIALS:[J

.field static final STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 35
    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomialCoefficient(II)J
    .locals 10
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 80
    if-eq p0, p1, :cond_0

    if-nez p1, :cond_2

    .line 81
    :cond_0
    const-wide/16 v4, 0x1

    .line 130
    :cond_1
    :goto_0
    return-wide v4

    .line 83
    :cond_2
    const/4 v6, 0x1

    if-eq p1, v6, :cond_3

    add-int/lit8 v6, p0, -0x1

    if-ne p1, v6, :cond_4

    .line 84
    :cond_3
    int-to-long v4, p0

    goto :goto_0

    .line 87
    :cond_4
    div-int/lit8 v6, p0, 0x2

    if-le p1, v6, :cond_5

    .line 88
    sub-int v6, p0, p1

    invoke-static {p0, v6}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v4

    goto :goto_0

    .line 96
    :cond_5
    const-wide/16 v4, 0x1

    .line 97
    .local v4, "result":J
    const/16 v6, 0x3d

    if-gt p0, v6, :cond_6

    .line 99
    sub-int v6, p0, p1

    add-int/lit8 v2, v6, 0x1

    .line 100
    .local v2, "i":I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    if-gt v3, p1, :cond_1

    .line 101
    int-to-long v6, v2

    mul-long/2addr v6, v4

    int-to-long v8, v3

    div-long v4, v6, v8

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_6
    const/16 v6, 0x42

    if-gt p0, v6, :cond_7

    .line 107
    sub-int v6, p0, p1

    add-int/lit8 v2, v6, 0x1

    .line 108
    .restart local v2    # "i":I
    const/4 v3, 0x1

    .restart local v3    # "j":I
    :goto_2
    if-gt v3, p1, :cond_1

    .line 115
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v6

    int-to-long v0, v6

    .line 116
    .local v0, "d":J
    int-to-long v6, v3

    div-long/2addr v6, v0

    div-long v6, v4, v6

    int-to-long v8, v2

    div-long/2addr v8, v0

    mul-long v4, v6, v8

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 123
    .end local v0    # "d":J
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_7
    sub-int v6, p0, p1

    add-int/lit8 v2, v6, 0x1

    .line 124
    .restart local v2    # "i":I
    const/4 v3, 0x1

    .restart local v3    # "j":I
    :goto_3
    if-gt v3, p1, :cond_1

    .line 125
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v6

    int-to-long v0, v6

    .line 126
    .restart local v0    # "d":J
    int-to-long v6, v3

    div-long/2addr v6, v0

    div-long v6, v4, v6

    int-to-long v8, v2

    div-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v4

    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 8
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 161
    if-eq p0, p1, :cond_0

    if-nez p1, :cond_1

    .line 162
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 179
    :goto_0
    return-wide v4

    .line 164
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    add-int/lit8 v1, p0, -0x1

    if-ne p1, v1, :cond_3

    .line 165
    :cond_2
    int-to-double v4, p0

    goto :goto_0

    .line 167
    :cond_3
    div-int/lit8 v1, p0, 0x2

    if-le p1, v1, :cond_4

    .line 168
    sub-int v1, p0, p1

    invoke-static {p0, v1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v4

    goto :goto_0

    .line 170
    :cond_4
    const/16 v1, 0x43

    if-ge p0, v1, :cond_5

    .line 171
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_0

    .line 174
    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 175
    .local v2, "result":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p1, :cond_6

    .line 176
    sub-int v1, p0, p1

    add-int/2addr v1, v0

    int-to-double v4, v1

    int-to-double v6, v0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_6
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 6
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 206
    if-eq p0, p1, :cond_0

    if-nez p1, :cond_2

    .line 207
    :cond_0
    const-wide/16 v2, 0x0

    .line 248
    :cond_1
    :goto_0
    return-wide v2

    .line 209
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    add-int/lit8 v1, p0, -0x1

    if-ne p1, v1, :cond_4

    .line 210
    :cond_3
    int-to-double v4, p0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    goto :goto_0

    .line 217
    :cond_4
    const/16 v1, 0x43

    if-ge p0, v1, :cond_5

    .line 218
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    goto :goto_0

    .line 225
    :cond_5
    const/16 v1, 0x406

    if-ge p0, v1, :cond_6

    .line 226
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    goto :goto_0

    .line 229
    :cond_6
    div-int/lit8 v1, p0, 0x2

    if-le p1, v1, :cond_7

    .line 230
    sub-int v1, p0, p1

    invoke-static {p0, v1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide v2

    goto :goto_0

    .line 236
    :cond_7
    const-wide/16 v2, 0x0

    .line 239
    .local v2, "logSum":D
    sub-int v1, p0, p1

    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p0, :cond_8

    .line 240
    int-to-double v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_8
    const/4 v0, 0x2

    :goto_2
    if-gt v0, p1, :cond_1

    .line 245
    int-to-double v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static checkBinomial(II)V
    .locals 5
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 454
    if-ge p0, p1, :cond_0

    .line 455
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 458
    :cond_0
    if-gez p0, :cond_1

    .line 459
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 461
    :cond_1
    return-void
.end method

.method public static combinationsIterator(II)Ljava/util/Iterator;
    .locals 1
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lorg/apache/commons/math3/util/Combinations;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/Combinations;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Combinations;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static factorial(I)J
    .locals 3
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 276
    if-gez p0, :cond_0

    .line 277
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 280
    :cond_0
    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    .line 281
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v0

    .line 283
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static factorialDouble(I)D
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 300
    if-gez p0, :cond_0

    .line 301
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 304
    :cond_0
    const/16 v0, 0x15

    if-ge p0, v0, :cond_1

    .line 305
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v0, v0, p0

    long-to-double v0, v0

    .line 307
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static factorialLog(I)D
    .locals 6
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 318
    if-gez p0, :cond_0

    .line 319
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v1

    .line 322
    :cond_0
    const/16 v1, 0x15

    if-ge p0, v1, :cond_2

    .line 323
    sget-object v1, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v4, v1, p0

    long-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 329
    :cond_1
    return-wide v2

    .line 325
    :cond_2
    const-wide/16 v2, 0x0

    .line 326
    .local v2, "logSum":D
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-gt v0, p0, :cond_1

    .line 327
    int-to-double v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stirlingS2(II)J
    .locals 14
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 353
    if-gez p1, :cond_0

    .line 354
    new-instance v8, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v8

    .line 356
    :cond_0
    if-le p1, p0, :cond_1

    .line 357
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 360
    :cond_1
    sget-object v8, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    .line 362
    .local v3, "stirlingS2":[[J
    if-nez v3, :cond_4

    .line 368
    const/16 v2, 0x1a

    .line 369
    .local v2, "maxIndex":I
    const/16 v8, 0x1a

    new-array v3, v8, [[J

    .line 370
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [J

    const/4 v10, 0x0

    const-wide/16 v12, 0x1

    aput-wide v12, v9, v10

    aput-object v9, v3, v8

    .line 371
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v8, v3

    if-ge v0, v8, :cond_3

    .line 372
    add-int/lit8 v8, v0, 0x1

    new-array v8, v8, [J

    aput-object v8, v3, v0

    .line 373
    aget-object v8, v3, v0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 374
    aget-object v8, v3, v0

    const/4 v9, 0x1

    const-wide/16 v10, 0x1

    aput-wide v10, v8, v9

    .line 375
    aget-object v8, v3, v0

    const-wide/16 v10, 0x1

    aput-wide v10, v8, v0

    .line 376
    const/4 v1, 0x2

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 377
    aget-object v8, v3, v0

    int-to-long v10, v1

    add-int/lit8 v9, v0, -0x1

    aget-object v9, v3, v9

    aget-wide v12, v9, v1

    mul-long/2addr v10, v12

    add-int/lit8 v9, v0, -0x1

    aget-object v9, v3, v9

    add-int/lit8 v12, v1, -0x1

    aget-wide v12, v9, v12

    add-long/2addr v10, v12

    aput-wide v10, v8, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "j":I
    :cond_3
    sget-object v8, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .end local v0    # "i":I
    .end local v2    # "maxIndex":I
    :cond_4
    array-length v8, v3

    if-ge p0, v8, :cond_5

    .line 388
    aget-object v8, v3, p0

    aget-wide v8, v8, p1

    .line 412
    :goto_2
    return-wide v8

    .line 391
    :cond_5
    if-nez p1, :cond_6

    .line 392
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 393
    :cond_6
    const/4 v8, 0x1

    if-eq p1, v8, :cond_7

    if-ne p1, p0, :cond_8

    .line 394
    :cond_7
    const-wide/16 v8, 0x1

    goto :goto_2

    .line 395
    :cond_8
    const/4 v8, 0x2

    if-ne p1, v8, :cond_9

    .line 396
    const-wide/16 v8, 0x1

    add-int/lit8 v10, p0, -0x1

    shl-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    goto :goto_2

    .line 397
    :cond_9
    add-int/lit8 v8, p0, -0x1

    if-ne p1, v8, :cond_a

    .line 398
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v8

    goto :goto_2

    .line 401
    :cond_a
    const-wide/16 v6, 0x0

    .line 402
    .local v6, "sum":J
    and-int/lit8 v8, p1, 0x1

    if-nez v8, :cond_b

    const-wide/16 v4, 0x1

    .line 403
    .local v4, "sign":J
    :goto_3
    const/4 v1, 0x1

    .restart local v1    # "j":I
    :goto_4
    if-gt v1, p1, :cond_d

    .line 404
    neg-long v4, v4

    .line 405
    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v8

    mul-long/2addr v8, v4

    invoke-static {v1, p0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 406
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    .line 408
    new-instance v8, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8

    .line 402
    .end local v1    # "j":I
    .end local v4    # "sign":J
    :cond_b
    const-wide/16 v4, -0x1

    goto :goto_3

    .line 403
    .restart local v1    # "j":I
    .restart local v4    # "sign":J
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 412
    :cond_d
    invoke-static {p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v8

    div-long v8, v6, v8

    goto :goto_2
.end method
