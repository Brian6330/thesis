.class public Lorg/apache/commons/math3/stat/descriptive/rank/Max;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Max.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4d9fb0f5dc3c0da1L


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    .line 58
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Max;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/rank/Max;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 69
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Max;Lorg/apache/commons/math3/stat/descriptive/rank/Max;)V

    .line 70
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Max;Lorg/apache/commons/math3/stat/descriptive/rank/Max;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/rank/Max;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/rank/Max;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->setData([D)V

    .line 168
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    .line 169
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    .line 170
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 88
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    .line 90
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Max;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    .line 151
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/rank/Max;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Max;Lorg/apache/commons/math3/stat/descriptive/rank/Max;)V

    .line 152
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 132
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 133
    .local v2, "max":D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->test([DII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    aget-wide v2, p1, p2

    .line 135
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    .line 136
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    aget-wide v4, p1, v0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    aget-wide v2, p1, v0

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_2
    return-wide v2
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->value:D

    .line 80
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->n:J

    .line 81
    return-void
.end method
