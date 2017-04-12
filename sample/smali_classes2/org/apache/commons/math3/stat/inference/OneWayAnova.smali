.class public Lorg/apache/commons/math3/stat/inference/OneWayAnova;
.super Ljava/lang/Object;
.source "OneWayAnova.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/inference/OneWayAnova$1;,
        Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private anovaStats(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[D>;)",
            "Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v1, "categoryDataSummaryStatistics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 202
    .local v2, "data":[D
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 203
    .local v3, "dataSummaryStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    move-object v0, v2

    .local v0, "arr$":[D
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-wide v8, v0, v5

    .line 205
    .local v8, "val":D
    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "arr$":[D
    .end local v2    # "data":[D
    .end local v3    # "dataSummaryStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "val":D
    :cond_1
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v7

    return-object v7
.end method

.method private anovaStats(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    .locals 38
    .param p2, "allowOneElementData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;Z)",
            "Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    if-nez p2, :cond_2

    .line 282
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v8, 0x2

    if-ge v3, v8, :cond_0

    .line 283
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TWO_OR_MORE_CATEGORIES_REQUIRED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v29

    const/16 v34, 0x2

    move/from16 v0, v29

    move/from16 v1, v34

    invoke-direct {v3, v8, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v3

    .line 288
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 289
    .local v2, "array":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v34

    const-wide/16 v36, 0x1

    cmp-long v3, v34, v36

    if-gtz v3, :cond_1

    .line 290
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v29, v0

    const/16 v34, 0x2

    move/from16 v0, v29

    move/from16 v1, v34

    invoke-direct {v3, v8, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v3

    .line 296
    .end local v2    # "array":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    .line 297
    .local v5, "dfwg":I
    const-wide/16 v22, 0x0

    .line 298
    .local v22, "sswg":D
    const-wide/16 v30, 0x0

    .line 299
    .local v30, "totsum":D
    const-wide/16 v32, 0x0

    .line 300
    .local v32, "totsumsq":D
    const/16 v28, 0x0

    .line 302
    .local v28, "totnum":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 304
    .local v9, "data":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v24

    .line 305
    .local v24, "sum":D
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v26

    .line 306
    .local v26, "sumsq":D
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v11, v0

    .line 307
    .local v11, "num":I
    add-int v28, v28, v11

    .line 308
    add-double v30, v30, v24

    .line 309
    add-double v32, v32, v26

    .line 311
    add-int/lit8 v3, v11, -0x1

    add-int/2addr v5, v3

    .line 312
    mul-double v34, v24, v24

    int-to-double v0, v11

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    sub-double v16, v26, v34

    .line 313
    .local v16, "ss":D
    add-double v22, v22, v16

    .line 314
    goto :goto_0

    .line 316
    .end local v9    # "data":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .end local v11    # "num":I
    .end local v16    # "ss":D
    .end local v24    # "sum":D
    .end local v26    # "sumsq":D
    :cond_3
    mul-double v34, v30, v30

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    sub-double v20, v32, v34

    .line 317
    .local v20, "sst":D
    sub-double v18, v20, v22

    .line 318
    .local v18, "ssbg":D
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 319
    .local v4, "dfbg":I
    int-to-double v0, v4

    move-wide/from16 v34, v0

    div-double v12, v18, v34

    .line 320
    .local v12, "msbg":D
    int-to-double v0, v5

    move-wide/from16 v34, v0

    div-double v14, v22, v34

    .line 321
    .local v14, "mswg":D
    div-double v6, v12, v14

    .line 323
    .local v6, "F":D
    new-instance v3, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;-><init>(IIDLorg/apache/commons/math3/stat/inference/OneWayAnova$1;)V

    return-object v3
.end method


# virtual methods
.method public anovaFValue(Ljava/util/Collection;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[D>;)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v0

    .line 91
    .local v0, "a":Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->F:D
    invoke-static {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D

    move-result-wide v2

    return-wide v2
.end method

.method public anovaPValue(Ljava/util/Collection;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[D>;)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v6

    .line 130
    .local v6, "a":Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    new-instance v0, Lorg/apache/commons/math3/distribution/FDistribution;

    const/4 v1, 0x0

    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfbg:I
    invoke-static {v6}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$100(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v2

    int-to-double v2, v2

    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfwg:I
    invoke-static {v6}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$200(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v4

    int-to-double v4, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 131
    .local v0, "fdist":Lorg/apache/commons/math3/distribution/FDistribution;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->F:D
    invoke-static {v6}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/distribution/FDistribution;->cumulativeProbability(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public anovaPValue(Ljava/util/Collection;Z)D
    .locals 7
    .param p2, "allowOneElementData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;Z)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaStats(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;

    move-result-object v6

    .line 172
    .local v6, "a":Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
    new-instance v0, Lorg/apache/commons/math3/distribution/FDistribution;

    const/4 v1, 0x0

    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfbg:I
    invoke-static {v6}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$100(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v2

    int-to-double v2, v2

    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfwg:I
    invoke-static {v6}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$200(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I

    move-result v4

    int-to-double v4, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 173
    .local v0, "fdist":Lorg/apache/commons/math3/distribution/FDistribution;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    # getter for: Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->F:D
    invoke-static {v6}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/distribution/FDistribution;->cumulativeProbability(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public anovaTest(Ljava/util/Collection;D)Z
    .locals 6
    .param p2, "alpha"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[D>;D)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .local p1, "categoryData":Ljava/util/Collection;, "Ljava/util/Collection<[D>;"
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 252
    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-lez v1, :cond_0

    cmpl-double v1, p2, v4

    if-lez v1, :cond_1

    .line 253
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

    .line 257
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaPValue(Ljava/util/Collection;)D

    move-result-wide v2

    cmpg-double v1, v2, p2

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
