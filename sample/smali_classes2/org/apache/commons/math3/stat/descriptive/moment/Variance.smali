.class public Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Variance.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x7e7431d0a4eb983aL


# instance fields
.field protected incMoment:Z

.field private isBiasCorrected:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 98
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 2
    .param p1, "m2"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 113
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 2
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 151
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 152
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isBiasCorrected"    # Z

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 125
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 127
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 2
    .param p1, "isBiasCorrected"    # Z
    .param p2, "m2"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 84
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 91
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 140
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 141
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 142
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 621
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setData([D)V

    .line 623
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 624
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 625
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 626
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    .line 208
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 606
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    .line 607
    return-object v0
.end method

.method public evaluate([D)D
    .locals 3
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 231
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DD)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DDII)D
    .locals 20
    .param p1, "values"    # [D
    .param p2, "mean"    # D
    .param p4, "begin"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 406
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    .line 408
    .local v14, "var":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([DII)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 409
    const/4 v11, 0x1

    move/from16 v0, p5

    if-ne v0, v11, :cond_1

    .line 410
    const-wide/16 v14, 0x0

    .line 428
    :cond_0
    :goto_0
    return-wide v14

    .line 411
    :cond_1
    const/4 v11, 0x1

    move/from16 v0, p5

    if-le v0, v11, :cond_0

    .line 412
    const-wide/16 v4, 0x0

    .line 413
    .local v4, "accum":D
    const-wide/16 v8, 0x0

    .line 414
    .local v8, "dev":D
    const-wide/16 v6, 0x0

    .line 415
    .local v6, "accum2":D
    move/from16 v10, p4

    .local v10, "i":I
    :goto_1
    add-int v11, p4, p5

    if-ge v10, v11, :cond_2

    .line 416
    aget-wide v16, p1, v10

    sub-double v8, v16, p2

    .line 417
    mul-double v16, v8, v8

    add-double v4, v4, v16

    .line 418
    add-double/2addr v6, v8

    .line 415
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 420
    :cond_2
    move/from16 v0, p5

    int-to-double v12, v0

    .line 421
    .local v12, "len":D
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v11, :cond_3

    .line 422
    mul-double v16, v6, v6

    div-double v16, v16, v12

    sub-double v16, v4, v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v12, v18

    div-double v14, v16, v18

    goto :goto_0

    .line 424
    :cond_3
    mul-double v16, v6, v6

    div-double v16, v16, v12

    sub-double v16, v4, v16

    div-double v14, v16, v12

    goto :goto_0
.end method

.method public evaluate([DII)D
    .locals 10
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 259
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 261
    .local v8, "var":D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    .line 263
    if-ne p3, v1, :cond_1

    .line 264
    const-wide/16 v8, 0x0

    .line 271
    :cond_0
    :goto_0
    return-wide v8

    .line 265
    :cond_1
    if-le p3, v1, :cond_0

    .line 266
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 267
    .local v6, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    invoke-virtual {v6, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v2

    .local v2, "m":D
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 268
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide v8

    goto :goto_0
.end method

.method public evaluate([D[D)D
    .locals 2
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DD)D
    .locals 9
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 582
    const/4 v6, 0x0

    array-length v7, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DDII)D
    .locals 23
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "mean"    # D
    .param p5, "begin"    # I
    .param p6, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 509
    const-wide/high16 v16, 0x7ff8000000000000L    # NaN

    .line 511
    .local v16, "var":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([D[DII)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 512
    const/4 v13, 0x1

    move/from16 v0, p6

    if-ne v0, v13, :cond_1

    .line 513
    const-wide/16 v16, 0x0

    .line 536
    :cond_0
    :goto_0
    return-wide v16

    .line 514
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p6

    if-le v0, v13, :cond_0

    .line 515
    const-wide/16 v6, 0x0

    .line 516
    .local v6, "accum":D
    const-wide/16 v10, 0x0

    .line 517
    .local v10, "dev":D
    const-wide/16 v8, 0x0

    .line 518
    .local v8, "accum2":D
    move/from16 v12, p5

    .local v12, "i":I
    :goto_1
    add-int v13, p5, p6

    if-ge v12, v13, :cond_2

    .line 519
    aget-wide v18, p1, v12

    sub-double v10, v18, p3

    .line 520
    aget-wide v18, p2, v12

    mul-double v20, v10, v10

    mul-double v18, v18, v20

    add-double v6, v6, v18

    .line 521
    aget-wide v18, p2, v12

    mul-double v18, v18, v10

    add-double v8, v8, v18

    .line 518
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 524
    :cond_2
    const-wide/16 v14, 0x0

    .line 525
    .local v14, "sumWts":D
    move/from16 v12, p5

    :goto_2
    add-int v13, p5, p6

    if-ge v12, v13, :cond_3

    .line 526
    aget-wide v18, p2, v12

    add-double v14, v14, v18

    .line 525
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 529
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v13, :cond_4

    .line 530
    mul-double v18, v8, v8

    div-double v18, v18, v14

    sub-double v18, v6, v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v14, v20

    div-double v16, v18, v20

    goto :goto_0

    .line 532
    :cond_4
    mul-double v18, v8, v8

    div-double v18, v18, v14

    sub-double v18, v6, v18

    div-double v16, v18, v14

    goto :goto_0
.end method

.method public evaluate([D[DII)D
    .locals 10
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 319
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 321
    .local v8, "var":D
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([D[DII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    .line 323
    if-ne p4, v2, :cond_1

    .line 324
    const-wide/16 v8, 0x0

    .line 331
    :cond_0
    :goto_0
    return-wide v8

    .line 325
    :cond_1
    if-le p4, v2, :cond_0

    .line 326
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 327
    .local v0, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide v4

    .local v4, "m":D
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 328
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide v8

    goto :goto_0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 181
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 188
    :goto_0
    return-wide v0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 183
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    .line 173
    :cond_0
    return-void
.end method

.method public isBiasCorrected()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 0
    .param p1, "biasCorrected"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 597
    return-void
.end method
