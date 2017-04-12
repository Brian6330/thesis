.class public Lorg/apache/commons/math3/stat/regression/SimpleRegression;
.super Ljava/lang/Object;
.source "SimpleRegression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# static fields
.field private static final serialVersionUID:J = -0x29b2ccc654c84227L


# instance fields
.field private final hasIntercept:Z

.field private n:J

.field private sumX:D

.field private sumXX:D

.field private sumXY:D

.field private sumY:D

.field private sumYY:D

.field private xbar:D

.field private ybar:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>(Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeIntercept"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 72
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 75
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 78
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 81
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 87
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 90
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 115
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    .line 116
    return-void
.end method

.method private getIntercept(D)D
    .locals 5
    .param p1, "slope"    # D

    .prologue
    .line 743
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    .line 744
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 746
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getRegressionSumSquares(D)D
    .locals 5
    .param p1, "slope"    # D

    .prologue
    .line 756
    mul-double v0, p1, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addData(DD)V
    .locals 19
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 133
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 134
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 148
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v12, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v14, p1, p1

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 150
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v14, p3, p3

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 151
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v14, p1, p3

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double v12, v12, p1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 154
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double v12, v12, p3

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 155
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 156
    return-void

    .line 136
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v12, :cond_0

    .line 137
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v14, v14

    add-double v8, v12, v14

    .line 138
    .local v8, "fact1":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    div-double v10, v12, v14

    .line 139
    .local v10, "fact2":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v4, p1, v12

    .line 140
    .local v4, "dx":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v6, p3, v12

    .line 141
    .local v6, "dy":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v14, v4, v4

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 142
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v14, v6, v6

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 143
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v14, v4, v6

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 144
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v14, v4, v8

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 145
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v14, v6, v8

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto/16 :goto_0
.end method

.method public addData([[D)V
    .locals 9
    .param p1, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 260
    aget-object v1, p1, v0

    array-length v1, v1

    if-ge v1, v6, :cond_0

    .line 261
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v4, p1, v0

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 264
    :cond_0
    aget-object v1, p1, v0

    aget-wide v2, v1, v7

    aget-object v1, p1, v0

    aget-wide v4, v1, v8

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    return-void
.end method

.method public addObservation([DD)V
    .locals 6
    .param p1, "x"    # [D
    .param p2, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 278
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 279
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    array-length v0, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 281
    :cond_2
    aget-wide v0, p1, v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 282
    return-void
.end method

.method public addObservations([[D[D)V
    .locals 8
    .param p1, "x"    # [[D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 295
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_3

    .line 296
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v6, [Ljava/lang/Object;

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    if-nez p2, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    :cond_1
    array-length v2, p1

    goto :goto_0

    :cond_2
    array-length v3, p2

    goto :goto_1

    .line 301
    :cond_3
    const/4 v1, 0x1

    .line 302
    .local v1, "obsOk":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 303
    aget-object v2, p1, v0

    if-eqz v2, :cond_4

    aget-object v2, p1, v0

    array-length v2, v2

    if-nez v2, :cond_5

    .line 304
    :cond_4
    const/4 v1, 0x0

    .line 302
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 307
    :cond_6
    if-nez v1, :cond_7

    .line 308
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 312
    :cond_7
    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_8

    .line 313
    aget-object v2, p1, v0

    aget-wide v4, v2, v3

    aget-wide v6, p2, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 315
    :cond_8
    return-void
.end method

.method public append(Lorg/apache/commons/math3/stat/regression/SimpleRegression;)V
    .locals 14
    .param p1, "reg"    # Lorg/apache/commons/math3/stat/regression/SimpleRegression;

    .prologue
    .line 173
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 174
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 175
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 176
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 177
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 178
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 196
    :goto_0
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 197
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 198
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 199
    return-void

    .line 180
    :cond_0
    iget-boolean v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v8, :cond_1

    .line 181
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v12, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long/2addr v10, v12

    long-to-double v10, v10

    div-double v4, v8, v10

    .line 182
    .local v4, "fact1":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    mul-long/2addr v8, v10

    long-to-double v8, v8

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v12, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long/2addr v10, v12

    long-to-double v10, v10

    div-double v6, v8, v10

    .line 183
    .local v6, "fact2":D
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v0, v8, v10

    .line 184
    .local v0, "dx":D
    iget-wide v8, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v2, v8, v10

    .line 185
    .local v2, "dy":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v12, v0, v0

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 186
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v12, v2, v2

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 187
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v12, v0, v2

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 188
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double v10, v0, v4

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 189
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    mul-double v10, v2, v4

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0

    .line 191
    .end local v0    # "dx":D
    .end local v2    # "dy":D
    .end local v4    # "fact1":D
    .end local v6    # "fact2":D
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 192
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 193
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 340
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 341
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 342
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 343
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 344
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 346
    return-void
.end method

.method public getIntercept()D
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getInterceptStdErr()D
    .locals 8

    .prologue
    .line 606
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v0, :cond_0

    .line 607
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 609
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getMeanSquareError()D
    .locals 6

    .prologue
    .line 545
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 546
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 548
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-wide v0
.end method

.method public getR()D
    .locals 6

    .prologue
    .line 566
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    .line 567
    .local v0, "b1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRSquare()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 568
    .local v2, "result":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 569
    neg-double v2, v2

    .line 571
    :cond_0
    return-wide v2
.end method

.method public getRSquare()D
    .locals 4

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getTotalSumSquares()D

    move-result-wide v0

    .line 590
    .local v0, "ssto":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v2

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getRegressionSumSquares()D
    .locals 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRegressionSumSquares(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSignificance()D
    .locals 10

    .prologue
    .line 723
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 724
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 728
    :goto_0
    return-wide v2

    .line 727
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 728
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public getSlope()D
    .locals 6

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 432
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-wide v0

    .line 435
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 438
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getSlopeConfidenceInterval()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 651
    const-wide v0, 0x3fa999999999999aL    # 0.05

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeConfidenceInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSlopeConfidenceInterval(D)D
    .locals 9
    .param p1, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 687
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 688
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 696
    :goto_0
    return-wide v2

    .line 690
    :cond_0
    cmpl-double v1, p1, v6

    if-gez v1, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_2

    .line 691
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 695
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 696
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, p1, v4

    sub-double v4, v6, v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/distribution/TDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public getSlopeStdErr()D
    .locals 4

    .prologue
    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumOfCrossProducts()D
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    return-wide v0
.end method

.method public getSumSquaredErrors()D
    .locals 8

    .prologue
    .line 471
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSumSquares()D
    .locals 4

    .prologue
    .line 485
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 486
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 488
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    goto :goto_0
.end method

.method public getXSumSquares()D
    .locals 4

    .prologue
    .line 499
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 500
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 502
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    goto :goto_0
.end method

.method public hasIntercept()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    return v0
.end method

.method public predict(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    .line 376
    .local v0, "b1":D
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v2, :cond_0

    .line 377
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v2

    mul-double v4, v0, p1

    add-double/2addr v2, v4

    .line 379
    :goto_0
    return-wide v2

    :cond_0
    mul-double v2, v0, p1

    goto :goto_0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 772
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v3, :cond_2

    .line 773
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x3

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 774
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 776
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    .line 777
    const/4 v3, 0x2

    new-array v4, v3, [D

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept()D

    move-result-wide v6

    aput-wide v6, v4, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 778
    .local v4, "params":[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v30

    .line 779
    .local v30, "mse":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    add-double v12, v6, v8

    .line 780
    .local v12, "_syy":D
    const/4 v3, 0x3

    new-array v2, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double v6, v6, v30

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    neg-double v6, v6

    mul-double v6, v6, v30

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v6, v8

    aput-wide v6, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double v6, v30, v6

    aput-wide v6, v2, v3

    .line 781
    .local v2, "vcv":[D
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v5, 0x1

    new-array v5, v5, [[D

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    move-object v15, v3

    .line 802
    .end local v12    # "_syy":D
    .end local v30    # "mse":D
    :goto_0
    return-object v15

    .line 784
    .end local v2    # "vcv":[D
    .end local v4    # "params":[D
    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v4, v3

    const/4 v3, 0x1

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v4, v3

    .line 786
    .restart local v4    # "params":[D
    const/4 v3, 0x3

    new-array v2, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v2, v3

    const/4 v3, 0x2

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v2, v3

    .line 787
    .restart local v2    # "vcv":[D
    new-instance v15, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v3, 0x1

    new-array v0, v3, [[D

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v2, v17, v3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    move-wide/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v26

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v29}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    goto :goto_0

    .line 791
    .end local v2    # "vcv":[D
    .end local v4    # "params":[D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x2

    cmp-long v3, v6, v8

    if-gez v3, :cond_3

    .line 792
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 794
    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_4

    .line 795
    const/4 v3, 0x1

    new-array v2, v3, [D

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 796
    .restart local v2    # "vcv":[D
    const/4 v3, 0x1

    new-array v4, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 797
    .restart local v4    # "params":[D
    new-instance v15, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v3, 0x1

    new-array v0, v3, [[D

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v2, v17, v3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    move-wide/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v29}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    goto/16 :goto_0

    .line 800
    .end local v2    # "vcv":[D
    .end local v4    # "params":[D
    :cond_4
    const/4 v3, 0x1

    new-array v2, v3, [D

    const/4 v3, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v2, v3

    .line 801
    .restart local v2    # "vcv":[D
    const/4 v3, 0x1

    new-array v4, v3, [D

    const/4 v3, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v4, v3

    .line 802
    .restart local v4    # "params":[D
    new-instance v15, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v3, 0x1

    new-array v0, v3, [[D

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v2, v17, v3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    const-wide/high16 v22, 0x7ff8000000000000L    # NaN

    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    const-wide/high16 v26, 0x7ff8000000000000L    # NaN

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v29}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    goto/16 :goto_0
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 40
    .param p1, "variablesToInclude"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 817
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1

    .line 818
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 820
    :cond_1
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v5, 0x2

    if-gt v3, v5, :cond_2

    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v3, :cond_4

    .line 821
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZE_EXCEEDS_MAX_VARIABLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v9, 0x1

    if-le v3, v9, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    .line 826
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v3, :cond_c

    .line 827
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    .line 828
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 829
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_INCREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 830
    :cond_5
    const/4 v3, 0x0

    aget v3, p1, v3

    if-eqz v3, :cond_6

    .line 831
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 833
    :cond_6
    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    .line 834
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 836
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v3

    .line 879
    :goto_1
    return-object v3

    .line 838
    :cond_8
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_9

    const/4 v3, 0x0

    aget v3, p1, v3

    if-eqz v3, :cond_9

    .line 839
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 841
    :cond_9
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    div-double v32, v6, v8

    .line 842
    .local v32, "_mean":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double v12, v6, v32

    .line 843
    .local v12, "_syy":D
    const/4 v3, 0x0

    aget v3, p1, v3

    if-nez v3, :cond_a

    .line 845
    const/4 v3, 0x1

    new-array v2, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    mul-long/2addr v8, v10

    long-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 846
    .local v2, "vcv":[D
    const/4 v3, 0x1

    new-array v4, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    aput-wide v6, v4, v3

    .line 847
    .local v4, "params":[D
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v5, 0x1

    new-array v5, v5, [[D

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double v12, v12, v32

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .end local v12    # "_syy":D
    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    goto :goto_1

    .line 851
    .end local v2    # "vcv":[D
    .end local v4    # "params":[D
    .restart local v12    # "_syy":D
    :cond_a
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 853
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    add-double v36, v6, v8

    .line 854
    .local v36, "_sxx":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    add-double v38, v6, v8

    .line 855
    .local v38, "_sxy":D
    const-wide/16 v6, 0x0

    mul-double v8, v38, v38

    div-double v8, v8, v36

    sub-double v8, v12, v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v14

    .line 856
    .local v14, "_sse":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double v34, v14, v6

    .line 857
    .local v34, "_mse":D
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_b

    .line 858
    const/4 v3, 0x1

    new-array v2, v3, [D

    const/4 v3, 0x0

    div-double v6, v34, v36

    aput-wide v6, v2, v3

    .line 859
    .restart local v2    # "vcv":[D
    const/4 v3, 0x1

    new-array v4, v3, [D

    const/4 v3, 0x0

    div-double v6, v38, v36

    aput-wide v6, v4, v3

    .line 860
    .restart local v4    # "params":[D
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v5, 0x1

    new-array v5, v5, [[D

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    goto/16 :goto_1

    .line 864
    .end local v2    # "vcv":[D
    .end local v4    # "params":[D
    :cond_b
    const/4 v3, 0x1

    new-array v2, v3, [D

    const/4 v3, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v2, v3

    .line 865
    .restart local v2    # "vcv":[D
    const/4 v3, 0x1

    new-array v4, v3, [D

    const/4 v3, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v4, v3

    .line 866
    .restart local v4    # "params":[D
    new-instance v17, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v3, 0x1

    new-array v0, v3, [[D

    move-object/from16 v19, v0

    const/4 v3, 0x0

    aput-object v2, v19, v3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-wide/from16 v21, v0

    const/16 v23, 0x1

    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    const-wide/high16 v26, 0x7ff8000000000000L    # NaN

    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v18, v4

    invoke-direct/range {v17 .. v31}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    move-object/from16 v3, v17

    goto/16 :goto_1

    .line 873
    .end local v2    # "vcv":[D
    .end local v4    # "params":[D
    .end local v12    # "_syy":D
    .end local v14    # "_sse":D
    .end local v32    # "_mean":D
    .end local v34    # "_mse":D
    .end local v36    # "_sxx":D
    .end local v38    # "_sxy":D
    :cond_c
    const/4 v3, 0x0

    aget v3, p1, v3

    if-eqz v3, :cond_d

    .line 874
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 876
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v3

    goto/16 :goto_1

    .line 879
    .restart local v12    # "_syy":D
    .restart local v32    # "_mean":D
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public removeData(DD)V
    .locals 15
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 215
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 216
    iget-boolean v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v8, :cond_1

    .line 217
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v10

    .line 218
    .local v4, "fact1":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    div-double v6, v8, v10

    .line 219
    .local v6, "fact2":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v0, p1, v8

    .line 220
    .local v0, "dx":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v2, p3, v8

    .line 221
    .local v2, "dy":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v10, v0, v0

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 222
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v10, v2, v2

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 223
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v10, v0, v2

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 224
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v10, v0, v4

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 225
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v10, v2, v4

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 234
    .end local v0    # "dx":D
    .end local v2    # "dy":D
    .end local v6    # "fact2":D
    :goto_0
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    sub-double v8, v8, p1

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 235
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    sub-double v8, v8, p3

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 236
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 238
    .end local v4    # "fact1":D
    :cond_0
    return-void

    .line 227
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v10

    .line 228
    .restart local v4    # "fact1":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v10, p1, p1

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 229
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v10, p3, p3

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 230
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v10, p1, p3

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 231
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v10, p1, v4

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 232
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v10, p3, v4

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0
.end method

.method public removeData([[D)V
    .locals 6
    .param p1, "data"    # [[D

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 332
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    aget-object v1, p1, v0

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->removeData(DD)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method
