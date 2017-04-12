.class public Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;
.super Ljava/lang/Object;
.source "WilcoxonSignedRankTest.java"


# instance fields
.field private naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    .line 62
    return-void
.end method

.method private calculateAbsoluteDifferences([D)[D
    .locals 4
    .param p1, "z"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 123
    :cond_0
    array-length v2, p1

    if-nez v2, :cond_1

    .line 124
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2

    .line 127
    :cond_1
    array-length v2, p1

    new-array v1, v2, [D

    .line 129
    .local v1, "zAbs":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 130
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    return-object v1
.end method

.method private calculateAsymptoticPValue(DI)D
    .locals 13
    .param p1, "Wmin"    # D
    .param p3, "N"    # I

    .prologue
    .line 245
    add-int/lit8 v1, p3, 0x1

    mul-int v1, v1, p3

    int-to-double v2, v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double v6, v2, v4

    .line 250
    .local v6, "ES":D
    mul-int/lit8 v1, p3, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    mul-double v8, v6, v2

    .line 253
    .local v8, "VarS":D
    sub-double v2, p1, v6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double v10, v2, v4

    .line 257
    .local v10, "z":D
    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 259
    .local v0, "standardNormal":Lorg/apache/commons/math3/distribution/NormalDistribution;
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method private calculateDifferences([D[D)[D
    .locals 6
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    .line 99
    array-length v2, p1

    new-array v1, v2, [D

    .line 101
    .local v1, "z":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 102
    aget-wide v2, p2, v0

    aget-wide v4, p1, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v1
.end method

.method private calculateExactPValue(DI)D
    .locals 11
    .param p1, "Wmax"    # D
    .param p3, "N"    # I

    .prologue
    const/4 v8, 0x1

    .line 210
    shl-int v3, v8, p3

    .line 212
    .local v3, "m":I
    const/4 v2, 0x0

    .line 214
    .local v2, "largerRankSums":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 215
    const/4 v4, 0x0

    .line 218
    .local v4, "rankSum":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 221
    shr-int v5, v0, v1

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_0

    .line 222
    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_1
    int-to-double v6, v4

    cmpl-double v5, v6, p1

    if-ltz v5, :cond_2

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 214
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "j":I
    .end local v4    # "rankSum":I
    :cond_3
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v2

    mul-double/2addr v6, v8

    int-to-double v8, v3

    div-double/2addr v6, v8

    return-wide v6
.end method

.method private ensureDataConformance([D[D)V
    .locals 3
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 83
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 85
    :cond_3
    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_4

    .line 86
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 88
    :cond_4
    return-void
.end method


# virtual methods
.method public wilcoxonSignedRank([D[D)D
    .locals 14
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->ensureDataConformance([D[D)V

    .line 178
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateDifferences([D[D)[D

    move-result-object v7

    .line 179
    .local v7, "z":[D
    invoke-direct {p0, v7}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateAbsoluteDifferences([D)[D

    move-result-object v8

    .line 181
    .local v8, "zAbs":[D
    iget-object v9, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object v6

    .line 183
    .local v6, "ranks":[D
    const-wide/16 v4, 0x0

    .line 185
    .local v4, "Wplus":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v7

    if-ge v1, v9, :cond_1

    .line 186
    aget-wide v10, v7, v1

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 187
    aget-wide v10, v6, v1

    add-double/2addr v4, v10

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    array-length v0, p1

    .line 192
    .local v0, "N":I
    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v0

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double v2, v10, v4

    .line 194
    .local v2, "Wminus":D
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    return-wide v10
.end method

.method public wilcoxonSignedRankTest([D[DZ)D
    .locals 10
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "exactPValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1e

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->ensureDataConformance([D[D)V

    .line 311
    array-length v0, p1

    .line 312
    .local v0, "N":I
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->wilcoxonSignedRank([D[D)D

    move-result-wide v2

    .line 314
    .local v2, "Wmax":D
    if-eqz p3, :cond_0

    if-le v0, v7, :cond_0

    .line 315
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v1, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 318
    :cond_0
    if-eqz p3, :cond_1

    .line 319
    invoke-direct {p0, v2, v3, v0}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateExactPValue(DI)D

    move-result-wide v6

    .line 322
    :goto_0
    return-wide v6

    .line 321
    :cond_1
    add-int/lit8 v1, v0, 0x1

    mul-int/2addr v1, v0

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double v4, v6, v2

    .line 322
    .local v4, "Wmin":D
    invoke-direct {p0, v4, v5, v0}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateAsymptoticPValue(DI)D

    move-result-wide v6

    goto :goto_0
.end method
