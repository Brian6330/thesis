.class public Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Kurtosis.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x26a468dc400966b7L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 70
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 1
    .param p1, "m4"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 80
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 91
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    .line 92
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
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
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->setData([D)V

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 223
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 224
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->clear()V

    .line 136
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    .line 205
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    .line 206
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
    .line 166
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    .line 168
    .local v10, "kurt":D
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->test([DII)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x3

    move/from16 v0, p3

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 171
    new-instance v9, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 172
    .local v9, "variance":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incrementAll([DII)V

    .line 173
    iget-object v0, v9, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m1:D

    .line 174
    .local v12, "mean":D
    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 178
    .local v16, "stdDev":D
    const-wide/16 v4, 0x0

    .line 179
    .local v4, "accum3":D
    move/from16 v8, p2

    .local v8, "i":I
    :goto_0
    add-int v20, p2, p3

    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    .line 180
    aget-wide v20, p1, v8

    sub-double v20, v20, v12

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    invoke-static/range {v20 .. v23}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v20

    add-double v4, v4, v20

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v20

    div-double v4, v4, v20

    .line 185
    move/from16 v0, p3

    int-to-double v14, v0

    .line 187
    .local v14, "n0":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v20, v20, v14

    mul-double v20, v20, v14

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v14, v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    sub-double v24, v14, v24

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    sub-double v24, v14, v24

    mul-double v22, v22, v24

    div-double v6, v20, v22

    .line 189
    .local v6, "coefficientOne":D
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v14, v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    sub-double v22, v14, v22

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    sub-double v24, v14, v24

    mul-double v22, v22, v24

    div-double v18, v20, v22

    .line 193
    .local v18, "termTwo":D
    mul-double v20, v6, v4

    sub-double v10, v20, v18

    .line 195
    .end local v4    # "accum3":D
    .end local v6    # "coefficientOne":D
    .end local v8    # "i":I
    .end local v9    # "variance":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v12    # "mean":D
    .end local v14    # "n0":D
    .end local v16    # "stdDev":D
    .end local v18    # "termTwo":D
    :cond_1
    return-wide v10
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 12

    .prologue
    .line 112
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 113
    .local v0, "kurtosis":D
    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getN()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 114
    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v6, v6, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    iget-object v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v8, v8, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    long-to-double v8, v8

    div-double v4, v6, v8

    .line 115
    .local v4, "variance":D
    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v6, v6, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-wide v6, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    .line 116
    :cond_0
    const-wide/16 v0, 0x0

    .line 125
    .end local v4    # "variance":D
    :cond_1
    :goto_0
    return-wide v0

    .line 118
    .restart local v4    # "variance":D
    :cond_2
    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v6, v6, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    long-to-double v2, v6

    .line 119
    .local v2, "n":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v2

    mul-double/2addr v6, v2

    iget-object v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getResult()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    iget-object v10, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v10, v10, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    mul-double/2addr v8, v10

    iget-object v10, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v10, v10, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v2, v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double v10, v2, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    sub-double v10, v2, v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, v4

    mul-double/2addr v8, v4

    div-double v0, v6, v8

    goto :goto_0
.end method

.method public increment(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->increment(D)V

    .line 105
    :cond_0
    return-void
.end method
