.class public Lorg/apache/commons/math3/distribution/TriangularDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "TriangularDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1330230L


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "a"    # D
    .param p3, "c"    # D
    .param p5, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/TriangularDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "a"    # D
    .param p4, "c"    # D
    .param p6, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 88
    cmpl-double v0, p2, p6

    if-ltz v0, :cond_0

    .line 89
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 93
    :cond_0
    cmpg-double v0, p4, p2

    if-gez v0, :cond_1

    .line 94
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 97
    :cond_1
    cmpl-double v0, p4, p6

    if-lez v0, :cond_2

    .line 98
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_LARGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 102
    :cond_2
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    .line 103
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    .line 104
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    .line 105
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->solverAbsoluteAccuracy:D

    .line 106
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 13
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 181
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v6, p1, v6

    if-gez v6, :cond_1

    .line 182
    const-wide/16 v4, 0x0

    .line 197
    :cond_0
    :goto_0
    return-wide v4

    .line 184
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v6, v6, p1

    if-gtz v6, :cond_2

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v6, p1, v6

    if-gez v6, :cond_2

    .line 185
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double v4, p1, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double v6, p1, v6

    mul-double v0, v4, v6

    .line 186
    .local v0, "divident":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v6, v8

    mul-double v2, v4, v6

    .line 187
    .local v2, "divisor":D
    div-double v4, v0, v2

    goto :goto_0

    .line 189
    .end local v0    # "divident":D
    .end local v2    # "divisor":D
    :cond_2
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpl-double v6, p1, v6

    if-nez v6, :cond_3

    .line 190
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    goto :goto_0

    .line 192
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v6, v6, p1

    if-gez v6, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_0

    .line 193
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr v6, p1

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr v8, p1

    mul-double v0, v6, v8

    .line 194
    .restart local v0    # "divident":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    sub-double/2addr v8, v10

    mul-double v2, v6, v8

    .line 195
    .restart local v2    # "divisor":D
    div-double v6, v0, v2

    sub-double/2addr v4, v6

    goto :goto_0
.end method

.method public density(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 148
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v6, p1, v6

    if-gez v6, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-wide v4

    .line 151
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v6, v6, p1

    if-gtz v6, :cond_2

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v6, p1, v6

    if-gez v6, :cond_2

    .line 152
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double v4, p1, v4

    mul-double v0, v8, v4

    .line 153
    .local v0, "divident":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v6, v8

    mul-double v2, v4, v6

    .line 154
    .local v2, "divisor":D
    div-double v4, v0, v2

    goto :goto_0

    .line 156
    .end local v0    # "divident":D
    .end local v2    # "divisor":D
    :cond_2
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpl-double v6, p1, v6

    if-nez v6, :cond_3

    .line 157
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    div-double v4, v8, v4

    goto :goto_0

    .line 159
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v6, v6, p1

    if-gez v6, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_0

    .line 160
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr v4, p1

    mul-double v0, v8, v4

    .line 161
    .restart local v0    # "divident":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    sub-double/2addr v6, v8

    mul-double v2, v4, v6

    .line 162
    .restart local v2    # "divisor":D
    div-double v4, v0, v2

    goto :goto_0
.end method

.method public getMode()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .prologue
    .line 217
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 9
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 268
    cmpg-double v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v6

    if-lez v0, :cond_1

    .line 269
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 271
    :cond_1
    cmpl-double v0, p1, v2

    if-nez v0, :cond_2

    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    .line 280
    :goto_0
    return-wide v0

    .line 274
    :cond_2
    cmpl-double v0, p1, v6

    if-nez v0, :cond_3

    .line 275
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    goto :goto_0

    .line 277
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    .line 278
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 280
    :cond_4
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double v2, v6, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method
