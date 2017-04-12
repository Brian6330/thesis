.class public Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Sum.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x723d578c76ce5cbcL


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

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 69
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    .line 70
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->setData([D)V

    .line 222
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 223
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 224
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 103
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 205
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    .line 206
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
    .line 122
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 123
    .local v2, "sum":D
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->test([DIIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-wide/16 v2, 0x0

    .line 125
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 126
    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    :cond_0
    return-wide v2
.end method

.method public evaluate([D[D)D
    .locals 2
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([D[DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DII)D
    .locals 10
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 161
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 162
    .local v8, "sum":D
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->test([D[DIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-wide/16 v8, 0x0

    .line 164
    move v6, p3

    .local v6, "i":I
    :goto_0
    add-int v0, p3, p4

    if-ge v6, v0, :cond_0

    .line 165
    aget-wide v0, p1, v6

    aget-wide v2, p2, v6

    mul-double/2addr v0, v2

    add-double/2addr v8, v0

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 168
    .end local v6    # "i":I
    :cond_0
    return-wide v8
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 79
    return-void
.end method
