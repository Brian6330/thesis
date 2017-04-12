.class Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "FirstMoment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x54d4de90ab41fa69L


# instance fields
.field protected dev:D

.field protected m1:D

.field protected n:J

.field protected nDev:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    .line 82
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 83
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    .line 84
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 96
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    .line 97
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 162
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->setData([D)V

    .line 164
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    .line 165
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 166
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    .line 167
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    .line 168
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 119
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    .line 121
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    .line 122
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    .line 123
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    .line 147
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    .line 148
    return-object v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 7
    .param p1, "d"    # D

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 105
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 107
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    .line 108
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    long-to-double v0, v2

    .line 109
    .local v0, "n0":D
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    sub-double v2, p1, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    .line 110
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    div-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    .line 111
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 112
    return-void
.end method
