.class public Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
.source "SecondMoment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36b63ac1b1c5c95dL


# instance fields
.field protected m2:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    .line 62
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 2
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    .line 75
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 76
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    .line 131
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 132
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->clear()V

    .line 96
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 97
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    .line 114
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    .line 115
    return-object v0
.end method

.method public bridge synthetic getN()J
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 7
    .param p1, "d"    # D

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m1:D

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->increment(D)V

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->dev:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->nDev:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 88
    return-void
.end method
