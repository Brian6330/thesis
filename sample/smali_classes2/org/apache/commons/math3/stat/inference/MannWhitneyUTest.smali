.class public Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;
.super Ljava/lang/Object;
.source "MannWhitneyUTest.java"


# instance fields
.field private naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    .line 60
    return-void
.end method

.method private calculateAsymptoticPValue(DII)D
    .locals 17
    .param p1, "Umin"    # D
    .param p3, "n1"    # I
    .param p4, "n2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 175
    move/from16 v0, p3

    int-to-long v4, v0

    move/from16 v0, p4

    int-to-long v6, v0

    mul-long v12, v4, v6

    .line 178
    .local v12, "n1n2prod":J
    long-to-double v4, v12

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v8, v4, v6

    .line 179
    .local v8, "EU":D
    add-int v3, p3, p4

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    mul-long/2addr v4, v12

    long-to-double v4, v4

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v10, v4, v6

    .line 181
    .local v10, "VarU":D
    sub-double v4, p1, v8

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double v14, v4, v6

    .line 185
    .local v14, "z":D
    new-instance v2, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 187
    .local v2, "standardNormal":Lorg/apache/commons/math3/distribution/NormalDistribution;
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {v2, v14, v15}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private concatenateSamples([D[D)[D
    .locals 4
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    const/4 v3, 0x0

    .line 89
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 91
    .local v0, "z":[D
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-object v0
.end method

.method private ensureDataConformance([D[D)V
    .locals 1
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 73
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 75
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 79
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 81
    :cond_3
    return-void
.end method


# virtual methods
.method public mannWhitneyU([D[D)D
    .locals 16
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->ensureDataConformance([D[D)V

    .line 130
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->concatenateSamples([D[D)[D

    move-result-object v10

    .line 131
    .local v10, "z":[D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v11, v10}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object v7

    .line 133
    .local v7, "ranks":[D
    const-wide/16 v8, 0x0

    .line 139
    .local v8, "sumRankX":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v6, v11, :cond_0

    .line 140
    aget-wide v12, v7, v6

    add-double/2addr v8, v12

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    :cond_0
    move-object/from16 v0, p1

    array-length v11, v0

    int-to-long v12, v11

    move-object/from16 v0, p1

    array-length v11, v0

    add-int/lit8 v11, v11, 0x1

    int-to-long v14, v11

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    long-to-double v12, v12

    sub-double v2, v8, v12

    .line 152
    .local v2, "U1":D
    move-object/from16 v0, p1

    array-length v11, v0

    int-to-long v12, v11

    move-object/from16 v0, p2

    array-length v11, v0

    int-to-long v14, v11

    mul-long/2addr v12, v14

    long-to-double v12, v12

    sub-double v4, v12, v2

    .line 154
    .local v4, "U2":D
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    return-wide v12
.end method

.method public mannWhitneyUTest([D[D)D
    .locals 8
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->ensureDataConformance([D[D)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->mannWhitneyU([D[D)D

    move-result-wide v0

    .line 233
    .local v0, "Umax":D
    array-length v4, p1

    int-to-long v4, v4

    array-length v6, p2

    int-to-long v6, v6

    mul-long/2addr v4, v6

    long-to-double v4, v4

    sub-double v2, v4, v0

    .line 235
    .local v2, "Umin":D
    array-length v4, p1

    array-length v5, p2

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->calculateAsymptoticPValue(DII)D

    move-result-wide v4

    return-wide v4
.end method
