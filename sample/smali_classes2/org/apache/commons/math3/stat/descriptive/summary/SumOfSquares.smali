.class public Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SumOfSquares.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x144677da4b12b638L


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 68
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V

    .line 69
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->setData([D)V

    .line 155
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    .line 156
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    .line 157
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    .line 102
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    .line 138
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V

    .line 139
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 122
    .local v2, "sumSq":D
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->test([DIIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-wide/16 v2, 0x0

    .line 124
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 125
    aget-wide v4, p1, v0

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_0
    return-wide v2
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    .line 77
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    .line 78
    return-void
.end method
