.class public Lorg/apache/commons/math3/stat/inference/BinomialTest;
.super Ljava/lang/Object;
.source "BinomialTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/inference/BinomialTest$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method


# virtual methods
.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D
    .locals 19
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "probability"    # D
    .param p5, "alternativeHypothesis"    # Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    .prologue
    .line 104
    if-gez p1, :cond_0

    .line 105
    new-instance v7, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v7, v14}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v7

    .line 107
    :cond_0
    if-gez p2, :cond_1

    .line 108
    new-instance v7, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v7, v14}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v7

    .line 110
    :cond_1
    const-wide/16 v14, 0x0

    cmpg-double v7, p3, v14

    if-ltz v7, :cond_2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p3, v14

    if-lez v7, :cond_3

    .line 111
    :cond_2
    new-instance v7, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v14, v15, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v7

    .line 113
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 114
    new-instance v7, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v7, v14, v15}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 118
    :cond_4
    if-nez p5, :cond_5

    .line 119
    new-instance v7, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v7}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v7

    .line 123
    :cond_5
    new-instance v6, Lorg/apache/commons/math3/distribution/BinomialDistribution;

    const/4 v7, 0x0

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-direct {v6, v7, v0, v1, v2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 124
    .local v6, "distribution":Lorg/apache/commons/math3/distribution/BinomialDistribution;
    sget-object v7, Lorg/apache/commons/math3/stat/inference/BinomialTest$1;->$SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis:[I

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->ordinal()I

    move-result v14

    aget v7, v7, v14

    packed-switch v7, :pswitch_data_0

    .line 156
    new-instance v7, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p5, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object v17, v15, v16

    invoke-direct {v7, v14, v15}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 126
    :pswitch_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide v16

    sub-double v12, v14, v16

    .line 154
    :cond_6
    :goto_0
    return-wide v12

    .line 128
    :pswitch_1
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide v12

    goto :goto_0

    .line 130
    :pswitch_2
    const/4 v5, 0x0

    .line 131
    .local v5, "criticalValueLow":I
    move/from16 v4, p1

    .line 132
    .local v4, "criticalValueHigh":I
    const-wide/16 v12, 0x0

    .line 135
    .local v12, "pTotal":D
    :cond_7
    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide v10

    .line 136
    .local v10, "pLow":D
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide v8

    .line 138
    .local v8, "pHigh":D
    cmpl-double v7, v10, v8

    if-nez v7, :cond_8

    .line 139
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    add-int/lit8 v4, v4, -0x1

    .line 150
    :goto_1
    move/from16 v0, p2

    if-gt v5, v0, :cond_6

    move/from16 v0, p2

    if-ge v4, v0, :cond_7

    goto :goto_0

    .line 142
    :cond_8
    cmpg-double v7, v10, v8

    if-gez v7, :cond_9

    .line 143
    add-double/2addr v12, v10

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    :cond_9
    add-double/2addr v12, v8

    .line 147
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;D)Z
    .locals 3
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "probability"    # D
    .param p5, "alternativeHypothesis"    # Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;
    .param p6, "alpha"    # D

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/stat/inference/BinomialTest;->binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D

    move-result-wide v0

    .line 64
    .local v0, "pValue":D
    cmpg-double v2, v0, p6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
