.class Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;
.super Ljava/lang/Object;
.source "StorelessBivariateCovariance.java"


# instance fields
.field private biasCorrected:Z

.field private covarianceNumerator:D

.field private meanX:D

.field private meanY:D

.field private n:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;-><init>(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "biasCorrection"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 73
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    .line 74
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->biasCorrected:Z

    .line 75
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V
    .locals 14
    .param p1, "cov"    # Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    .prologue
    .line 101
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 102
    .local v4, "oldN":D
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    iget-wide v8, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 103
    iget-wide v6, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    sub-double v0, v6, v8

    .line 104
    .local v0, "deltaX":D
    iget-wide v6, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    sub-double v2, v6, v8

    .line 105
    .local v2, "deltaY":D
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    iget-wide v8, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    mul-double/2addr v8, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    .line 106
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    iget-wide v8, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    mul-double/2addr v8, v2

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    .line 107
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    iget-wide v8, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    mul-double/2addr v10, v4

    iget-wide v12, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double/2addr v10, v12

    mul-double/2addr v10, v0

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    .line 108
    return-void
.end method

.method public getN()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    return-wide v0
.end method

.method public getResult()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 128
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->biasCorrected:Z

    if-eqz v0, :cond_1

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 134
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public increment(DD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 84
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    add-double/2addr v4, v8

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 85
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    sub-double v0, p1, v4

    .line 86
    .local v0, "deltaX":D
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    sub-double v2, p3, v4

    .line 87
    .local v2, "deltaY":D
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double v6, v0, v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    .line 88
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double v6, v2, v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    .line 89
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    div-double/2addr v6, v8

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    .line 90
    return-void
.end method
