.class public Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "StandardDeviation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f807d2658822864L


# instance fields
.field private variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 57
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1
    .param p1, "m2"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 66
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 77
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isBiasCorrected"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 91
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 92
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1
    .param p1, "isBiasCorrected"    # Z
    .param p2, "m2"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 107
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->setData([D)V

    .line 277
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 278
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    .line 138
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;-><init>()V

    .line 259
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V

    .line 260
    return-object v0
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
    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DD)D
    .locals 2
    .param p1, "values"    # [D
    .param p2, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DDII)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "mean"    # D
    .param p4, "begin"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

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
    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    .line 115
    return-void
.end method

.method public isBiasCorrected()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected()Z

    move-result v0

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 1
    .param p1, "isBiasCorrected"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setBiasCorrected(Z)V

    .line 250
    return-void
.end method
