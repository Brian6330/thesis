.class public abstract Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.super Ljava/lang/Object;
.source "AbstractUnivariateStatistic.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;


# instance fields
.field private storedData:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
.end method

.method public evaluate()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D)D
    .locals 2
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, v1, v1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    .line 121
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract evaluate([DII)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation
.end method

.method public getData()[D
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method protected getDataRef()[D
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    return-object v0
.end method

.method public setData([D)V
    .locals 1
    .param p1, "values"    # [D

    .prologue
    .line 53
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    .line 54
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public setData([DII)V
    .locals 5
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 88
    :cond_0
    if-gez p2, :cond_1

    .line 89
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 92
    :cond_1
    if-gez p3, :cond_2

    .line 93
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 96
    :cond_2
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 97
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SUBARRAY_ENDS_AFTER_ARRAY_END:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    add-int v2, p2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 100
    :cond_3
    new-array v0, p3, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->storedData:[D

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-void
.end method

.method protected test([DII)Z
    .locals 1
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v0

    return v0
.end method

.method protected test([DIIZ)Z
    .locals 1
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .param p4, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v0

    return v0
.end method

.method protected test([D[DII)Z
    .locals 1
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
    .line 221
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([D[DIIZ)Z

    move-result v0

    return v0
.end method

.method protected test([D[DIIZ)Z
    .locals 1
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .param p5, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([D[DIIZ)Z

    move-result v0

    return v0
.end method
