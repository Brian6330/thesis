.class public Lorg/apache/commons/math3/stat/inference/GTest;
.super Ljava/lang/Object;
.source "GTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private entropy([J)D
    .locals 12
    .param p1, "k"    # [J

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    .line 292
    .local v0, "h":D
    const-wide/16 v6, 0x0

    .line 293
    .local v6, "sum_k":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 294
    aget-wide v8, p1, v2

    long-to-double v8, v8

    add-double/2addr v6, v8

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 297
    aget-wide v8, p1, v2

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    .line 298
    aget-wide v8, p1, v2

    long-to-double v8, v8

    div-double v4, v8, v6

    .line 299
    .local v4, "p_i":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v0, v8

    .line 296
    .end local v4    # "p_i":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_2
    neg-double v8, v0

    return-wide v8
.end method

.method private entropy([[J)D
    .locals 12
    .param p1, "k"    # [[J

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    .line 262
    .local v0, "h":D
    const-wide/16 v6, 0x0

    .line 263
    .local v6, "sum_k":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_1

    .line 264
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v8, p1, v2

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 265
    aget-object v8, p1, v2

    aget-wide v8, v8, v3

    long-to-double v8, v8

    add-double/2addr v6, v8

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "j":I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v8, p1

    if-ge v2, v8, :cond_4

    .line 269
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    aget-object v8, p1, v2

    array-length v8, v8

    if-ge v3, v8, :cond_3

    .line 270
    aget-object v8, p1, v2

    aget-wide v8, v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 271
    aget-object v8, p1, v2

    aget-wide v8, v8, v3

    long-to-double v8, v8

    div-double v4, v8, v6

    .line 272
    .local v4, "p_ij":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v0, v8

    .line 269
    .end local v4    # "p_ij":D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 268
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 276
    .end local v3    # "j":I
    :cond_4
    neg-double v8, v0

    return-wide v8
.end method


# virtual methods
.method public g([D[J)D
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
    .line 80
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x2

    if-ge v14, v15, :cond_0

    .line 81
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x2

    invoke-direct/range {v14 .. v16}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 83
    :cond_0
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p2

    array-length v15, v0

    if-eq v14, v15, :cond_1

    .line 84
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 86
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 87
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 89
    const-wide/16 v10, 0x0

    .line 90
    .local v10, "sumExpected":D
    const-wide/16 v12, 0x0

    .line 91
    .local v12, "sumObserved":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_2

    .line 92
    aget-wide v14, p1, v4

    add-double/2addr v10, v14

    .line 93
    aget-wide v14, p2, v4

    long-to-double v14, v14

    add-double/2addr v12, v14

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 96
    .local v6, "ratio":D
    const/4 v5, 0x0

    .line 97
    .local v5, "rescale":Z
    sub-double v14, v10, v12

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    .line 98
    div-double v6, v12, v10

    .line 99
    const/4 v5, 0x1

    .line 101
    :cond_3
    const-wide/16 v8, 0x0

    .line 102
    .local v8, "sum":D
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_5

    .line 103
    if-eqz v5, :cond_4

    aget-wide v14, p2, v4

    long-to-double v14, v14

    aget-wide v16, p1, v4

    mul-double v16, v16, v6

    div-double v14, v14, v16

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 106
    .local v2, "dev":D
    :goto_2
    aget-wide v14, p2, v4

    long-to-double v14, v14

    mul-double/2addr v14, v2

    add-double/2addr v8, v14

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "dev":D
    :cond_4
    aget-wide v14, p2, v4

    long-to-double v14, v14

    aget-wide v16, p1, v4

    div-double v14, v14, v16

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    goto :goto_2

    .line 108
    :cond_5
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v8

    return-wide v14
.end method

.method public gDataSetsComparison([J[J)D
    .locals 18
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
    .line 351
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 352
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x2

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 354
    :cond_0
    move-object/from16 v0, p1

    array-length v12, v0

    move-object/from16 v0, p2

    array-length v13, v0

    if-eq v12, v13, :cond_1

    .line 355
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 359
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 360
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 363
    const-wide/16 v4, 0x0

    .line 364
    .local v4, "countSum1":J
    const-wide/16 v6, 0x0

    .line 367
    .local v6, "countSum2":J
    move-object/from16 v0, p1

    array-length v12, v0

    new-array v2, v12, [J

    .line 368
    .local v2, "collSums":[J
    const/4 v12, 0x2

    move-object/from16 v0, p1

    array-length v13, v0

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    .line 370
    .local v8, "k":[[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 371
    aget-wide v12, p1, v3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    aget-wide v12, p2, v3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 372
    new-instance v12, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 374
    :cond_2
    aget-wide v12, p1, v3

    add-long/2addr v4, v12

    .line 375
    aget-wide v12, p2, v3

    add-long/2addr v6, v12

    .line 376
    aget-wide v12, p1, v3

    aget-wide v14, p2, v3

    add-long/2addr v12, v14

    aput-wide v12, v2, v3

    .line 377
    const/4 v12, 0x0

    aget-object v12, v8, v12

    aget-wide v14, p1, v3

    aput-wide v14, v12, v3

    .line 378
    const/4 v12, 0x1

    aget-object v12, v8, v12

    aget-wide v14, p2, v3

    aput-wide v14, v12, v3

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_5

    .line 383
    :cond_4
    new-instance v12, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v12}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v12

    .line 385
    :cond_5
    const/4 v12, 0x2

    new-array v9, v12, [J

    const/4 v12, 0x0

    aput-wide v4, v9, v12

    const/4 v12, 0x1

    aput-wide v6, v9, v12

    .line 386
    .local v9, "rowSums":[J
    long-to-double v12, v4

    long-to-double v14, v6

    add-double v10, v12, v14

    .line 387
    .local v10, "sum":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([[J)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    return-wide v12
.end method

.method public gTest([D[J)D
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

    .line 156
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    const/4 v1, 0x0

    array-length v2, p1

    int-to-double v2, v2

    sub-double/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 158
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    sub-double v2, v4, v2

    return-wide v2
.end method

.method public gTest([D[JD)Z
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

    .line 241
    const-wide/16 v2, 0x0

    cmpg-double v1, p3, v2

    if-lez v1, :cond_0

    cmpl-double v1, p3, v4

    if-lez v1, :cond_1

    .line 242
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

    .line 245
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[J)D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public gTestDataSetsComparison([J[J)D
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

    .line 477
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    const/4 v1, 0x0

    array-length v2, p1

    int-to-double v2, v2

    sub-double/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 479
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    sub-double v2, v4, v2

    return-wide v2
.end method

.method public gTestDataSetsComparison([J[JD)Z
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

    .line 532
    const-wide/16 v2, 0x0

    cmpg-double v1, p3, v2

    if-lez v1, :cond_0

    cmpl-double v1, p3, v4

    if-lez v1, :cond_1

    .line 533
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

    .line 536
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[J)D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public gTestIntrinsic([D[J)D
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
    .line 187
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    const/4 v1, 0x0

    array-length v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 189
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public rootLogLikelihoodRatio(JJJJ)D
    .locals 13
    .param p1, "k11"    # J
    .param p3, "k12"    # J
    .param p5, "k21"    # J
    .param p7, "k22"    # J

    .prologue
    .line 422
    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide p1, v6, v7

    const/4 v7, 0x1

    aput-wide p3, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide p5, v7, v8

    const/4 v8, 0x1

    aput-wide p7, v7, v8

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v2

    .line 424
    .local v2, "llr":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 425
    .local v4, "sqrt":D
    long-to-double v6, p1

    add-long v8, p1, p3

    long-to-double v8, v8

    div-double/2addr v6, v8

    move-wide/from16 v0, p5

    long-to-double v8, v0

    add-long v10, p5, p7

    long-to-double v10, v10

    div-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 426
    neg-double v4, v4

    .line 428
    :cond_0
    return-wide v4
.end method
