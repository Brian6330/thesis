.class public Lorg/apache/commons/math3/random/HaltonSequenceGenerator;
.super Ljava/lang/Object;
.source "HaltonSequenceGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# static fields
.field private static final PRIMES:[I

.field private static final WEIGHTS:[I


# instance fields
.field private final base:[I

.field private count:I

.field private final dimension:I

.field private final weight:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->PRIMES:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->WEIGHTS:[I

    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x3
        0x8
        0xb
        0xc
        0xe
        0x7
        0x12
        0xc
        0xd
        0x11
        0x12
        0x1d
        0xe
        0x12
        0x2b
        0x29
        0x2c
        0x28
        0x1e
        0x2f
        0x41
        0x47
        0x1c
        0x28
        0x3c
        0x4f
        0x59
        0x38
        0x32
        0x34
        0x3d
        0x6c
        0x38
        0x42
        0x3f
        0x3c
        0x42
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->PRIMES:[I

    sget-object v1, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->WEIGHTS:[I

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;-><init>(I[I[I)V

    .line 90
    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 4
    .param p1, "dimension"    # I
    .param p2, "bases"    # [I
    .param p3, "weights"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v2, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 107
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    if-lt p1, v3, :cond_0

    array-length v0, p2

    if-le p1, v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->PRIMES:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 113
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 114
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p3

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 117
    :cond_2
    iput p1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->dimension:I

    .line 118
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    .line 119
    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->weight:[I

    .line 120
    iput v2, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 121
    return-void

    .line 119
    :cond_3
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method


# virtual methods
.method public getNextIndex()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    return v0
.end method

.method public nextVector()[D
    .locals 12

    .prologue
    .line 125
    iget v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->dimension:I

    new-array v6, v7, [D

    .line 126
    .local v6, "v":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->dimension:I

    if-ge v1, v7, :cond_1

    .line 127
    iget v4, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 128
    .local v4, "index":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-object v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v7, v7, v1

    int-to-double v10, v7

    div-double v2, v8, v10

    .line 130
    .local v2, "f":D
    const/4 v5, 0x0

    .line 131
    .local v5, "j":I
    :goto_1
    if-lez v4, :cond_0

    .line 132
    iget-object v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v7, v7, v1

    iget-object v8, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v8, v8, v1

    rem-int v8, v4, v8

    invoke-virtual {p0, v1, v5, v7, v8}, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->scramble(IIII)I

    move-result v0

    .line 133
    .local v0, "digit":I
    aget-wide v8, v6, v1

    int-to-double v10, v0

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    aput-wide v8, v6, v1

    .line 134
    iget-object v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v7, v7, v1

    div-int/2addr v4, v7

    .line 135
    iget-object v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v7, v7, v1

    int-to-double v8, v7

    div-double/2addr v2, v8

    .line 136
    goto :goto_1

    .line 126
    .end local v0    # "digit":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "f":D
    .end local v4    # "index":I
    .end local v5    # "j":I
    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 139
    return-object v6
.end method

.method protected scramble(IIII)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "b"    # I
    .param p4, "digit"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->weight:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->weight:[I

    aget v0, v0, p1

    mul-int/2addr v0, p4

    rem-int p4, v0, p3

    .end local p4    # "digit":I
    :cond_0
    return p4
.end method

.method public skipTo(I)[D
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 169
    iput p1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->nextVector()[D

    move-result-object v0

    return-object v0
.end method
