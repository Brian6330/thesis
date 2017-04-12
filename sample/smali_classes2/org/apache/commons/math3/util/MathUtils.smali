.class public final Lorg/apache/commons/math3/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final PI_SQUARED:D = 9.869604401089358

.field public static final TWO_PI:D = 6.283185307179586


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFinite(D)V
    .locals 4
    .param p0, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v0

    .line 238
    :cond_1
    return-void
.end method

.method public static checkFinite([D)V
    .locals 9
    .param p0, "val"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 250
    aget-wide v2, p0, v0

    .line 251
    .local v2, "x":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "x":D
    :cond_2
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 272
    :cond_0
    return-void
.end method

.method public static copySign(BB)B
    .locals 3
    .param p0, "magnitude"    # B
    .param p1, "sign"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 147
    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    if-gez p0, :cond_2

    if-gez p1, :cond_2

    .line 154
    .end local p0    # "magnitude":B
    :cond_1
    :goto_0
    return p0

    .line 150
    .restart local p0    # "magnitude":B
    :cond_2
    if-ltz p1, :cond_3

    const/16 v0, -0x80

    if-ne p0, v0, :cond_3

    .line 152
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_3
    neg-int v0, p0

    int-to-byte p0, v0

    goto :goto_0
.end method

.method public static copySign(II)I
    .locals 3
    .param p0, "magnitude"    # I
    .param p1, "sign"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 193
    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    if-gez p0, :cond_2

    if-gez p1, :cond_2

    .line 200
    .end local p0    # "magnitude":I
    :cond_1
    :goto_0
    return p0

    .line 196
    .restart local p0    # "magnitude":I
    :cond_2
    if-ltz p1, :cond_3

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_3

    .line 198
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 200
    :cond_3
    neg-int p0, p0

    goto :goto_0
.end method

.method public static copySign(JJ)J
    .locals 4
    .param p0, "magnitude"    # J
    .param p2, "sign"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 216
    cmp-long v0, p0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_2

    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    .line 223
    .end local p0    # "magnitude":J
    :cond_1
    :goto_0
    return-wide p0

    .line 219
    .restart local p0    # "magnitude":J
    :cond_2
    cmp-long v0, p2, v2

    if-ltz v0, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 221
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 223
    :cond_3
    neg-long p0, p0

    goto :goto_0
.end method

.method public static copySign(SS)S
    .locals 3
    .param p0, "magnitude"    # S
    .param p1, "sign"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 170
    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    if-gez p0, :cond_2

    if-gez p1, :cond_2

    .line 177
    .end local p0    # "magnitude":S
    :cond_1
    :goto_0
    return p0

    .line 173
    .restart local p0    # "magnitude":S
    :cond_2
    if-ltz p1, :cond_3

    const/16 v0, -0x8000

    if-ne p0, v0, :cond_3

    .line 175
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 177
    :cond_3
    neg-int v0, p0

    int-to-short p0, v0

    goto :goto_0
.end method

.method public static equals(DD)Z
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hash(D)I
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static hash([D)I
    .locals 1
    .param p0, "value"    # [D

    .prologue
    .line 86
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public static normalizeAngle(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "center"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 109
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, p0

    sub-double/2addr v0, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    sub-double v0, p0, v0

    return-wide v0
.end method

.method public static reduce(DDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "period"    # D
    .param p4, "offset"    # D

    .prologue
    .line 131
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 132
    .local v0, "p":D
    sub-double v2, p0, p4

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    sub-double v2, p0, v2

    sub-double/2addr v2, p4

    return-wide v2
.end method
