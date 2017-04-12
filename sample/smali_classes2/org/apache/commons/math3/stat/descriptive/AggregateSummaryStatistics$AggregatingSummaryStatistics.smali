.class Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
.source "AggregateSummaryStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatingSummaryStatistics"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 0
    .param p1, "aggregateStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .prologue
    .line 373
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 374
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 375
    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 385
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 386
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    if-ne p1, p0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    if-nez v3, :cond_2

    move v1, v2

    .line 404
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 406
    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    .line 407
    .local v0, "stat":Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
    invoke-super {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    iget-object v4, v0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 417
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7b

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
