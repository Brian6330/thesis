.class public abstract Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "AbstractStorelessUnivariateStatistic.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p1, p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;

    if-nez v3, :cond_2

    move v1, v2

    .line 170
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 172
    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;

    .line 173
    .local v0, "stat":Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getN()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getN()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public evaluate([D)D
    .locals 3
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DII)D
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
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->clear()V

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->incrementAll([DII)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getResult()D
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract increment(D)V
.end method

.method public incrementAll([D)V
    .locals 3
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 133
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->incrementAll([DII)V

    .line 134
    return-void
.end method

.method public incrementAll([DII)V
    .locals 4
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->test([DII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    add-int v1, p2, p3

    .line 151
    .local v1, "k":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 152
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->increment(D)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    .end local v1    # "k":I
    :cond_0
    return-void
.end method
