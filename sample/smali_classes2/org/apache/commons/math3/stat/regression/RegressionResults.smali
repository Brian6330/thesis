.class public Lorg/apache/commons/math3/stat/regression/RegressionResults;
.super Ljava/lang/Object;
.source "RegressionResults.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADJRSQ_IDX:I = 0x4

.field private static final MSE_IDX:I = 0x3

.field private static final RSQ_IDX:I = 0x2

.field private static final SSE_IDX:I = 0x0

.field private static final SST_IDX:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final containsConstant:Z

.field private final globalFitInfo:[D

.field private final isSymmetricVCD:Z

.field private final nobs:J

.field private final parameters:[D

.field private final rank:I

.field private final varCovData:[[D


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    move-object v0, v1

    .line 67
    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 69
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 70
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 71
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 72
    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    .line 73
    return-void
.end method

.method public constructor <init>([D[[DZJIDDDZZ)V
    .locals 14
    .param p1, "parameters"    # [D
    .param p2, "varcov"    # [[D
    .param p3, "isSymmetricCompressed"    # Z
    .param p4, "nobs"    # J
    .param p6, "rank"    # I
    .param p7, "sumy"    # D
    .param p9, "sumysq"    # D
    .param p11, "sse"    # D
    .param p13, "containsConstant"    # Z
    .param p14, "copyData"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-eqz p14, :cond_0

    .line 100
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 101
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v3, v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 102
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 103
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v4, p2, v2

    invoke-static {v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v4

    aput-object v4, v3, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 107
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 109
    :cond_1
    move/from16 v0, p3

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 110
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 111
    move/from16 v0, p6

    iput v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 112
    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 113
    const/4 v3, 0x5

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    .line 114
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 116
    if-lez p6, :cond_3

    .line 117
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v4, 0x1

    if-eqz p13, :cond_2

    mul-double v6, p7, p7

    move-wide/from16 v0, p4

    long-to-double v8, v0

    div-double/2addr v6, v8

    sub-double p9, p9, v6

    .end local p9    # "sumysq":D
    :cond_2
    aput-wide p9, v3, v4

    .line 121
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v4, 0x0

    aput-wide p11, v3, v4

    .line 122
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    move/from16 v0, p6

    int-to-long v8, v0

    sub-long v8, p4, v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 124
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v4, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 128
    if-nez p13, :cond_4

    .line 129
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v4, 0x4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v10, 0x2

    aget-wide v10, v5, v10

    sub-double/2addr v8, v10

    move-wide/from16 v0, p4

    long-to-double v10, v0

    move/from16 v0, p6

    int-to-long v12, v0

    sub-long v12, p4, v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 136
    :goto_1
    return-void

    .line 133
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v4, 0x4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p4

    long-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    mul-double v8, v8, p11

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    move/from16 v0, p6

    int-to-long v12, v0

    sub-long v12, p4, v12

    long-to-double v12, v12

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v3, v4

    goto :goto_1
.end method

.method private getVcvElement(II)D
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    if-eqz v0, :cond_4

    .line 401
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 403
    if-ne p1, p2, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p1

    .line 418
    :goto_0
    return-wide v0

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p2

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 406
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p2

    aget-wide v0, v0, p1

    goto :goto_0

    .line 411
    :cond_2
    if-le p1, p2, :cond_3

    .line 412
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, v2

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    goto :goto_0

    .line 414
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, v2

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    goto :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_0
.end method


# virtual methods
.method public getAdjustedRSquared()D
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCovarianceOfParameters(II)D
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 241
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 249
    :goto_0
    return-wide v0

    .line 243
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 244
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 246
    :cond_2
    if-ltz p2, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    if-lt p2, v0, :cond_4

    .line 247
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 249
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getErrorSumSquares()D
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getMeanSquareError()D
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    return-wide v0
.end method

.method public getNumberOfParameters()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 262
    const/4 v0, -0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    goto :goto_0
.end method

.method public getParameterEstimate(I)D
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 151
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 156
    :goto_0
    return-wide v0

    .line 153
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 154
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 156
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method public getParameterEstimates()[D
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getRSquared()D
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRegressionSumSquares()D
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getStdErrorOfEstimate(I)D
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 187
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v4, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-wide v2

    .line 190
    :cond_1
    if-ltz p1, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v4, v4

    if-lt p1, v4, :cond_3

    .line 191
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 193
    :cond_3
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v0

    .line 194
    .local v0, "var":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 195
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getStdErrorOfEstimates()[D
    .locals 6

    .prologue
    .line 212
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v4, :cond_1

    .line 213
    const/4 v1, 0x0

    .line 224
    :cond_0
    return-object v1

    .line 215
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v4, v4

    new-array v1, v4, [D

    .line 216
    .local v1, "se":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 217
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v2

    .line 218
    .local v2, "var":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    .line 219
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 216
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    aput-wide v4, v1, v0

    goto :goto_1
.end method

.method public getTotalSumSquares()D
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hasIntercept()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    return v0
.end method
