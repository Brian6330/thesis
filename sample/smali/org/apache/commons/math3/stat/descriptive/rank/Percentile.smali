.class public Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "Percentile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;,
        Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_LEVELS:I = 0xa

.field private static final PIVOTS_HEAP_LENGTH:I = 0x200

.field private static final serialVersionUID:J = -0x7049c6862ae14530L


# instance fields
.field private cachedPivots:[I

.field private final estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field private final kthSelector:Lorg/apache/commons/math3/util/KthSelector;

.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private quantile:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 137
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    .line 138
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1, "quantile"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    sget-object v4, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    sget-object v5, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v6, Lorg/apache/commons/math3/util/KthSelector;

    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/util/KthSelector;-><init>(Lorg/apache/commons/math3/util/PivotingStrategyInterface;)V

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    .line 154
    return-void
.end method

.method protected constructor <init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V
    .locals 1
    .param p1, "quantile"    # D
    .param p3, "estimationType"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .param p4, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p5, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 196
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    invoke-static {p5}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 200
    iput-object p4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 201
    iput-object p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 4
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 165
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 167
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 168
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    .line 170
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setData([D)V

    .line 171
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    iget-object v2, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_0
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    .line 176
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static copyOf([DII)[D
    .locals 1
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I

    .prologue
    .line 478
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 479
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method private getPivots([D)[I
    .locals 2
    .param p1, "values"    # [D

    .prologue
    .line 558
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 559
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 564
    .local v0, "pivotsHeap":[I
    :goto_0
    return-object v0

    .line 561
    .end local v0    # "pivotsHeap":[I
    :cond_0
    const/16 v1, 0x200

    new-array v0, v1, [I

    .line 562
    .restart local v0    # "pivotsHeap":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method private static removeAndSlice([DIID)[D
    .locals 11
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "removedValue"    # D

    .prologue
    .line 516
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 519
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 520
    .local v1, "bits":Ljava/util/BitSet;
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int v8, p1, p2

    if-ge v3, v8, :cond_1

    .line 521
    aget-wide v8, p0, v3

    invoke-static {p3, p4, v8, v9}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 522
    sub-int v8, v3, p1

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 520
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 527
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v7

    .line 547
    .local v7, "temp":[D
    :cond_2
    :goto_1
    return-object v7

    .line 528
    .end local v7    # "temp":[D
    :cond_3
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    if-ne v8, p2, :cond_4

    .line 529
    const/4 v8, 0x0

    new-array v7, v8, [D

    .restart local v7    # "temp":[D
    goto :goto_1

    .line 531
    .end local v7    # "temp":[D
    :cond_4
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    sub-int v8, p2, v8

    new-array v7, v8, [D

    .line 532
    .restart local v7    # "temp":[D
    move v6, p1

    .line 533
    .local v6, "start":I
    const/4 v2, 0x0

    .line 534
    .local v2, "dest":I
    const/4 v5, -0x1

    .line 535
    .local v5, "nextOne":I
    const/4 v0, 0x0

    .line 536
    .local v0, "bitSetPtr":I
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    .line 537
    sub-int v4, v5, v0

    .line 538
    .local v4, "lengthToCopy":I
    invoke-static {p0, v6, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    add-int/2addr v2, v4

    .line 540
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    add-int v6, p1, v0

    .line 541
    goto :goto_2

    .line 543
    .end local v4    # "lengthToCopy":I
    :cond_5
    add-int v8, p1, p2

    if-ge v6, v8, :cond_2

    .line 544
    add-int v8, p1, p2

    sub-int/2addr v8, v6

    invoke-static {p0, v6, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method private static replaceAndSlice([DIIDD)[D
    .locals 5
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "original"    # D
    .param p5, "replacement"    # D

    .prologue
    .line 496
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v1

    .line 497
    .local v1, "temp":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 498
    aget-wide v2, v1, v0

    invoke-static {p3, p4, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, p5

    :goto_1
    aput-wide v2, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    aget-wide v2, v1, v0

    goto :goto_1

    .line 501
    :cond_1
    return-object v1
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-object v0
.end method

.method public evaluate(D)D
    .locals 3
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DD)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-virtual {p0, p1, v2, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    .line 273
    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DII)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 302
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DIID)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .param p4, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    .line 340
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v4, p4, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmpg-double v4, p4, v4

    if-gtz v4, :cond_1

    .line 341
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 344
    :cond_1
    if-nez p3, :cond_3

    .line 353
    :cond_2
    :goto_0
    return-wide v0

    .line 347
    :cond_3
    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    .line 348
    aget-wide v0, p1, p2

    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getWorkArray([DII)[D

    move-result-object v2

    .line 352
    .local v2, "work":[D
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getPivots([D)[I

    move-result-object v3

    .line 353
    .local v3, "pivotsHeap":[I
    array-length v4, v2

    if-eqz v4, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method

.method public getKthSelector()Lorg/apache/commons/math3/util/KthSelector;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    return-object v0
.end method

.method public getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method

.method public getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/KthSelector;->getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    move-result-object v0

    return-object v0
.end method

.method public getQuantile()D
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-wide v0
.end method

.method protected getWorkArray([DII)[D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I

    .prologue
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 444
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    .line 466
    .local v0, "work":[D
    :goto_0
    return-object v0

    .line 447
    .end local v0    # "work":[D
    :cond_0
    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy:[I

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 462
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v0

    .restart local v0    # "work":[D
    goto :goto_0

    .line 449
    .end local v0    # "work":[D
    :pswitch_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object v0

    .line 450
    .restart local v0    # "work":[D
    goto :goto_0

    .line 452
    .end local v0    # "work":[D
    :pswitch_1
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object v0

    .line 453
    .restart local v0    # "work":[D
    goto :goto_0

    .line 455
    .end local v0    # "work":[D
    :pswitch_2
    invoke-static {p1, p2, p3, v4, v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->removeAndSlice([DIID)[D

    move-result-object v0

    .line 456
    .restart local v0    # "work":[D
    goto :goto_0

    .line 458
    .end local v0    # "work":[D
    :pswitch_3
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v0

    .line 459
    .restart local v0    # "work":[D
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkNotNaN([D)V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method medianOf3([DII)I
    .locals 1
    .param p1, "work"    # [D
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;->pivotIndex([DII)I

    move-result v0

    return v0
.end method

.method public setData([D)V
    .locals 2
    .param p1, "values"    # [D

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 213
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    .line 214
    return-void

    .line 210
    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 211
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method public setData([DII)V
    .locals 2
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 226
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([DII)V

    .line 227
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method public setQuantile(D)V
    .locals 5
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 398
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 401
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    .line 402
    return-void
.end method

.method public withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7
    .param p1, "newEstimationType"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .prologue
    .line 598
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v1
.end method

.method public withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7
    .param p1, "newKthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 672
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v1
.end method

.method public withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7
    .param p1, "newNaNStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .prologue
    .line 631
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v1
.end method
