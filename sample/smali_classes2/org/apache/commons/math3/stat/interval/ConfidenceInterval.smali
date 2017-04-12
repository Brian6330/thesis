.class public Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
.super Ljava/lang/Object;
.source "ConfidenceInterval.java"


# instance fields
.field private confidenceLevel:D

.field private lowerBound:D

.field private upperBound:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "lowerBound"    # D
    .param p3, "upperBound"    # D
    .param p5, "confidenceLevel"    # D

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->checkParameters(DDD)V

    .line 58
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->lowerBound:D

    .line 59
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->upperBound:D

    .line 60
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->confidenceLevel:D

    .line 61
    return-void
.end method

.method private checkParameters(DDD)V
    .locals 7
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "confidence"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    .line 103
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 105
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p5, v0

    if-ltz v0, :cond_2

    .line 106
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_CONFIDENCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 108
    :cond_2
    return-void
.end method


# virtual methods
.method public getConfidenceLevel()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->confidenceLevel:D

    return-wide v0
.end method

.method public getLowerBound()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->lowerBound:D

    return-wide v0
.end method

.method public getUpperBound()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->upperBound:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->lowerBound:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->upperBound:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (confidence level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->confidenceLevel:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
