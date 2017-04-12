.class public abstract Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.super Ljava/lang/Object;
.source "BaseRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final pointsAndWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/util/Pair",
            "<[TT;[TT;>;>;"
        }
    .end annotation
.end field

.field private final pointsAndWeightsDouble:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;, "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->pointsAndWeights:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->pointsAndWeightsDouble:Ljava/util/Map;

    return-void
.end method

.method private static convertToDouble(Lorg/apache/commons/math3/util/Pair;)Lorg/apache/commons/math3/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Lorg/apache/commons/math3/util/Pair",
            "<[TT;[TT;>;)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[TT;[TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Number;

    .line 140
    .local v3, "pT":[Ljava/lang/Number;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Number;

    .line 142
    .local v5, "wT":[Ljava/lang/Number;, "[TT;"
    array-length v1, v3

    .line 143
    .local v1, "len":I
    new-array v2, v1, [D

    .line 144
    .local v2, "pD":[D
    new-array v4, v1, [D

    .line 146
    .local v4, "wD":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v2, v0

    .line 148
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v6, v2, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method protected addRule(Lorg/apache/commons/math3/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<[TT;[TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;, "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<TT;>;"
    .local p1, "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[TT;[TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Number;

    array-length v1, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Number;

    array-length v0, v0

    if-eq v1, v0, :cond_0

    .line 112
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Number;

    array-length v2, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Number;

    array-length v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->pointsAndWeights:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Number;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method protected abstract computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[TT;[TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation
.end method

.method public getRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 5
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;, "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<TT;>;"
    if-gtz p1, :cond_0

    .line 58
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 63
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->pointsAndWeightsDouble:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/Pair;

    .line 65
    .local v0, "cached":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[D[D>;"
    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    .line 70
    .local v1, "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[TT;[TT;>;"
    invoke-static {v1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->convertToDouble(Lorg/apache/commons/math3/util/Pair;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->pointsAndWeightsDouble:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v1    # "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[TT;[TT;>;"
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method protected declared-synchronized getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;
    .locals 3
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[TT;[TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;, "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->pointsAndWeights:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/Pair;

    .line 95
    .local v0, "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[TT;[TT;>;"
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->computeRule(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->addRule(Lorg/apache/commons/math3/util/Pair;)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 100
    .end local v0    # "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[TT;[TT;>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
