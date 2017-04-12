.class public Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
.source "SynchronizedSummaryStatistics.java"


# static fields
.field private static final serialVersionUID:J = 0x1a81307806552788L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 55
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;)V

    .line 56
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 358
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 362
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 364
    return-void

    .line 362
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 363
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;->copy()Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;-><init>()V

    .line 341
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-object v0

    .line 338
    .end local v0    # "result":Lorg/apache/commons/math3/stat/descriptive/SynchronizedSummaryStatistics;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGeoMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeoMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGeometricMean()D
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMax()D
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMean()D
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()D
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMinImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getN()J
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPopulationVariance()D
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getPopulationVariance()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQuadraticMean()D
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getQuadraticMean()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()D
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSum()D
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSumImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSumLogImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumLogImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSumsq()D
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVariance()D
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeoMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "geoMeanImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setGeoMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "maxImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "meanImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "minImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setMinImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setSumImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumLogImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumsqImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "varianceImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
