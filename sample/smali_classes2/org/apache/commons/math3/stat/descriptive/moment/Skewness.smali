.class public Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Skewness.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x628eddd741837198L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 64
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 84
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 1
    .param p1, "m3"    # Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 73
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 74
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->setData([D)V

    .line 220
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 221
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 222
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->clear()V

    .line 138
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    .line 203
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V

    .line 204
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 26
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 161
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 163
    .local v18, "skew":D
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->test([DII)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v22, 0x2

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 164
    new-instance v13, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v13}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 166
    .local v13, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v14

    .line 171
    .local v14, "m":D
    const-wide/16 v4, 0x0

    .line 172
    .local v4, "accum":D
    const-wide/16 v6, 0x0

    .line 173
    .local v6, "accum2":D
    move/from16 v12, p2

    .local v12, "i":I
    :goto_0
    add-int v22, p2, p3

    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 174
    aget-wide v22, p1, v12

    sub-double v10, v22, v14

    .line 175
    .local v10, "d":D
    mul-double v22, v10, v10

    add-double v4, v4, v22

    .line 176
    add-double/2addr v6, v10

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 178
    .end local v10    # "d":D
    :cond_0
    mul-double v22, v6, v6

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    sub-double v22, v4, v22

    add-int/lit8 v24, p3, -0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 180
    .local v20, "variance":D
    const-wide/16 v8, 0x0

    .line 181
    .local v8, "accum3":D
    move/from16 v12, p2

    :goto_1
    add-int v22, p2, p3

    move/from16 v0, v22

    if-ge v12, v0, :cond_1

    .line 182
    aget-wide v22, p1, v12

    sub-double v10, v22, v14

    .line 183
    .restart local v10    # "d":D
    mul-double v22, v10, v10

    mul-double v22, v22, v10

    add-double v8, v8, v22

    .line 181
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 185
    .end local v10    # "d":D
    :cond_1
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v20

    div-double v8, v8, v22

    .line 188
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 191
    .local v16, "n0":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v16, v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    sub-double v24, v16, v24

    mul-double v22, v22, v24

    div-double v22, v16, v22

    mul-double v18, v22, v8

    .line 193
    .end local v4    # "accum":D
    .end local v6    # "accum2":D
    .end local v8    # "accum3":D
    .end local v12    # "i":I
    .end local v13    # "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .end local v14    # "m":D
    .end local v16    # "n0":D
    .end local v20    # "variance":D
    :cond_2
    return-wide v18
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 10

    .prologue
    .line 110
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 111
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 118
    :goto_0
    return-wide v4

    .line 113
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m2:D

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v6, v6, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 114
    .local v2, "variance":D
    const-wide v4, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 115
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 117
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->getN()J

    move-result-wide v4

    long-to-double v0, v4

    .line 118
    .local v0, "n0":D
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v0, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v8, v0, v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, v2

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->increment(D)V

    .line 98
    :cond_0
    return-void
.end method
