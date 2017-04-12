.class public Lorg/apache/commons/math3/transform/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# static fields
.field private static final POWERS_OF_TWO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/transform/TransformUtils;->POWERS_OF_TWO:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 10
    .param p0, "dataRI"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 126
    array-length v5, p0

    if-eq v5, v7, :cond_0

    .line 127
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v6, p0

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 129
    :cond_0
    const/4 v5, 0x0

    aget-object v2, p0, v5

    .line 130
    .local v2, "dataR":[D
    const/4 v5, 0x1

    aget-object v1, p0, v5

    .line 131
    .local v1, "dataI":[D
    array-length v5, v2

    array-length v6, v1

    if-eq v5, v6, :cond_1

    .line 132
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v6, v1

    array-length v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 135
    :cond_1
    array-length v4, v2

    .line 136
    .local v4, "n":I
    new-array v0, v4, [Lorg/apache/commons/math3/complex/Complex;

    .line 137
    .local v0, "c":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 138
    new-instance v5, Lorg/apache/commons/math3/complex/Complex;

    aget-wide v6, v2, v3

    aget-wide v8, v1, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v5, v0, v3

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_2
    return-object v0
.end method

.method public static createRealImaginaryArray([Lorg/apache/commons/math3/complex/Complex;)[[D
    .locals 8
    .param p0, "dataC"    # [Lorg/apache/commons/math3/complex/Complex;

    .prologue
    .line 98
    const/4 v5, 0x2

    array-length v6, p0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 99
    .local v3, "dataRI":[[D
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 100
    .local v2, "dataR":[D
    const/4 v5, 0x1

    aget-object v1, v3, v5

    .line 101
    .local v1, "dataI":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 102
    aget-object v0, p0, v4

    .line 103
    .local v0, "c":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v2, v4

    .line 104
    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "c":Lorg/apache/commons/math3/complex/Complex;
    :cond_0
    return-object v3
.end method

.method public static exactLog2(I)I
    .locals 6
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 155
    sget-object v1, Lorg/apache/commons/math3/transform/TransformUtils;->POWERS_OF_TWO:[I

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 156
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 157
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 161
    :cond_0
    return v0
.end method

.method public static scaleArray([DD)[D
    .locals 5
    .param p0, "f"    # [D
    .param p1, "d"    # D

    .prologue
    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 62
    aget-wide v2, p0, v0

    mul-double/2addr v2, p1

    aput-wide v2, p0, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object p0
.end method

.method public static scaleArray([Lorg/apache/commons/math3/complex/Complex;D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 7
    .param p0, "f"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p1, "d"    # D

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 78
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    mul-double/2addr v2, p1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    mul-double/2addr v4, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v1, p0, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object p0
.end method
