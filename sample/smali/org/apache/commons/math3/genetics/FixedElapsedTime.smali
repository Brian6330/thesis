.class public Lorg/apache/commons/math3/genetics/FixedElapsedTime;
.super Ljava/lang/Object;
.source "FixedElapsedTime.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/StoppingCondition;


# instance fields
.field private endTime:J

.field private final maxTimePeriod:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/genetics/FixedElapsedTime;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 47
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "maxTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 58
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->maxTimePeriod:J

    .line 61
    return-void
.end method


# virtual methods
.method public isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z
    .locals 4
    .param p1, "population"    # Lorg/apache/commons/math3/genetics/Population;

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->maxTimePeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
