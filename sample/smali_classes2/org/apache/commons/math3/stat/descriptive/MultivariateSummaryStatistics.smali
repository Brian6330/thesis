.class public Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;
.super Ljava/lang/Object;
.source "MultivariateSummaryStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalMultivariateSummary;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f8769bfad0f29deL


# instance fields
.field private covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

.field private geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private k:I

.field private maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private n:J

.field private sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "k"    # I
    .param p2, "isCovarianceBiasCorrected"    # Z

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    .line 115
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    .line 117
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 118
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 119
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 120
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 121
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 122
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 123
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    aput-object v2, v1, v0

    .line 127
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    aput-object v2, v1, v0

    .line 128
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    aput-object v2, v1, v0

    .line 129
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    aput-object v2, v1, v0

    .line 130
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    aput-object v2, v1, v0

    .line 131
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    aput-object v2, v1, v0

    .line 132
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    aput-object v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    .line 138
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "data"    # [D
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "separator"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 336
    if-lez v0, :cond_0

    .line 337
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_0
    aget-wide v2, p2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    return-void
.end method

.method private checkDimension(I)V
    .locals 2
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 631
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-eq p1, v0, :cond_0

    .line 632
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 634
    :cond_0
    return-void
.end method

.method private checkEmpty()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 619
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 620
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 623
    :cond_0
    return-void
.end method

.method private getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D
    .locals 4
    .param p1, "stats"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .prologue
    .line 185
    array-length v2, p1

    new-array v1, v2, [D

    .line 186
    .local v1, "results":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 187
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-object v1
.end method

.method private setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 2
    .param p1, "newImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .param p2, "oldImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->checkEmpty()V

    .line 421
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->checkDimension(I)V

    .line 422
    array-length v0, p1

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    return-void
.end method


# virtual methods
.method public addValue([D)V
    .locals 8
    .param p1, "value"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 148
    array-length v1, p1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->checkDimension(I)V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ge v0, v1, :cond_0

    .line 150
    aget-wide v2, p1, v0

    .line 151
    .local v2, "v":D
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 152
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 153
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 154
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 155
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 156
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 157
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "v":D
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->increment([D)V

    .line 160
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    .line 161
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 348
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 351
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 352
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 353
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 354
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 355
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 356
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->clear()V

    .line 359
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    if-ne p1, p0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;

    if-nez v3, :cond_2

    move v1, v2

    .line 373
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 375
    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;

    .line 376
    .local v0, "stat":Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->getResult()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    return v0
.end method

.method public getGeoMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getGeometricMean()[D
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMax()[D
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMaxImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getMean()[D
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getMin()[D
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMinImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    return-wide v0
.end method

.method public getStandardDeviation()[D
    .locals 8

    .prologue
    .line 244
    iget v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    new-array v2, v3, [D

    .line 245
    .local v2, "stdDev":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 246
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 255
    :cond_0
    :goto_0
    return-object v2

    .line 247
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 248
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->getResult()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 251
    .local v1, "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ge v0, v3, :cond_0

    .line 252
    invoke-interface {v1, v0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSum()[D
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getSumImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getSumLog()[D
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getSumLogImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getSumSq()[D
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getSumsqImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 395
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 396
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 397
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 398
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 399
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    add-int v0, v1, v2

    .line 400
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 401
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 402
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v2

    add-int v0, v1, v2

    .line 403
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 404
    return v0
.end method

.method public setGeoMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "geoMeanImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 585
    return-void
.end method

.method public setMaxImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "maxImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 531
    return-void
.end method

.method public setMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "meanImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 612
    return-void
.end method

.method public setMinImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "minImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 504
    return-void
.end method

.method public setSumImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 450
    return-void
.end method

.method public setSumLogImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumLogImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 558
    return-void
.end method

.method public setSumsqImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumsqImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    .line 477
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 308
    const-string v6, ", "

    .line 309
    .local v6, "separator":Ljava/lang/String;
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "suffix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v1, "outBuffer":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultivariateSummaryStatistics:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v2

    const-string v3, "min: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v2

    const-string v3, "max: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v2

    const-string v3, "mean: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v2

    const-string v3, "geometric mean: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v2

    const-string v3, "sum of squares: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v2

    const-string v3, "sum of logarithms: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getStandardDeviation()[D

    move-result-object v2

    const-string v3, "standard deviation: "

    const-string v4, ", "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "covariance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
