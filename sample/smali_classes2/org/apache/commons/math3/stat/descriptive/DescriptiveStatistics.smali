.class public Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
.super Ljava/lang/Object;
.source "DescriptiveStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# static fields
.field public static final INFINITE_WINDOW:I = -0x1

.field private static final SET_QUANTILE_METHOD_NAME:Ljava/lang/String; = "setQuantile"

.field private static final serialVersionUID:J = 0x395b9ac8227c57e8L


# instance fields
.field private eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

.field private geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field protected windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 117
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "window"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->setWindowSize(I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 152
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    .line 153
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "initialDoubleArray"    # [D

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 81
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 105
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 111
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 142
    :cond_0
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 757
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 759
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy()Lorg/apache/commons/math3/util/ResizableDoubleArray;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 760
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    iput v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 763
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 764
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 765
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 766
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 767
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 768
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 769
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 770
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 771
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 772
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 773
    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 5
    .param p1, "v"    # D

    .prologue
    .line 164
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElementRolling(D)D

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    goto :goto_0
.end method

.method public apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D
    .locals 2
    .param p1, "stat"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 496
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->compute(Lorg/apache/commons/math3/util/MathArrays$Function;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->clear()V

    .line 339
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .locals 1

    .prologue
    .line 740
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 742
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    .line 743
    return-object v0
.end method

.method public getElement(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElement(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeometricMean()D
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getGeometricMeanImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKurtosis()D
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getKurtosisImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMean()D
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMinImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPercentile(D)D
    .locals 11
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 438
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    instance-of v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    if-eqz v3, :cond_0

    .line 439
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    check-cast v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v3, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    .line 457
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v4

    return-wide v4

    .line 442
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setQuantile"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e1":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "setQuantile"

    aput-object v6, v5, v9

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 449
    .end local v0    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 450
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "setQuantile"

    aput-object v6, v5, v8

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 453
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 454
    .local v2, "e3":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public declared-synchronized getPercentileImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPopulationVariance()D
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getQuadraticMean()D
    .locals 6

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    .line 270
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getSumsq()D

    move-result-wide v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public getSkewness()D
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSkewnessImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSortedValues()[D
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getValues()[D

    move-result-object v0

    .line 405
    .local v0, "sort":[D
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 406
    return-object v0
.end method

.method public getStandardDeviation()D
    .locals 6

    .prologue
    .line 250
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 251
    .local v0, "stdDev":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getVariance()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 258
    :cond_0
    :goto_0
    return-wide v0

    .line 255
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSum()D
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSumImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSumsq()D
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElements()[D

    move-result-object v0

    return-object v0
.end method

.method public getVariance()D
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    return v0
.end method

.method public removeMostRecentValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardMostRecentElements(I)V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public replaceMostRecentValue(D)D
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->substituteMostRecentElement(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setGeometricMeanImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "geometricMeanImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKurtosisImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "kurtosisImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "maxImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "meanImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "minImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPercentileImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 8
    .param p1, "percentileImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setQuantile"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "setQuantile"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    .end local v0    # "e1":Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 638
    :catch_1
    move-exception v1

    .line 639
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "setQuantile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 642
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 643
    .local v2, "e3":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setSkewnessImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "skewnessImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "sumImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 731
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    monitor-exit p0

    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "sumsqImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 1
    .param p1, "varianceImpl"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWindowSize(I)V
    .locals 5
    .param p1, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 367
    if-ge p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    .line 368
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_WINDOW_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 372
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 377
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 378
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardFrontElements(I)V

    .line 380
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v2, "outBuffer":Ljava/lang/StringBuilder;
    const-string v0, "\n"

    .line 471
    .local v0, "endl":Ljava/lang/String;
    const-string v3, "DescriptiveStatistics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v3, "n: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v3, "min: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v3, "max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v3, "mean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v3, "std dev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :try_start_0
    const-string v3, "median: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getPercentile(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    const-string v3, "skewness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getSkewness()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v3, "kurtosis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getKurtosis()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "ex":Lorg/apache/commons/math3/exception/MathIllegalStateException;
    const-string v3, "median: unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
