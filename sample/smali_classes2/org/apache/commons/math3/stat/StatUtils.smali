.class public final Lorg/apache/commons/math3/stat/StatUtils;
.super Ljava/lang/Object;
.source "StatUtils.java"


# static fields
.field private static final GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

.field private static final MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

.field private static final PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 52
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 55
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 58
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 64
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 70
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 73
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    .line 76
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static geometricMean([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static geometricMean([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getMode([DII)[D
    .locals 12
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I

    .prologue
    .line 870
    new-instance v1, Lorg/apache/commons/math3/stat/Frequency;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/Frequency;-><init>()V

    .line 871
    .local v1, "freq":Lorg/apache/commons/math3/stat/Frequency;
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int v7, p1, p2

    if-ge v2, v7, :cond_1

    .line 872
    aget-wide v8, p0, v2

    .line 873
    .local v8, "value":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_0

    .line 874
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 871
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    .end local v8    # "value":D
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/Frequency;->getMode()Ljava/util/List;

    move-result-object v5

    .line 879
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Comparable<*>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    .line 880
    .local v6, "modes":[D
    const/4 v2, 0x0

    .line 881
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 882
    .local v0, "c":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "c":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v6, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 884
    :cond_2
    return-object v6
.end method

.method public static max([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 554
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 581
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static meanDifference([D[D)D
    .locals 4
    .param p0, "sample1"    # [D
    .param p1, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/StatUtils;->sumDifference([D[D)D

    move-result-wide v0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static min([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 602
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mode([D)[D
    .locals 3
    .param p0, "sample"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 817
    if-nez p0, :cond_0

    .line 818
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 820
    :cond_0
    array-length v0, p0

    invoke-static {p0, v2, v0}, Lorg/apache/commons/math3/stat/StatUtils;->getMode([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static mode([DII)[D
    .locals 3
    .param p0, "sample"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I

    .prologue
    .line 845
    if-nez p0, :cond_0

    .line 846
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 849
    :cond_0
    if-gez p1, :cond_1

    .line 850
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 853
    :cond_1
    if-gez p2, :cond_2

    .line 854
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 857
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->getMode([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static normalize([D)[D
    .locals 10
    .param p0, "sample"    # [D

    .prologue
    .line 777
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v6}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 780
    .local v6, "stats":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p0

    if-ge v0, v7, :cond_0

    .line 781
    aget-wide v8, p0, v0

    invoke-virtual {v6, v8, v9}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->addValue(D)V

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v2

    .line 786
    .local v2, "mean":D
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v4

    .line 789
    .local v4, "standardDeviation":D
    array-length v7, p0

    new-array v1, v7, [D

    .line 791
    .local v1, "standardizedSample":[D
    const/4 v0, 0x0

    :goto_1
    array-length v7, p0

    if-ge v0, v7, :cond_1

    .line 793
    aget-wide v8, p0, v0

    sub-double/2addr v8, v2

    div-double/2addr v8, v4

    aput-wide v8, v1, v0

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    :cond_1
    return-object v1
.end method

.method public static percentile([DD)D
    .locals 3
    .param p0, "values"    # [D
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 657
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static percentile([DIID)D
    .locals 7
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DD)D
    .locals 3
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DDII)D
    .locals 7
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static product([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static product([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumDifference([D[D)D
    .locals 8
    .param p0, "sample1"    # [D
    .param p1, "sample2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 705
    array-length v1, p0

    .line 706
    .local v1, "n":I
    array-length v4, p1

    if-eq v1, v4, :cond_0

    .line 707
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, p1

    invoke-direct {v4, v1, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 709
    :cond_0
    if-gtz v1, :cond_1

    .line 710
    new-instance v4, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v4

    .line 712
    :cond_1
    const-wide/16 v2, 0x0

    .line 713
    .local v2, "result":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 714
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_2
    return-wide v2
.end method

.method public static sumLog([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumLog([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumSq([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumSq([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([D)D
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DD)D
    .locals 3
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 426
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DDII)D
    .locals 7
    .param p0, "values"    # [D
    .param p1, "mean"    # D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DII)D
    .locals 2
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varianceDifference([D[DD)D
    .locals 12
    .param p0, "sample1"    # [D
    .param p1, "sample2"    # [D
    .param p2, "meanDifference"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 751
    const-wide/16 v4, 0x0

    .line 752
    .local v4, "sum1":D
    const-wide/16 v6, 0x0

    .line 753
    .local v6, "sum2":D
    const-wide/16 v0, 0x0

    .line 754
    .local v0, "diff":D
    array-length v3, p0

    .line 755
    .local v3, "n":I
    array-length v8, p1

    if-eq v3, v8, :cond_0

    .line 756
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v9, p1

    invoke-direct {v8, v3, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 758
    :cond_0
    if-ge v3, v10, :cond_1

    .line 759
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 761
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 762
    aget-wide v8, p0, v2

    aget-wide v10, p1, v2

    sub-double v0, v8, v10

    .line 763
    sub-double v8, v0, p2

    sub-double v10, v0, p2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 764
    sub-double v8, v0, p2

    add-double/2addr v6, v8

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_2
    mul-double v8, v6, v6

    int-to-double v10, v3

    div-double/2addr v8, v10

    sub-double v8, v4, v8

    add-int/lit8 v10, v3, -0x1

    int-to-double v10, v10

    div-double/2addr v8, v10

    return-wide v8
.end method
