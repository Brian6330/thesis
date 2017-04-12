.class Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
.source "FourthMoment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x421d181229c5c4ebL


# instance fields
.field private m4:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 70
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 82
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V

    .line 83
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    .line 149
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 150
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->clear()V

    .line 122
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 123
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    .line 132
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V

    .line 133
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 15
    .param p1, "d"    # D

    .prologue
    .line 90
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 91
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 92
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m3:D

    .line 93
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    .line 94
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m1:D

    .line 97
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m3:D

    .line 98
    .local v4, "prevM3":D
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    .line 100
    .local v2, "prevM2":D
    invoke-super/range {p0 .. p2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->increment(D)V

    .line 102
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    long-to-double v0, v6

    .line 104
    .local v0, "n0":D
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDev:D

    mul-double/2addr v8, v10

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDevSq:D

    mul-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    mul-double v8, v0, v0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v0, v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget-wide v10, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDevSq:D

    iget-wide v12, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDevSq:D

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v0, v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 106
    return-void
.end method
