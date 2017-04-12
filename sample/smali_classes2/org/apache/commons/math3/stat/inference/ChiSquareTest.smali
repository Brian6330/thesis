.class public Lorg/apache/commons/math3/stat/inference/ChiSquareTest;
.super Ljava/lang/Object;
.source "ChiSquareTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private checkArray([[J)V
    .locals 3
    .param p1, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 589
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 590
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 593
    :cond_0
    aget-object v0, p1, v1

    array-length v0, v0

    if-ge v0, v2, :cond_1

    .line 594
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, p1, v1

    array-length v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 597
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkRectangular([[J)V

    .line 598
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([[J)V

    .line 600
    return-void
.end method


# virtual methods
.method public chiSquare([D[J)D
    .locals 18
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x2

    if-ge v14, v15, :cond_0

    .line 85
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x2

    invoke-direct/range {v14 .. v16}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 87
    :cond_0
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p2

    array-length v15, v0

    if-eq v14, v15, :cond_1

    .line 88
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 90
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 91
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 93
    const-wide/16 v8, 0x0

    .line 94
    .local v8, "sumExpected":D
    const-wide/16 v10, 0x0

    .line 95
    .local v10, "sumObserved":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_2

    .line 96
    aget-wide v14, p1, v4

    add-double/2addr v8, v14

    .line 97
    aget-wide v14, p2, v4

    long-to-double v14, v14

    add-double/2addr v10, v14

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 100
    .local v6, "ratio":D
    const/4 v5, 0x0

    .line 101
    .local v5, "rescale":Z
    sub-double v14, v8, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    .line 102
    div-double v6, v10, v8

    .line 103
    const/4 v5, 0x1

    .line 105
    :cond_3
    const-wide/16 v12, 0x0

    .line 106
    .local v12, "sumSq":D
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_5

    .line 107
    if-eqz v5, :cond_4

    .line 108
    aget-wide v14, p2, v4

    long-to-double v14, v14

    aget-wide v16, p1, v4

    mul-double v16, v16, v6

    sub-double v2, v14, v16

    .line 109
    .local v2, "dev":D
    mul-double v14, v2, v2

    aget-wide v16, p1, v4

    mul-double v16, v16, v6

    div-double v14, v14, v16

    add-double/2addr v12, v14

    .line 106
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    .end local v2    # "dev":D
    :cond_4
    aget-wide v14, p2, v4

    long-to-double v14, v14

    aget-wide v16, p1, v4

    sub-double v2, v14, v16

    .line 112
    .restart local v2    # "dev":D
    mul-double v14, v2, v2

    aget-wide v16, p1, v4

    div-double v14, v14, v16

    add-double/2addr v12, v14

    goto :goto_2

    .line 115
    .end local v2    # "dev":D
    :cond_5
    return-wide v12
.end method

.method public chiSquare([[J)D
    .locals 18
    .param p1, "counts"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->checkArray([[J)V

    .line 249
    move-object/from16 v0, p1

    array-length v7, v0

    .line 250
    .local v7, "nRows":I
    const/4 v14, 0x0

    aget-object v14, p1, v14

    array-length v6, v14

    .line 253
    .local v6, "nCols":I
    new-array v9, v7, [D

    .line 254
    .local v9, "rowSum":[D
    new-array v3, v6, [D

    .line 255
    .local v3, "colSum":[D
    const-wide/16 v12, 0x0

    .line 256
    .local v12, "total":D
    const/4 v8, 0x0

    .local v8, "row":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 257
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 258
    aget-wide v14, v9, v8

    aget-object v16, p1, v8

    aget-wide v16, v16, v2

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    aput-wide v14, v9, v8

    .line 259
    aget-wide v14, v3, v2

    aget-object v16, p1, v8

    aget-wide v16, v16, v2

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    aput-wide v14, v3, v2

    .line 260
    aget-object v14, p1, v8

    aget-wide v14, v14, v2

    long-to-double v14, v14

    add-double/2addr v12, v14

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "col":I
    :cond_1
    const-wide/16 v10, 0x0

    .line 266
    .local v10, "sumSq":D
    const-wide/16 v4, 0x0

    .line 267
    .local v4, "expected":D
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    .line 268
    const/4 v2, 0x0

    .restart local v2    # "col":I
    :goto_3
    if-ge v2, v6, :cond_2

    .line 269
    aget-wide v14, v9, v8

    aget-wide v16, v3, v2

    mul-double v14, v14, v16

    div-double v4, v14, v12

    .line 270
    aget-object v14, p1, v8

    aget-wide v14, v14, v2

    long-to-double v14, v14

    sub-double/2addr v14, v4

    aget-object v16, p1, v8

    aget-wide v16, v16, v2

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v4

    mul-double v14, v14, v16

    div-double/2addr v14, v4

    add-double/2addr v10, v14

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 267
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 274
    .end local v2    # "col":I
    :cond_3
    return-wide v10
.end method

.method public chiSquareDataSetsComparison([J[J)D
    .locals 23
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .line 414
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 415
    new-instance v18, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    invoke-direct/range {v18 .. v20}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v18

    .line 417
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 418
    new-instance v18, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v18

    .line 422
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 423
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 426
    const-wide/16 v2, 0x0

    .line 427
    .local v2, "countSum1":J
    const-wide/16 v4, 0x0

    .line 428
    .local v4, "countSum2":J
    const/4 v9, 0x0

    .line 429
    .local v9, "unequalCounts":Z
    const-wide/16 v16, 0x0

    .line 430
    .local v16, "weight":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 431
    aget-wide v18, p1, v8

    add-long v2, v2, v18

    .line 432
    aget-wide v18, p2, v8

    add-long v4, v4, v18

    .line 430
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 435
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v2, v18

    if-eqz v18, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-nez v18, :cond_4

    .line 436
    :cond_3
    new-instance v18, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct/range {v18 .. v18}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v18

    .line 439
    :cond_4
    cmp-long v18, v2, v4

    if-eqz v18, :cond_6

    const/4 v9, 0x1

    .line 440
    :goto_1
    if-eqz v9, :cond_5

    .line 441
    long-to-double v0, v2

    move-wide/from16 v18, v0

    long-to-double v0, v4

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 444
    :cond_5
    const-wide/16 v14, 0x0

    .line 445
    .local v14, "sumSq":D
    const-wide/16 v6, 0x0

    .line 446
    .local v6, "dev":D
    const-wide/16 v10, 0x0

    .line 447
    .local v10, "obs1":D
    const-wide/16 v12, 0x0

    .line 448
    .local v12, "obs2":D
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_9

    .line 449
    aget-wide v18, p1, v8

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    aget-wide v18, p2, v8

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    .line 450
    new-instance v18, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v19, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-direct/range {v18 .. v20}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v18

    .line 439
    .end local v6    # "dev":D
    .end local v10    # "obs1":D
    .end local v12    # "obs2":D
    .end local v14    # "sumSq":D
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 452
    .restart local v6    # "dev":D
    .restart local v10    # "obs1":D
    .restart local v12    # "obs2":D
    .restart local v14    # "sumSq":D
    :cond_7
    aget-wide v18, p1, v8

    move-wide/from16 v0, v18

    long-to-double v10, v0

    .line 453
    aget-wide v18, p2, v8

    move-wide/from16 v0, v18

    long-to-double v12, v0

    .line 454
    if-eqz v9, :cond_8

    .line 455
    div-double v18, v10, v16

    mul-double v20, v12, v16

    sub-double v6, v18, v20

    .line 459
    :goto_3
    mul-double v18, v6, v6

    add-double v20, v10, v12

    div-double v18, v18, v20

    add-double v14, v14, v18

    .line 448
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 457
    :cond_8
    sub-double v6, v10, v12

    goto :goto_3

    .line 462
    :cond_9
    return-wide v14
.end method

.method public chiSquareTest([D[J)D
    .locals 6
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 159
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    const/4 v1, 0x0

    array-length v2, p1

    int-to-double v2, v2

    sub-double/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 161
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([D[J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    sub-double v2, v4, v2

    return-wide v2
.end method

.method public chiSquareTest([[J)D
    .locals 10
    .param p1, "counts"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 313
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->checkArray([[J)V

    .line 314
    array-length v3, p1

    int-to-double v4, v3

    sub-double/2addr v4, v8

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    int-to-double v6, v3

    sub-double/2addr v6, v8

    mul-double v0, v4, v6

    .line 316
    .local v0, "df":D
    new-instance v2, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 317
    .local v2, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([[J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v4

    sub-double v4, v8, v4

    return-wide v4
.end method

.method public chiSquareTest([D[JD)Z
    .locals 7
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 208
    const-wide/16 v2, 0x0

    cmpg-double v1, p3, v2

    if-lez v1, :cond_0

    cmpl-double v1, p3, v4

    if-lez v1, :cond_1

    .line 209
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 212
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([D[J)D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public chiSquareTest([[JD)Z
    .locals 6
    .param p1, "counts"    # [[J
    .param p2, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 363
    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-lez v1, :cond_0

    cmpl-double v1, p2, v4

    if-lez v1, :cond_1

    .line 364
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 367
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([[J)D

    move-result-wide v2

    cmpg-double v1, v2, p2

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public chiSquareTestDataSetsComparison([J[J)D
    .locals 6
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 512
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    const/4 v1, 0x0

    array-length v2, p1

    int-to-double v2, v2

    sub-double/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 514
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareDataSetsComparison([J[J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    sub-double v2, v4, v2

    return-wide v2
.end method

.method public chiSquareTestDataSetsComparison([J[JD)Z
    .locals 7
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 567
    const-wide/16 v2, 0x0

    cmpg-double v1, p3, v2

    if-lez v1, :cond_0

    cmpl-double v1, p3, v4

    if-lez v1, :cond_1

    .line 569
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 572
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTestDataSetsComparison([J[J)D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
