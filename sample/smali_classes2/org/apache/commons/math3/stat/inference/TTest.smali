.class public Lorg/apache/commons/math3/stat/inference/TTest;
.super Ljava/lang/Object;
.source "TTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V
    .locals 5
    .param p1, "stat"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1174
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 1176
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1177
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1182
    :cond_1
    return-void
.end method

.method private checkSampleData([D)V
    .locals 5
    .param p1, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1152
    if-nez p1, :cond_0

    .line 1153
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 1155
    :cond_0
    array-length v0, p1

    if-ge v0, v3, :cond_1

    .line 1156
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1161
    :cond_1
    return-void
.end method

.method private checkSignificanceLevel(D)V
    .locals 9
    .param p1, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/16 v4, 0x0

    .line 1135
    cmpg-double v0, p1, v4

    if-lez v0, :cond_0

    cmpl-double v0, p1, v6

    if-lez v0, :cond_1

    .line 1136
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 1140
    :cond_1
    return-void
.end method


# virtual methods
.method protected df(DDDD)D
    .locals 11
    .param p1, "v1"    # D
    .param p3, "v2"    # D
    .param p5, "n1"    # D
    .param p7, "n2"    # D

    .prologue
    .line 987
    div-double v0, p1, p5

    div-double v2, p3, p7

    add-double/2addr v0, v2

    div-double v2, p1, p5

    div-double v4, p3, p7

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    mul-double v2, p1, p1

    mul-double v4, p5, p5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p5, v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    mul-double v4, p3, p3

    mul-double v6, p7, p7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, p7, v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected homoscedasticT(DDDDDD)D
    .locals 9
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D

    .prologue
    .line 1040
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p9, v2

    mul-double/2addr v2, p5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, p11, v4

    mul-double v4, v4, p7

    add-double/2addr v2, v4

    add-double v4, p9, p11

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    .line 1041
    .local v0, "pooledVariance":D
    sub-double v2, p1, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v4, v4, p9

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v6, v6, p11

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 16
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 411
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v12, v2

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public homoscedasticT([D[D)D
    .locals 16
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 278
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v4

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v8

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v10

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-double v12, v2

    move-object/from16 v0, p2

    array-length v2, v0

    int-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method protected homoscedasticTTest(DDDDDD)D
    .locals 11
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 1119
    .local v4, "t":D
    add-double v6, p9, p11

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v0, v6, v8

    .line 1121
    .local v0, "degreesOfFreedom":D
    new-instance v2, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 1122
    .local v2, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    neg-double v8, v4

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 16
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 899
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 901
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v12, v2

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public homoscedasticTTest([D[D)D
    .locals 16
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 679
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v4

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v8

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v10

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-double v12, v2

    move-object/from16 v0, p2

    array-length v2, v0

    int-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public homoscedasticTTest([D[DD)Z
    .locals 3
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 808
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pairedT([D[D)D
    .locals 10
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 85
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 86
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v2

    .line 87
    .local v2, "meanDifference":D
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v6

    array-length v0, p1

    int-to-double v8, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public pairedTTest([D[D)D
    .locals 10
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v2

    .line 134
    .local v2, "meanDifference":D
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v6

    array-length v0, p1

    int-to-double v8, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public pairedTTest([D[DD)Z
    .locals 3
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 182
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected t(DDDD)D
    .locals 5
    .param p1, "m"    # D
    .param p3, "mu"    # D
    .param p5, "v"    # D
    .param p7, "n"    # D

    .prologue
    .line 1003
    sub-double v0, p1, p3

    div-double v2, p5, p7

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected t(DDDDDD)D
    .locals 7
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D

    .prologue
    .line 1022
    sub-double v0, p1, p3

    div-double v2, p5, p9

    div-double v4, p7, p11

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 11
    .param p1, "mu"    # D
    .param p3, "sampleStats"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 233
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v2

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v6

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    long-to-double v8, v0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public t(D[D)D
    .locals 11
    .param p1, "mu"    # D
    .param p3, "observed"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 207
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v2

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v6

    array-length v0, p3

    int-to-double v8, v0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 16
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 363
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v12, v2

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public t([D[D)D
    .locals 16
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 319
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v4

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v8

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v10

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-double v12, v2

    move-object/from16 v0, p2

    array-length v2, v0

    int-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method protected tTest(DDDD)D
    .locals 9
    .param p1, "m"    # D
    .param p3, "mu"    # D
    .param p5, "v"    # D
    .param p7, "n"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1059
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 1061
    .local v2, "t":D
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v1, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, p7, v4

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 1062
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    neg-double v6, v2

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method protected tTest(DDDDDD)D
    .locals 15
    .param p1, "m1"    # D
    .param p3, "m2"    # D
    .param p5, "v1"    # D
    .param p7, "v2"    # D
    .param p9, "n1"    # D
    .param p11, "n2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    .local v12, "t":D
    move-object v1, p0

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    .line 1089
    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->df(DDDD)D

    move-result-wide v10

    .line 1091
    .local v10, "degreesOfFreedom":D
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 1092
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    neg-double v4, v12

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 11
    .param p1, "mu"    # D
    .param p3, "sampleStats"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 535
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v2

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v6

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    long-to-double v8, v0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public tTest(D[D)D
    .locals 11
    .param p1, "mu"    # D
    .param p3, "sample"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 450
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v2

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v6

    array-length v0, p3

    int-to-double v8, v0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 16
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 853
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 854
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v12, v2

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    long-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public tTest([D[D)D
    .locals 16
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 632
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v4

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v8

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v10

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-double v12, v2

    move-object/from16 v0, p2

    array-length v2, v0

    int-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 2
    .param p1, "mu"    # D
    .param p3, "sampleStats"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p4, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 584
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tTest(D[DD)Z
    .locals 2
    .param p1, "mu"    # D
    .param p3, "sample"    # [D
    .param p4, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 3
    .param p1, "sampleStats1"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p2, "sampleStats2"    # Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 971
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tTest([D[DD)Z
    .locals 3
    .param p1, "sample1"    # [D
    .param p2, "sample2"    # [D
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 745
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
