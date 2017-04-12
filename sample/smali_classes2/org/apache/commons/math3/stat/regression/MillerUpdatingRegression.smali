.class public Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;
.super Ljava/lang/Object;
.source "MillerUpdatingRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# instance fields
.field private final d:[D

.field private final epsilon:D

.field private hasIntercept:Z

.field private final lindep:[Z

.field private nobs:J

.field private final nvars:I

.field private final r:[D

.field private final rhs:[D

.field private final rss:[D

.field private rss_set:Z

.field private sserr:D

.field private sumsqy:D

.field private sumy:D

.field private final tol:[D

.field private tol_set:Z

.field private final vorder:[I

.field private final work_sing:[D

.field private final work_tolset:[D

.field private final x_sing:[D


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 88
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    .line 89
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "numberOfVariables"    # I
    .param p2, "includeConstant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    .line 140
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    .line 141
    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 9
    .param p1, "numberOfVariables"    # I
    .param p2, "includeConstant"    # Z
    .param p3, "errorTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 63
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 65
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 67
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 75
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 77
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 101
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 102
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    .line 109
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    .line 110
    iput-wide v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 111
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    .line 112
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    .line 113
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    .line 114
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    .line 115
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    .line 116
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    .line 117
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    .line 118
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    .line 119
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    .line 120
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v0, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "i":I
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    goto :goto_0

    .line 124
    .restart local v0    # "i":I
    :cond_2
    cmpl-double v1, p3, v4

    if-lez v1, :cond_3

    .line 125
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    .line 129
    :goto_2
    return-void

    .line 127
    :cond_3
    neg-double v2, p3

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    goto :goto_2
.end method

.method private cov(I)[D
    .locals 22
    .param p1, "nreq"    # I

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v13, v18, v20

    if-gtz v13, :cond_1

    .line 493
    const/4 v3, 0x0

    .line 536
    :cond_0
    return-object v3

    .line 495
    :cond_1
    const-wide/16 v10, 0x0

    .line 496
    .local v10, "rnk":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v4, v0, :cond_3

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v13, v13, v4

    if-nez v13, :cond_2

    .line 498
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v10, v10, v18

    .line 496
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v18, p1, -0x1

    aget-wide v18, v13, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v20, v10

    div-double v16, v18, v20

    .line 502
    .local v16, "var":D
    add-int/lit8 v13, p1, -0x1

    mul-int v13, v13, p1

    div-int/lit8 v13, v13, 0x2

    new-array v8, v13, [D

    .line 503
    .local v8, "rinv":[D
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->inverse([DI)V

    .line 504
    add-int/lit8 v13, p1, 0x1

    mul-int v13, v13, p1

    div-int/lit8 v13, v13, 0x2

    new-array v3, v13, [D

    .line 505
    .local v3, "covmat":[D
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 508
    const/4 v12, 0x0

    .line 509
    .local v12, "start":I
    const-wide/16 v14, 0x0

    .line 510
    .local v14, "total":D
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_1
    move/from16 v0, p1

    if-ge v9, v0, :cond_0

    .line 511
    move v7, v12

    .line 512
    .local v7, "pos2":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v13, v13, v9

    if-nez v13, :cond_8

    .line 513
    move v2, v9

    .local v2, "col":I
    :goto_2
    move/from16 v0, p1

    if-ge v2, v0, :cond_8

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v13, v13, v2

    if-nez v13, :cond_7

    .line 515
    add-int v13, v12, v2

    sub-int v6, v13, v9

    .line 516
    .local v6, "pos1":I
    if-ne v9, v2, :cond_5

    .line 517
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v13, v2

    div-double v14, v18, v20

    .line 521
    :goto_3
    add-int/lit8 v5, v2, 0x1

    .local v5, "k":I
    :goto_4
    move/from16 v0, p1

    if-ge v5, v0, :cond_6

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v13, v13, v5

    if-nez v13, :cond_4

    .line 523
    aget-wide v18, v8, v6

    aget-wide v20, v8, v7

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v13, v5

    div-double v18, v18, v20

    add-double v14, v14, v18

    .line 525
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 526
    add-int/lit8 v7, v7, 0x1

    .line 521
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 519
    .end local v5    # "k":I
    :cond_5
    add-int/lit8 v13, v6, -0x1

    aget-wide v18, v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v13, v2

    div-double v14, v18, v20

    goto :goto_3

    .line 528
    .restart local v5    # "k":I
    :cond_6
    add-int/lit8 v13, v2, 0x1

    mul-int/2addr v13, v2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v9

    mul-double v18, v14, v16

    aput-wide v18, v3, v13

    .line 513
    .end local v5    # "k":I
    .end local v6    # "pos1":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 530
    :cond_7
    sub-int v13, p1, v2

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v7, v13

    goto :goto_5

    .line 534
    .end local v2    # "col":I
    :cond_8
    sub-int v13, p1, v9

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v12, v13

    .line 510
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private include([DDD)V
    .locals 32
    .param p1, "x"    # [D
    .param p2, "wi"    # D
    .param p4, "yi"    # D

    .prologue
    .line 229
    const/4 v14, 0x0

    .line 230
    .local v14, "nextr":I
    move-wide/from16 v18, p2

    .line 231
    .local v18, "w":D
    move-wide/from16 v26, p4

    .line 238
    .local v26, "y":D
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 239
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 240
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-wide/from16 v28, v0

    mul-double v30, p4, p4

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 241
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v12, v15, :cond_7

    .line 242
    const-wide/16 v28, 0x0

    cmpl-double v15, v18, v28

    if-nez v15, :cond_0

    .line 284
    :goto_1
    return-void

    .line 245
    :cond_0
    aget-wide v22, p1, v12

    .line 247
    .local v22, "xi":D
    const-wide/16 v28, 0x0

    cmpl-double v15, v22, v28

    if-nez v15, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v15, v12

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v14, v15

    .line 241
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v8, v15, v12

    .line 252
    .local v8, "di":D
    mul-double v20, v18, v22

    .line 253
    .local v20, "wxi":D
    move-wide/from16 v6, v18

    .line 254
    .local v6, "_w":D
    const-wide/16 v28, 0x0

    cmpl-double v15, v8, v28

    if-eqz v15, :cond_3

    .line 255
    mul-double v28, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v8, v9, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v10

    .line 256
    .local v10, "dpi":D
    mul-double v28, v20, v22

    div-double v16, v28, v8

    .line 257
    .local v16, "tmp":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    sget-wide v30, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpl-double v15, v28, v30

    if-lez v15, :cond_2

    .line 258
    mul-double v28, v8, v18

    div-double v18, v28, v10

    .line 264
    .end local v16    # "tmp":D
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v10, v15, v12

    .line 265
    add-int/lit8 v13, v12, 0x1

    .local v13, "k":I
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v13, v15, :cond_5

    .line 266
    aget-wide v24, p1, v13

    .line 267
    .local v24, "xk":D
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v30, v15, v14

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v28

    aput-wide v28, p1, v13

    .line 268
    const-wide/16 v28, 0x0

    cmpl-double v15, v8, v28

    if-eqz v15, :cond_4

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v14

    mul-double v28, v28, v8

    mul-double v30, v6, v22

    mul-double v30, v30, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v28

    div-double v28, v28, v10

    aput-wide v28, v15, v14

    .line 273
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 265
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 261
    .end local v10    # "dpi":D
    .end local v13    # "k":I
    .end local v24    # "xk":D
    :cond_3
    mul-double v10, v20, v22

    .line 262
    .restart local v10    # "dpi":D
    const-wide/16 v18, 0x0

    goto :goto_3

    .line 271
    .restart local v13    # "k":I
    .restart local v24    # "xk":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    div-double v28, v24, v22

    aput-wide v28, v15, v14

    goto :goto_5

    .line 275
    .end local v24    # "xk":D
    :cond_5
    move-wide/from16 v24, v26

    .line 276
    .restart local v24    # "xk":D
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v30, v15, v12

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v26

    .line 277
    const-wide/16 v28, 0x0

    cmpl-double v15, v8, v28

    if-eqz v15, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v12

    mul-double v28, v28, v8

    mul-double v30, v20, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v28

    div-double v28, v28, v10

    aput-wide v28, v15, v12

    goto/16 :goto_2

    .line 280
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    div-double v28, v24, v22

    aput-wide v28, v15, v12

    goto/16 :goto_2

    .line 283
    .end local v6    # "_w":D
    .end local v8    # "di":D
    .end local v10    # "dpi":D
    .end local v13    # "k":I
    .end local v20    # "wxi":D
    .end local v22    # "xi":D
    .end local v24    # "xk":D
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-wide/from16 v28, v0

    mul-double v30, v18, v26

    mul-double v30, v30, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    goto/16 :goto_1
.end method

.method private inverse([DI)V
    .locals 14
    .param p1, "rinv"    # [D
    .param p2, "nreq"    # I

    .prologue
    .line 547
    add-int/lit8 v7, p2, -0x1

    mul-int v7, v7, p2

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v2, v7, -0x1

    .line 548
    .local v2, "pos":I
    const/4 v3, -0x1

    .line 549
    .local v3, "pos1":I
    const/4 v4, -0x1

    .line 550
    .local v4, "pos2":I
    const-wide/16 v8, 0x0

    .line 551
    .local v8, "total":D
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    invoke-static {p1, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    .line 552
    add-int/lit8 v5, p2, -0x1

    .local v5, "row":I
    :goto_0
    if-lez v5, :cond_4

    .line 553
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_2

    .line 554
    add-int/lit8 v7, v5, -0x1

    iget v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v5

    mul-int/2addr v7, v10

    div-int/lit8 v6, v7, 0x2

    .line 555
    .local v6, "start":I
    move/from16 v0, p2

    .local v0, "col":I
    :goto_1
    if-le v0, v5, :cond_3

    .line 556
    move v3, v6

    .line 557
    move v4, v2

    .line 558
    const-wide/16 v8, 0x0

    .line 559
    move v1, v5

    .local v1, "k":I
    :goto_2
    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_1

    .line 560
    sub-int v7, p2, v1

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v4, v7

    .line 561
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_0

    .line 562
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v7, v3

    neg-double v10, v10

    aget-wide v12, p1, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 564
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 566
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v7, v3

    sub-double v10, v8, v10

    aput-wide v10, p1, v2

    .line 567
    add-int/lit8 v2, v2, -0x1

    .line 555
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 570
    .end local v0    # "col":I
    .end local v1    # "k":I
    .end local v6    # "start":I
    :cond_2
    sub-int v7, p2, v5

    sub-int/2addr v2, v7

    .line 552
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 573
    :cond_4
    return-void
.end method

.method private regcf(I)[D
    .locals 14
    .param p1, "nreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    .line 372
    if-ge p1, v10, :cond_0

    .line 373
    new-instance v5, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 375
    :cond_0
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-le p1, v5, :cond_1

    .line 376
    new-instance v5, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 379
    :cond_1
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    if-nez v5, :cond_2

    .line 380
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 382
    :cond_2
    new-array v4, p1, [D

    .line 383
    .local v4, "ret":[D
    const/4 v3, 0x0

    .line 384
    .local v3, "rankProblem":Z
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v5, -0x1

    if-le v0, v5, :cond_5

    .line 385
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v6, v5, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v8, v5, v0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_4

    .line 386
    aput-wide v12, v4, v0

    .line 387
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v12, v5, v0

    .line 388
    const/4 v3, 0x1

    .line 384
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 390
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v6, v5, v0

    aput-wide v6, v4, v0

    .line 391
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v0

    div-int/lit8 v2, v5, 0x2

    .line 392
    .local v2, "nextr":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 393
    aget-wide v6, v4, v0

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v8, v5, v2

    neg-double v8, v8

    aget-wide v10, v4, v1

    mul-double/2addr v8, v10

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 394
    add-int/lit8 v2, v2, 0x1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    .end local v1    # "j":I
    .end local v2    # "nextr":I
    :cond_5
    if-eqz v3, :cond_7

    .line 399
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_7

    .line 400
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_6

    .line 401
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v4, v0

    .line 399
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 405
    :cond_7
    return-object v4
.end method

.method private reorderRegressors([II)I
    .locals 7
    .param p1, "list"    # [I
    .param p2, "pos1"    # I

    .prologue
    const/4 v4, 0x0

    .line 823
    array-length v5, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    array-length v5, p1

    iget v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v6, p2

    if-le v5, v6, :cond_2

    .line 824
    :cond_0
    const/4 v4, -0x1

    .line 843
    :cond_1
    return v4

    .line 826
    :cond_2
    move v3, p2

    .line 827
    .local v3, "next":I
    move v0, p2

    .line 828
    .local v0, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v5, :cond_1

    .line 829
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v2, v5, v0

    .line 830
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 831
    aget v5, p1, v1

    if-ne v2, v5, :cond_4

    if-le v0, v3, :cond_4

    .line 832
    invoke-direct {p0, v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vmove(II)V

    .line 833
    add-int/lit8 v3, v3, 0x1

    .line 834
    array-length v5, p1

    add-int/2addr v5, p2

    if-ge v3, v5, :cond_1

    .line 841
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private singcheck()V
    .locals 20

    .prologue
    .line 414
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v11, v2, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v16, v3, v11

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    aput-wide v16, v2, v11

    .line 414
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 417
    :cond_0
    const/4 v10, 0x0

    .local v10, "col":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v10, v2, :cond_6

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v14, v2, v10

    .line 422
    .local v14, "temp":D
    add-int/lit8 v12, v10, -0x1

    .line 423
    .local v12, "pos":I
    const/4 v13, 0x0

    .local v13, "row":I
    :goto_2
    add-int/lit8 v2, v10, -0x1

    if-ge v13, v2, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v2, v2, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v13

    mul-double v2, v2, v16

    cmpg-double v2, v2, v14

    if-gez v2, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/16 v16, 0x0

    aput-wide v16, v2, v12

    .line 427
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v2, v13

    add-int/lit8 v2, v2, -0x2

    add-int/2addr v12, v2

    .line 423
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v10

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v2, v2, v10

    cmpg-double v2, v2, v14

    if-gez v2, :cond_4

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v10

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v2, v2, -0x1

    if-ge v10, v2, :cond_5

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v10

    div-int/lit8 v8, v2, 0x2

    .line 438
    .local v8, "_pi":I
    add-int/lit8 v9, v10, 0x1

    .local v9, "_xi":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v9, v2, :cond_3

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v16, v3, v8

    aput-wide v16, v2, v9

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/16 v16, 0x0

    aput-wide v16, v2, v8

    .line 438
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 442
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v6, v2, v10

    .line 443
    .local v6, "y":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v4, v2, v10

    .line 444
    .local v4, "weight":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    const-wide/16 v16, 0x0

    aput-wide v16, v2, v10

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    const-wide/16 v16, 0x0

    aput-wide v16, v2, v10

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    .line 417
    .end local v4    # "weight":D
    .end local v6    # "y":D
    .end local v8    # "_pi":I
    .end local v9    # "_xi":I
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 448
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v10

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v10

    mul-double v16, v16, v18

    add-double v2, v2, v16

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    goto :goto_4

    .line 452
    .end local v12    # "pos":I
    .end local v13    # "row":I
    .end local v14    # "temp":D
    :cond_6
    return-void
.end method

.method private smartAdd(DD)D
    .locals 9
    .param p1, "a"    # D
    .param p3, "b"    # D

    .prologue
    .line 294
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 295
    .local v0, "_a":D
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 296
    .local v2, "_b":D
    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    .line 297
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v4, v0, v6

    .line 298
    .local v4, "eps":D
    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 299
    add-double/2addr p1, p3

    .line 307
    .end local p1    # "a":D
    :cond_0
    :goto_0
    return-wide p1

    .line 303
    .end local v4    # "eps":D
    .restart local p1    # "a":D
    :cond_1
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v4, v2, v6

    .line 304
    .restart local v4    # "eps":D
    cmpl-double v6, v0, v4

    if-lez v6, :cond_2

    .line 305
    add-double/2addr p1, p3

    goto :goto_0

    :cond_2
    move-wide p1, p3

    .line 307
    goto :goto_0
.end method

.method private ss()V
    .locals 8

    .prologue
    .line 464
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 465
    .local v2, "total":D
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v4, v4, -0x1

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    aput-wide v6, v1, v4

    .line 466
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 467
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v4, v1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 468
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v4, v0, -0x1

    aput-wide v2, v1, v4

    .line 466
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 470
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 471
    return-void
.end method

.method private tolset()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 342
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    .line 343
    .local v2, "eps":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v8, :cond_0

    .line 344
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v9, v1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    aput-wide v10, v8, v1

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v10, v9, v12

    mul-double/2addr v10, v2

    aput-wide v10, v8, v12

    .line 347
    const/4 v0, 0x1

    .local v0, "col":I
    :goto_1
    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v8, :cond_2

    .line 348
    add-int/lit8 v4, v0, -0x1

    .line 349
    .local v4, "pos":I
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v6, v8, v0

    .line 350
    .local v6, "total":D
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_2
    if-ge v5, v0, :cond_1

    .line 351
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v8, v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v10, v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 352
    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v4, v8

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 354
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    mul-double v10, v2, v6

    aput-wide v10, v8, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    .end local v4    # "pos":I
    .end local v5    # "row":I
    .end local v6    # "total":D
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 357
    return-void
.end method

.method private vmove(II)V
    .locals 38
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 701
    const/4 v7, 0x0

    .line 702
    .local v7, "bSkipTo40":Z
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 802
    :cond_0
    return-void

    .line 705
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    move/from16 v29, v0

    if-nez v29, :cond_2

    .line 706
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 708
    :cond_2
    const/4 v11, 0x0

    .line 709
    .local v11, "count":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    .line 710
    move/from16 v20, p1

    .line 711
    .local v20, "first":I
    const/16 v22, 0x1

    .line 712
    .local v22, "inc":I
    sub-int v11, p2, p1

    .line 719
    :goto_0
    move/from16 v23, v20

    .line 720
    .local v23, "m":I
    const/16 v21, 0x0

    .line 721
    .local v21, "idx":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v11, :cond_0

    .line 722
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v32, v0

    add-int v29, v29, v32

    sub-int v29, v29, v23

    add-int/lit8 v29, v29, -0x1

    mul-int v29, v29, v23

    div-int/lit8 v24, v29, 0x2

    .line 723
    .local v24, "m1":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v29, v0

    add-int v29, v29, v24

    sub-int v29, v29, v23

    add-int/lit8 v25, v29, -0x1

    .line 724
    .local v25, "m2":I
    add-int/lit8 v26, v23, 0x1

    .line 726
    .local v26, "mp1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    aget-wide v12, v29, v23

    .line 727
    .local v12, "d1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    aget-wide v16, v29, v26

    .line 729
    .local v16, "d2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    move-wide/from16 v32, v0

    cmpl-double v29, v12, v32

    if-gtz v29, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    move-wide/from16 v32, v0

    cmpl-double v29, v16, v32

    if-lez v29, :cond_c

    .line 730
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aget-wide v2, v29, v24

    .line 731
    .local v2, "X":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    move-object/from16 v29, v0

    aget-wide v34, v29, v26

    cmpg-double v29, v32, v34

    if-gez v29, :cond_4

    .line 732
    const-wide/16 v2, 0x0

    .line 734
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    move-wide/from16 v32, v0

    cmpg-double v29, v12, v32

    if-ltz v29, :cond_5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    move-wide/from16 v34, v0

    cmpg-double v29, v32, v34

    if-gez v29, :cond_9

    .line 735
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    aput-wide v16, v29, v23

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    aput-wide v12, v29, v26

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    const-wide/16 v32, 0x0

    aput-wide v32, v29, v24

    .line 738
    add-int/lit8 v10, v23, 0x2

    .local v10, "col":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_7

    .line 739
    add-int/lit8 v24, v24, 0x1

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aget-wide v2, v29, v24

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v25

    aput-wide v32, v29, v24

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aput-wide v2, v29, v25

    .line 743
    add-int/lit8 v25, v25, 0x1

    .line 738
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 714
    .end local v2    # "X":D
    .end local v10    # "col":I
    .end local v12    # "d1":D
    .end local v16    # "d2":D
    .end local v20    # "first":I
    .end local v21    # "idx":I
    .end local v22    # "inc":I
    .end local v23    # "m":I
    .end local v24    # "m1":I
    .end local v25    # "m2":I
    .end local v26    # "mp1":I
    :cond_6
    add-int/lit8 v20, p1, -0x1

    .line 715
    .restart local v20    # "first":I
    const/16 v22, -0x1

    .line 716
    .restart local v22    # "inc":I
    sub-int v11, p1, p2

    goto/16 :goto_0

    .line 745
    .restart local v2    # "X":D
    .restart local v10    # "col":I
    .restart local v12    # "d1":D
    .restart local v16    # "d2":D
    .restart local v21    # "idx":I
    .restart local v23    # "m":I
    .restart local v24    # "m1":I
    .restart local v25    # "m2":I
    .restart local v26    # "mp1":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    aget-wide v2, v29, v23

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v26

    aput-wide v32, v29, v23

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    aput-wide v2, v29, v26

    .line 748
    const/4 v7, 0x1

    .line 760
    .end local v10    # "col":I
    :cond_8
    :goto_3
    if-nez v7, :cond_c

    .line 761
    mul-double v32, v12, v2

    mul-double v32, v32, v2

    add-double v14, v16, v32

    .line 762
    .local v14, "d1new":D
    div-double v8, v16, v14

    .line 763
    .local v8, "cbar":D
    mul-double v32, v2, v12

    div-double v30, v32, v14

    .line 764
    .local v30, "sbar":D
    mul-double v18, v12, v8

    .line 765
    .local v18, "d2new":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    aput-wide v14, v29, v23

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    aput-wide v18, v29, v26

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aput-wide v30, v29, v24

    .line 768
    add-int/lit8 v10, v23, 0x2

    .restart local v10    # "col":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_b

    .line 769
    add-int/lit8 v24, v24, 0x1

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aget-wide v4, v29, v24

    .line 771
    .local v4, "Y":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v25

    mul-double v32, v32, v8

    mul-double v34, v30, v4

    add-double v32, v32, v34

    aput-wide v32, v29, v24

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v25

    mul-double v32, v32, v2

    sub-double v32, v4, v32

    aput-wide v32, v29, v25

    .line 773
    add-int/lit8 v25, v25, 0x1

    .line 768
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 750
    .end local v4    # "Y":D
    .end local v8    # "cbar":D
    .end local v10    # "col":I
    .end local v14    # "d1new":D
    .end local v18    # "d2new":D
    .end local v30    # "sbar":D
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    move-wide/from16 v32, v0

    cmpg-double v29, v16, v32

    if-gez v29, :cond_8

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v29, v0

    mul-double v32, v12, v2

    mul-double v32, v32, v2

    aput-wide v32, v29, v23

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    div-double v32, v32, v2

    aput-wide v32, v29, v24

    .line 753
    add-int/lit8 v6, v24, 0x1

    .local v6, "_i":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v29, v0

    add-int v29, v29, v24

    sub-int v29, v29, v23

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v6, v0, :cond_a

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aget-wide v32, v29, v6

    div-double v32, v32, v2

    aput-wide v32, v29, v6

    .line 753
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 756
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    aget-wide v32, v29, v23

    div-double v32, v32, v2

    aput-wide v32, v29, v23

    .line 757
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 775
    .end local v6    # "_i":I
    .restart local v8    # "cbar":D
    .restart local v10    # "col":I
    .restart local v14    # "d1new":D
    .restart local v18    # "d2new":D
    .restart local v30    # "sbar":D
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    aget-wide v4, v29, v23

    .line 776
    .restart local v4    # "Y":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v26

    mul-double v32, v32, v8

    mul-double v34, v30, v4

    add-double v32, v32, v34

    aput-wide v32, v29, v23

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v26

    mul-double v32, v32, v2

    sub-double v32, v4, v32

    aput-wide v32, v29, v26

    .line 780
    .end local v2    # "X":D
    .end local v4    # "Y":D
    .end local v8    # "cbar":D
    .end local v10    # "col":I
    .end local v14    # "d1new":D
    .end local v18    # "d2new":D
    .end local v30    # "sbar":D
    :cond_c
    if-lez v23, :cond_d

    .line 781
    move/from16 v27, v23

    .line 782
    .local v27, "pos":I
    const/16 v28, 0x0

    .local v28, "row":I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    aget-wide v2, v29, v27

    .line 784
    .restart local v2    # "X":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v32, v0

    add-int/lit8 v33, v27, -0x1

    aget-wide v32, v32, v33

    aput-wide v32, v29, v27

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v29, v0

    add-int/lit8 v32, v27, -0x1

    aput-wide v2, v29, v32

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v29, v0

    sub-int v29, v29, v28

    add-int/lit8 v29, v29, -0x2

    add-int v27, v27, v29

    .line 782
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 791
    .end local v2    # "X":D
    .end local v27    # "pos":I
    .end local v28    # "row":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    move-object/from16 v29, v0

    aget v24, v29, v23

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    move-object/from16 v32, v0

    aget v32, v32, v26

    aput v32, v29, v23

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    move-object/from16 v29, v0

    aput v24, v29, v26

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    move-object/from16 v29, v0

    aget-wide v2, v29, v23

    .line 795
    .restart local v2    # "X":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v26

    aput-wide v32, v29, v23

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    move-object/from16 v29, v0

    aput-wide v2, v29, v26

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v34, v0

    aget-wide v34, v34, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v36, v0

    aget-wide v36, v36, v26

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v36, v0

    aget-wide v36, v36, v26

    mul-double v34, v34, v36

    add-double v32, v32, v34

    aput-wide v32, v29, v23

    .line 799
    add-int v23, v23, v22

    .line 800
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public addObservation([DD)V
    .locals 8
    .param p1, "x"    # [D
    .param p2, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-nez v0, :cond_0

    array-length v0, p1

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-eq v0, v4, :cond_2

    .line 171
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 174
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-nez v0, :cond_3

    .line 175
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    .line 182
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 184
    return-void

    .line 177
    :cond_3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [D

    .line 178
    .local v1, "tmp":[D
    array-length v0, p1

    invoke-static {p1, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    aput-wide v2, v1, v5

    move-object v0, p0

    move-wide v4, p2

    .line 180
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    goto :goto_0
.end method

.method public addObservations([[D[D)V
    .locals 7
    .param p1, "x"    # [[D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 194
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    array-length v3, p2

    if-eq v1, v3, :cond_3

    .line 195
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    if-nez p2, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    array-length v1, p1

    goto :goto_0

    :cond_2
    array-length v2, p2

    goto :goto_1

    .line 200
    :cond_3
    array-length v1, p1

    if-nez v1, :cond_4

    .line 201
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 204
    :cond_4
    aget-object v1, p1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v3, p1

    if-le v1, v3, :cond_5

    .line 205
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v5, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget-object v2, p1, v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 209
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 210
    aget-object v1, p1, v0

    aget-wide v2, p2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->addObservation([DD)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 212
    :cond_6
    return-void
.end method

.method public clear()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 316
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 317
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 318
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 319
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 320
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 321
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 322
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 323
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 324
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([ZZ)V

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v0, v1, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 329
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 330
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 331
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 332
    iput-boolean v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 333
    iput-boolean v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 334
    return-void
.end method

.method public getDiagonalOfHatMatrix([D)D
    .locals 14
    .param p1, "row_data"    # [D

    .prologue
    const/4 v12, 0x0

    .line 853
    iget v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v5, v9, [D

    .line 857
    .local v5, "wk":[D
    array-length v9, p1

    iget v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-le v9, v10, :cond_1

    .line 858
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 883
    :cond_0
    return-wide v2

    .line 861
    :cond_1
    iget-boolean v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-eqz v9, :cond_2

    .line 862
    array-length v9, p1

    add-int/lit8 v9, v9, 0x1

    new-array v8, v9, [D

    .line 863
    .local v8, "xrow":[D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v12

    .line 864
    const/4 v9, 0x1

    array-length v10, p1

    invoke-static {p1, v12, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    :goto_0
    const-wide/16 v2, 0x0

    .line 869
    .local v2, "hii":D
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_0

    .line 870
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v9, v0

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v12, v9, v0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_3

    .line 871
    const-wide/16 v10, 0x0

    aput-wide v10, v5, v0

    .line 869
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 866
    .end local v0    # "col":I
    .end local v2    # "hii":D
    .end local v8    # "xrow":[D
    :cond_2
    move-object v8, p1

    .restart local v8    # "xrow":[D
    goto :goto_0

    .line 873
    .restart local v0    # "col":I
    .restart local v2    # "hii":D
    :cond_3
    add-int/lit8 v1, v0, -0x1

    .line 874
    .local v1, "pos":I
    aget-wide v6, v8, v0

    .line 875
    .local v6, "total":D
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 876
    aget-wide v10, v5, v4

    neg-double v10, v10

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v12, v9, v1

    mul-double/2addr v10, v12

    invoke-direct {p0, v6, v7, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v6

    .line 877
    iget v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v1, v9

    .line 875
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 879
    :cond_4
    aput-wide v6, v5, v0

    .line 880
    mul-double v10, v6, v6

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v9, v0

    div-double/2addr v10, v12

    invoke-direct {p0, v2, v3, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v2

    goto :goto_2
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    return-wide v0
.end method

.method public getOrderOfRegressors()[I
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPartialCorrelations(I)[D
    .locals 30
    .param p1, "in"    # I

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    sub-int v23, v23, p1

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v24, v0

    sub-int v24, v24, p1

    mul-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    new-array v8, v0, [D

    .line 613
    .local v8, "output":[D
    move/from16 v0, p1

    neg-int v13, v0

    .line 614
    .local v13, "rms_off":I
    add-int/lit8 v23, p1, 0x1

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v22, v0

    .line 615
    .local v22, "wrk_off":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    sub-int v23, v23, p1

    move/from16 v0, v23

    new-array v12, v0, [D

    .line 616
    .local v12, "rms":[D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    sub-int v23, v23, p1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    new-array v15, v0, [D

    .line 620
    .local v15, "work":[D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    sub-int v23, v23, p1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v24, v0

    sub-int v24, v24, p1

    add-int/lit8 v24, v24, -0x1

    mul-int v23, v23, v24

    div-int/lit8 v7, v23, 0x2

    .line 621
    .local v7, "offXX":I
    const/16 v23, -0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 622
    :cond_0
    const/4 v8, 0x0

    .line 675
    .end local v8    # "output":[D
    :cond_1
    return-object v8

    .line 624
    .restart local v8    # "output":[D
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    add-int/lit8 v6, v23, -0x1

    .line 625
    .local v6, "nvm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    sub-int v24, v6, p1

    sub-int v25, v6, p1

    add-int/lit8 v25, v25, 0x1

    mul-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    sub-int v2, v23, v24

    .line 626
    .local v2, "base_pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, p1

    const-wide/16 v26, 0x0

    cmpl-double v23, v24, v26

    if-lez v23, :cond_3

    .line 627
    add-int v23, p1, v13

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, p1

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    div-double v24, v24, v26

    aput-wide v24, v12, v23

    .line 629
    :cond_3
    add-int/lit8 v3, p1, 0x1

    .local v3, "col":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v3, v0, :cond_6

    .line 630
    add-int v23, v2, v3

    add-int/lit8 v23, v23, -0x1

    sub-int v9, v23, p1

    .line 631
    .local v9, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v23, v0

    aget-wide v16, v23, v3

    .line 632
    .local v16, "sumxx":D
    move/from16 v14, p1

    .local v14, "row":I
    :goto_1
    if-ge v14, v3, :cond_4

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v9

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v9

    mul-double v24, v24, v26

    add-double v16, v16, v24

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    sub-int v23, v23, v14

    add-int/lit8 v23, v23, -0x2

    add-int v9, v9, v23

    .line 632
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 636
    :cond_4
    const-wide/16 v24, 0x0

    cmpl-double v23, v16, v24

    if-lez v23, :cond_5

    .line 637
    add-int v23, v3, v13

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    div-double v24, v24, v26

    aput-wide v24, v12, v23

    .line 629
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    :cond_5
    add-int v23, v3, v13

    const-wide/16 v24, 0x0

    aput-wide v24, v12, v23

    goto :goto_2

    .line 642
    .end local v9    # "pos":I
    .end local v14    # "row":I
    .end local v16    # "sumxx":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-wide/from16 v20, v0

    .line 643
    .local v20, "sumyy":D
    move/from16 v14, p1

    .restart local v14    # "row":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_7

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v14

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v14

    mul-double v24, v24, v26

    add-double v20, v20, v24

    .line 643
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 646
    :cond_7
    const-wide/16 v24, 0x0

    cmpl-double v23, v20, v24

    if-lez v23, :cond_8

    .line 647
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    div-double v20, v24, v26

    .line 649
    :cond_8
    const/4 v9, 0x0

    .line 650
    .restart local v9    # "pos":I
    move/from16 v4, p1

    .local v4, "col1":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_1

    .line 651
    const-wide/16 v18, 0x0

    .line 652
    .local v18, "sumxy":D
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 653
    add-int v23, v2, v4

    sub-int v23, v23, p1

    add-int/lit8 v10, v23, -0x1

    .line 654
    .local v10, "pos1":I
    move/from16 v14, p1

    :goto_5
    if-ge v14, v4, :cond_a

    .line 655
    add-int/lit8 v11, v10, 0x1

    .line 656
    .local v11, "pos2":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "col2":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_9

    .line 657
    add-int v23, v5, v22

    aget-wide v24, v15, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v11

    mul-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v15, v23

    .line 658
    add-int/lit8 v11, v11, 0x1

    .line 656
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 660
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v10

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v14

    mul-double v24, v24, v26

    add-double v18, v18, v24

    .line 661
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    sub-int v23, v23, v14

    add-int/lit8 v23, v23, -0x2

    add-int v10, v10, v23

    .line 654
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 663
    .end local v5    # "col2":I
    .end local v11    # "pos2":I
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 664
    .restart local v11    # "pos2":I
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "col2":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_b

    .line 665
    add-int v23, v5, v22

    aget-wide v24, v15, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v11

    mul-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v15, v23

    .line 666
    add-int/lit8 v11, v11, 0x1

    .line 667
    add-int/lit8 v23, v5, -0x1

    sub-int v23, v23, p1

    sub-int v24, v5, p1

    mul-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v4

    sub-int v23, v23, p1

    add-int v24, v5, v22

    aget-wide v24, v15, v24

    add-int v26, v4, v13

    aget-wide v26, v12, v26

    mul-double v24, v24, v26

    add-int v26, v5, v13

    aget-wide v26, v12, v26

    mul-double v24, v24, v26

    aput-wide v24, v8, v23

    .line 669
    add-int/lit8 v9, v9, 0x1

    .line 664
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 671
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    move-object/from16 v23, v0

    aget-wide v26, v23, v4

    mul-double v24, v24, v26

    add-double v18, v18, v24

    .line 672
    add-int v23, v4, v13

    add-int v23, v23, v7

    add-int v24, v4, v13

    aget-wide v24, v12, v24

    mul-double v24, v24, v18

    mul-double v24, v24, v20

    aput-wide v24, v8, v23

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method public hasIntercept()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    return v0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    .line 905
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v0

    return-object v0
.end method

.method public regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 35
    .param p1, "numberOfRegressors"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move/from16 v0, p1

    int-to-long v10, v0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_0

    .line 920
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 924
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v0, p1

    if-le v0, v3, :cond_1

    .line 925
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 929
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 930
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 932
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v4

    .line 934
    .local v4, "beta":[D
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 936
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v27

    .line 938
    .local v27, "cov":[D
    const/4 v9, 0x0

    .line 939
    .local v9, "rnk":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v3, v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_3

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v3, v3, v29

    if-nez v3, :cond_2

    .line 941
    add-int/lit8 v9, v9, 0x1

    .line 939
    :cond_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 945
    :cond_3
    const/16 v33, 0x0

    .line 946
    .local v33, "needsReorder":Z
    const/16 v29, 0x0

    :goto_1
    move/from16 v0, v29

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v3, v3, v29

    move/from16 v0, v29

    if-eq v3, v0, :cond_5

    .line 948
    const/16 v33, 0x1

    .line 952
    :cond_4
    if-nez v33, :cond_6

    .line 953
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v5, 0x1

    new-array v5, v5, [[D

    const/4 v6, 0x0

    aput-object v27, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    .line 986
    :goto_2
    return-object v3

    .line 946
    :cond_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 957
    :cond_6
    array-length v3, v4

    new-array v12, v3, [D

    .line 958
    .local v12, "betaNew":[D
    move-object/from16 v0, v27

    array-length v3, v0

    new-array v0, v3, [D

    move-object/from16 v28, v0

    .line 960
    .local v28, "covNew":[D
    array-length v3, v4

    new-array v0, v3, [I

    move-object/from16 v34, v0

    .line 961
    .local v34, "newIndices":[I
    const/16 v29, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v0, v29

    if-ge v0, v3, :cond_9

    .line 962
    const/16 v32, 0x0

    .local v32, "j":I
    :goto_4
    move/from16 v0, v32

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v3, v3, v32

    move/from16 v0, v29

    if-ne v3, v0, :cond_7

    .line 964
    aget-wide v6, v4, v32

    aput-wide v6, v12, v29

    .line 965
    aput v32, v34, v29

    .line 962
    :cond_7
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 961
    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 970
    .end local v32    # "j":I
    :cond_9
    const/16 v30, 0x0

    .line 974
    .local v30, "idx1":I
    const/16 v29, 0x0

    :goto_5
    array-length v3, v4

    move/from16 v0, v29

    if-ge v0, v3, :cond_c

    .line 975
    aget v2, v34, v29

    .line 976
    .local v2, "_i":I
    const/16 v32, 0x0

    .restart local v32    # "j":I
    :goto_6
    move/from16 v0, v32

    move/from16 v1, v29

    if-gt v0, v1, :cond_b

    .line 977
    aget v26, v34, v32

    .line 978
    .local v26, "_j":I
    move/from16 v0, v26

    if-le v2, v0, :cond_a

    .line 979
    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int v31, v3, v26

    .line 983
    .local v31, "idx2":I
    :goto_7
    aget-wide v6, v27, v31

    aput-wide v6, v28, v30

    .line 976
    add-int/lit8 v32, v32, 0x1

    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 981
    .end local v31    # "idx2":I
    :cond_a
    add-int/lit8 v3, v26, 0x1

    mul-int v3, v3, v26

    div-int/lit8 v3, v3, 0x2

    add-int v31, v3, v2

    .restart local v31    # "idx2":I
    goto :goto_7

    .line 974
    .end local v26    # "_j":I
    .end local v31    # "idx2":I
    :cond_b
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 986
    .end local v2    # "_i":I
    .end local v32    # "j":I
    :cond_c
    new-instance v11, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v3, 0x1

    new-array v13, v3, [[D

    const/4 v3, 0x0

    aput-object v28, v13, v3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v17, v9

    invoke-direct/range {v11 .. v25}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    move-object v3, v11

    goto/16 :goto_2
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 37
    .param p1, "variablesToInclude"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .prologue
    .line 1005
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-le v3, v5, :cond_0

    .line 1006
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1009
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    int-to-long v10, v3

    cmp-long v3, v6, v10

    if-gtz v3, :cond_1

    .line 1010
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1014
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 1015
    const/16 v30, 0x0

    .line 1016
    .local v30, "iExclude":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v29

    if-ge v0, v3, :cond_4

    .line 1017
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v0, v29

    if-lt v0, v3, :cond_2

    .line 1018
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_LARGER_THAN_MAX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1021
    :cond_2
    if-lez v29, :cond_3

    aget v3, p1, v29

    add-int/lit8 v5, v29, -0x1

    aget v5, p1, v5

    if-ne v3, v5, :cond_3

    .line 1022
    const/4 v3, -0x1

    aput v3, p1, v29

    .line 1023
    add-int/lit8 v30, v30, 0x1

    .line 1016
    :cond_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 1027
    :cond_4
    if-lez v30, :cond_6

    .line 1028
    const/16 v33, 0x0

    .line 1029
    .local v33, "j":I
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v30

    new-array v0, v3, [I

    move-object/from16 v36, v0

    .line 1030
    .local v36, "series":[I
    const/16 v29, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v29

    if-ge v0, v3, :cond_7

    .line 1031
    aget v3, p1, v29

    const/4 v5, -0x1

    if-le v3, v5, :cond_5

    .line 1032
    aget v3, p1, v29

    aput v3, v36, v33

    .line 1033
    add-int/lit8 v33, v33, 0x1

    .line 1030
    :cond_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 1037
    .end local v33    # "j":I
    .end local v36    # "series":[I
    :cond_6
    move-object/from16 v36, p1

    .line 1040
    .restart local v36    # "series":[I
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->reorderRegressors([II)I

    .line 1041
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 1042
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 1044
    move-object/from16 v0, v36

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v4

    .line 1046
    .local v4, "beta":[D
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 1048
    move-object/from16 v0, v36

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v27

    .line 1050
    .local v27, "cov":[D
    const/4 v9, 0x0

    .line 1051
    .local v9, "rnk":I
    const/16 v29, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v3, v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_9

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v3, v3, v29

    if-nez v3, :cond_8

    .line 1053
    add-int/lit8 v9, v9, 0x1

    .line 1051
    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 1057
    :cond_9
    const/16 v34, 0x0

    .line 1058
    .local v34, "needsReorder":Z
    const/16 v29, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    move/from16 v0, v29

    if-ge v0, v3, :cond_a

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v3, v3, v29

    aget v5, v36, v29

    if-eq v3, v5, :cond_b

    .line 1060
    const/16 v34, 0x1

    .line 1064
    :cond_a
    if-nez v34, :cond_c

    .line 1065
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v5, 0x1

    new-array v5, v5, [[D

    const/4 v6, 0x0

    aput-object v27, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    .line 1096
    :goto_4
    return-object v3

    .line 1058
    :cond_b
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 1069
    :cond_c
    array-length v3, v4

    new-array v12, v3, [D

    .line 1070
    .local v12, "betaNew":[D
    array-length v3, v4

    new-array v0, v3, [I

    move-object/from16 v35, v0

    .line 1071
    .local v35, "newIndices":[I
    const/16 v29, 0x0

    :goto_5
    move-object/from16 v0, v36

    array-length v3, v0

    move/from16 v0, v29

    if-ge v0, v3, :cond_f

    .line 1072
    const/16 v33, 0x0

    .restart local v33    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    array-length v3, v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_e

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v3, v3, v33

    aget v5, v36, v29

    if-ne v3, v5, :cond_d

    .line 1074
    aget-wide v6, v4, v33

    aput-wide v6, v12, v29

    .line 1075
    aput v33, v35, v29

    .line 1072
    :cond_d
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 1071
    :cond_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 1079
    .end local v33    # "j":I
    :cond_f
    move-object/from16 v0, v27

    array-length v3, v0

    new-array v0, v3, [D

    move-object/from16 v28, v0

    .line 1080
    .local v28, "covNew":[D
    const/16 v31, 0x0

    .line 1084
    .local v31, "idx1":I
    const/16 v29, 0x0

    :goto_7
    array-length v3, v4

    move/from16 v0, v29

    if-ge v0, v3, :cond_12

    .line 1085
    aget v2, v35, v29

    .line 1086
    .local v2, "_i":I
    const/16 v33, 0x0

    .restart local v33    # "j":I
    :goto_8
    move/from16 v0, v33

    move/from16 v1, v29

    if-gt v0, v1, :cond_11

    .line 1087
    aget v26, v35, v33

    .line 1088
    .local v26, "_j":I
    move/from16 v0, v26

    if-le v2, v0, :cond_10

    .line 1089
    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int v32, v3, v26

    .line 1093
    .local v32, "idx2":I
    :goto_9
    aget-wide v6, v27, v32

    aput-wide v6, v28, v31

    .line 1086
    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 1091
    .end local v32    # "idx2":I
    :cond_10
    add-int/lit8 v3, v26, 0x1

    mul-int v3, v3, v26

    div-int/lit8 v3, v3, 0x2

    add-int v32, v3, v2

    .restart local v32    # "idx2":I
    goto :goto_9

    .line 1084
    .end local v26    # "_j":I
    .end local v32    # "idx2":I
    :cond_11
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 1096
    .end local v2    # "_i":I
    .end local v33    # "j":I
    :cond_12
    new-instance v11, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    const/4 v3, 0x1

    new-array v13, v3, [[D

    const/4 v3, 0x0

    aput-object v28, v13, v3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v17, v9

    invoke-direct/range {v11 .. v25}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    move-object v3, v11

    goto/16 :goto_4
.end method
