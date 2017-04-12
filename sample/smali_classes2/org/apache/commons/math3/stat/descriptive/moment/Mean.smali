.class public Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Mean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x11fc78ebba85144cL


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 83
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 1
    .param p1, "m1"    # Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 104
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    .line 105
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 281
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->setData([D)V

    .line 283
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 284
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    .line 285
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->clear()V

    .line 128
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 265
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    .line 266
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 10
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->test([DII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 166
    .local v3, "sum":Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    int-to-double v4, p3

    .line 169
    .local v4, "sampleSize":D
    invoke-virtual {v3, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([DII)D

    move-result-wide v8

    div-double v6, v8, v4

    .line 172
    .local v6, "xbar":D
    const-wide/16 v0, 0x0

    .line 173
    .local v0, "correction":D
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v8, p2, p3

    if-ge v2, v8, :cond_0

    .line 174
    aget-wide v8, p1, v2

    sub-double/2addr v8, v6

    add-double/2addr v0, v8

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    div-double v8, v0, v4

    add-double/2addr v8, v6

    .line 178
    .end local v0    # "correction":D
    .end local v2    # "i":I
    .end local v3    # "sum":Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .end local v4    # "sampleSize":D
    .end local v6    # "xbar":D
    :goto_1
    return-wide v8

    :cond_1
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    goto :goto_1
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
    .line 255
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DII)D
    .locals 16
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
    .line 212
    invoke-virtual/range {p0 .. p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->test([D[DII)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 213
    new-instance v7, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v7}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 216
    .local v7, "sum":Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v7, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([DII)D

    move-result-wide v8

    .line 217
    .local v8, "sumw":D
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([D[DII)D

    move-result-wide v12

    div-double v10, v12, v8

    .line 220
    .local v10, "xbarw":D
    const-wide/16 v4, 0x0

    .line 221
    .local v4, "correction":D
    move/from16 v6, p3

    .local v6, "i":I
    :goto_0
    add-int v12, p3, p4

    if-ge v6, v12, :cond_0

    .line 222
    aget-wide v12, p2, v6

    aget-wide v14, p1, v6

    sub-double/2addr v14, v10

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_0
    div-double v12, v4, v8

    add-double/2addr v12, v10

    .line 226
    .end local v4    # "correction":D
    .end local v6    # "i":I
    .end local v7    # "sum":Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .end local v8    # "sumw":D
    .end local v10    # "xbarw":D
    :goto_1
    return-wide v12

    :cond_1
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    goto :goto_1
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->increment(D)V

    .line 118
    :cond_0
    return-void
.end method
