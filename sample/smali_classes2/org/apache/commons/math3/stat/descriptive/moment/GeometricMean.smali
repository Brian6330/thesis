.class public Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "GeometricMean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7180b41046b3667dL


# instance fields
.field private sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 66
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 78
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V
    .locals 0
    .param p1, "sumOfLogs"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 87
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
    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 208
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->getN()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 212
    :cond_0
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 196
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->setData([D)V

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 199
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 126
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    .line 96
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V

    .line 97
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 4
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    .line 116
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public getSumLogImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 106
    return-void
.end method

.method public setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "sumLogImpl"    # Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->checkEmpty()V

    .line 173
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 174
    return-void
.end method
