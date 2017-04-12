.class public final Lorg/apache/commons/math3/stat/interval/IntervalUtils;
.super Ljava/lang/Object;
.source "IntervalUtils.java"


# static fields
.field private static final AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 43
    new-instance v0, Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 49
    new-instance v0, Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static checkParameters(IID)V
    .locals 6
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .prologue
    const/4 v4, 0x1

    .line 158
    if-gtz p0, :cond_0

    .line 159
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_TRIALS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 161
    :cond_0
    if-gez p1, :cond_1

    .line 162
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 164
    :cond_1
    if-le p1, p0, :cond_2

    .line 165
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 168
    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_4

    .line 169
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_CONFIDENCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 172
    :cond_4
    return-void
.end method

.method public static getAgrestiCoullInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 2
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .prologue
    .line 75
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method

.method public static getClopperPearsonInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 2
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .prologue
    .line 104
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalApproximationInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 2
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .prologue
    .line 122
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method

.method public static getWilsonScoreInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 2
    .param p0, "numberOfTrials"    # I
    .param p1, "numberOfSuccesses"    # I
    .param p2, "confidenceLevel"    # D

    .prologue
    .line 143
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object v0

    return-object v0
.end method
