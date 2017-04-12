.class Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
.source "ThirdMoment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6c81a51b22018cd7L


# instance fields
.field protected m3:D

.field protected nDevSq:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    .line 71
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    .line 83
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    .line 84
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 145
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    .line 146
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 115
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 117
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    .line 118
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 127
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    .line 128
    return-object v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 11
    .param p1, "d"    # D

    .prologue
    .line 91
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 92
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m1:D

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m2:D

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 95
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m2:D

    .line 96
    .local v2, "prevM2":D
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    .line 97
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDev:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDev:D

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    .line 98
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    long-to-double v0, v4

    .line 99
    .local v0, "n0":D
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDev:D

    mul-double/2addr v6, v8

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v0, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v8, v0, v8

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->dev:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 100
    return-void
.end method
