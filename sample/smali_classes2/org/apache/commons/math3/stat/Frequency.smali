.class public Lorg/apache/commons/math3/stat/Frequency;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/Frequency$1;,
        Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x355e44eb1d32a5cfL


# instance fields
.field private final freqTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    .line 87
    return-void
.end method


# virtual methods
.method public addValue(C)V
    .locals 1
    .param p1, "v"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 159
    return-void
.end method

.method public addValue(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 136
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 137
    return-void
.end method

.method public addValue(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 148
    return-void
.end method

.method public addValue(Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 126
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 247
    return-void
.end method

.method public entrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 667
    if-ne p0, p1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/Frequency;

    if-nez v3, :cond_2

    move v1, v2

    .line 671
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 673
    check-cast v0, Lorg/apache/commons/math3/stat/Frequency;

    .line 674
    .local v0, "other":Lorg/apache/commons/math3/stat/Frequency;
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    if-nez v3, :cond_3

    .line 675
    iget-object v3, v0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    if-eqz v3, :cond_0

    move v1, v2

    .line 676
    goto :goto_0

    .line 678
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    iget-object v4, v0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 679
    goto :goto_0
.end method

.method public getCount(C)J
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount(I)J
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 325
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount(J)J
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 335
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount(Ljava/lang/Comparable;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 304
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/stat/Frequency;->getCount(J)J

    move-result-wide v2

    .line 315
    :cond_0
    :goto_0
    return-wide v2

    .line 306
    .restart local p1    # "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_1
    const-wide/16 v2, 0x0

    .line 308
    .local v2, "result":J
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 309
    .local v0, "count":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 312
    .end local v0    # "count":Ljava/lang/Long;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCumFreq(C)J
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 496
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumFreq(I)J
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 472
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumFreq(J)J
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 484
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumFreq(Ljava/lang/Comparable;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    const-wide/16 v8, 0x0

    .line 422
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_1

    move-wide v4, v8

    .line 460
    .end local p1    # "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_0
    :goto_0
    return-wide v4

    .line 425
    .restart local p1    # "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_1
    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 426
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(J)J

    move-result-wide v4

    goto :goto_0

    .line 428
    .restart local p1    # "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_2
    iget-object v7, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 429
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Comparable<*>;>;"
    if-nez v0, :cond_3

    .line 430
    new-instance v0, Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;

    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Comparable<*>;>;"
    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;-><init>(Lorg/apache/commons/math3/stat/Frequency$1;)V

    .line 432
    .restart local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Comparable<*>;>;"
    :cond_3
    const-wide/16 v4, 0x0

    .line 435
    .local v4, "result":J
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v7, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 436
    .local v3, "value":Ljava/lang/Long;
    if-eqz v3, :cond_4

    .line 437
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 443
    :cond_4
    iget-object v7, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_5

    move-wide v4, v8

    .line 444
    goto :goto_0

    .line 439
    .end local v3    # "value":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 447
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v3    # "value":Ljava/lang/Long;
    :cond_5
    iget-object v7, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_6

    .line 448
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v4

    goto :goto_0

    .line 451
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->valuesIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 452
    .local v6, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Comparable<*>;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 453
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 454
    .local v2, "nextValue":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_0

    .line 455
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_1
.end method

.method public getCumPct(C)D
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 556
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumPct(I)D
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 530
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumPct(J)D
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 543
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumPct(Ljava/lang/Comparable;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)D"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v0

    .line 514
    .local v0, "sumFreq":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 515
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 517
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getMode()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 566
    const-wide/16 v6, 0x0

    .line 569
    .local v6, "mostPopular":J
    iget-object v8, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 570
    .local v4, "l":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 571
    .local v2, "frequency":J
    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 572
    move-wide v6, v2

    goto :goto_0

    .line 576
    .end local v2    # "frequency":J
    .end local v4    # "l":Ljava/lang/Long;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v5, "modeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Comparable<*>;>;"
    iget-object v8, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 578
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 579
    .restart local v2    # "frequency":J
    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 583
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    .end local v2    # "frequency":J
    :cond_3
    return-object v5
.end method

.method public getPct(C)D
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 407
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPct(I)D
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 385
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPct(J)D
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 396
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPct(Ljava/lang/Comparable;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)D"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v0

    .line 371
    .local v0, "sumFreq":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 372
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 374
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getSumFreq()J
    .locals 6

    .prologue
    .line 287
    const-wide/16 v2, 0x0

    .line 288
    .local v2, "result":J
    iget-object v1, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 292
    :cond_0
    return-wide v2
.end method

.method public getUniqueCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 657
    const/16 v0, 0x1f

    .line 658
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 659
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 661
    return v1

    .line 659
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public incrementValue(CJ)V
    .locals 2
    .param p1, "v"    # C
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 242
    return-void
.end method

.method public incrementValue(IJ)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 207
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 208
    return-void
.end method

.method public incrementValue(JJ)V
    .locals 1
    .param p1, "v"    # J
    .param p3, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 225
    return-void
.end method

.method public incrementValue(Ljava/lang/Comparable;J)V
    .locals 8
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    move-object v2, p1

    .line 175
    .local v2, "obj":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 176
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 179
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 180
    .local v0, "count":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 181
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "count":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSTANCES_NOT_COMPARABLE_TO_EXISTING_VALUES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public merge(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/stat/Frequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "others":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/Frequency;>;"
    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 619
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/Frequency;

    .line 620
    .local v0, "freq":Lorg/apache/commons/math3/stat/Frequency;
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->merge(Lorg/apache/commons/math3/stat/Frequency;)V

    goto :goto_0

    .line 622
    .end local v0    # "freq":Lorg/apache/commons/math3/stat/Frequency;
    :cond_0
    return-void
.end method

.method public merge(Lorg/apache/commons/math3/stat/Frequency;)V
    .locals 6
    .param p1, "other"    # Lorg/apache/commons/math3/stat/Frequency;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 598
    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 600
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/Frequency;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 601
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    goto :goto_0

    .line 605
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 96
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 97
    .local v1, "nf":Ljava/text/NumberFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, "outBuffer":Ljava/lang/StringBuilder;
    const-string v4, "Value \t Freq. \t Pct. \t Cum Pct. \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v4, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Comparable<*>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 102
    .local v3, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    .end local v3    # "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
