.class public Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;
.source "SynchronizedMultivariateSummaryStatistics.java"


# static fields
.field private static final serialVersionUID:J = 0x6287ad8bc27185a3L


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "k"    # I
    .param p2, "isCovarianceBiasCorrected"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;-><init>(IZ)V

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized addValue([D)V
    .locals 1
    .param p1, "value"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->addValue([D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->equals(Ljava/lang/Object;)Z
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

.method public declared-synchronized getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
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

.method public declared-synchronized getDimension()I
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getDimension()I
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

.method public declared-synchronized getGeoMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeoMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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

.method public declared-synchronized getGeometricMean()[D
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D
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

.method public declared-synchronized getMax()[D
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D
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

.method public declared-synchronized getMaxImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMaxImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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

.method public declared-synchronized getMean()[D
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D
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

.method public declared-synchronized getMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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

.method public declared-synchronized getMin()[D
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D
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

.method public declared-synchronized getMinImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMinImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J
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

.method public declared-synchronized getStandardDeviation()[D
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getStandardDeviation()[D
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

.method public declared-synchronized getSum()[D
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D
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

.method public declared-synchronized getSumImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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

.method public declared-synchronized getSumLog()[D
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D
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

.method public declared-synchronized getSumLogImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLogImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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

.method public declared-synchronized getSumSq()[D
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D
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

.method public declared-synchronized getSumsqImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumsqImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
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
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->hashCode()I
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

.method public declared-synchronized setGeoMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "geoMeanImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setGeoMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "maxImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setMaxImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "meanImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "minImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setMinImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setSumImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumLogImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumLogImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setSumLogImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumsqImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .param p1, "sumsqImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setSumsqImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->toString()Ljava/lang/String;
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
