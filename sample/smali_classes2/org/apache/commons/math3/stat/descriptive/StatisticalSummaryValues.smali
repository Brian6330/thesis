.class public Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;
.super Ljava/lang/Object;
.source "StatisticalSummaryValues.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;


# static fields
.field private static final serialVersionUID:J = -0x46e64c6929212928L


# instance fields
.field private final max:D

.field private final mean:D

.field private final min:D

.field private final n:J

.field private final sum:D

.field private final variance:D


# direct methods
.method public constructor <init>(DDJDDD)V
    .locals 1
    .param p1, "mean"    # D
    .param p3, "variance"    # D
    .param p5, "n"    # J
    .param p7, "max"    # D
    .param p9, "min"    # D
    .param p11, "sum"    # D

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->mean:D

    .line 67
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->variance:D

    .line 68
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->n:J

    .line 69
    iput-wide p7, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->max:D

    .line 70
    iput-wide p9, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->min:D

    .line 71
    iput-wide p11, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->sum:D

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    if-nez v3, :cond_2

    move v1, v2

    .line 137
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 139
    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    .line 140
    .local v0, "stat":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->max:D

    return-wide v0
.end method

.method public getMean()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->mean:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->min:D

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->n:J

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->variance:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSum()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->sum:D

    return-wide v0
.end method

.method public getVariance()D
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->variance:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 156
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    add-int v0, v1, v2

    .line 157
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    add-int v0, v1, v2

    .line 158
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    add-int v0, v1, v2

    .line 161
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 173
    .local v1, "outBuffer":Ljava/lang/StringBuffer;
    const-string v0, "\n"

    .line 174
    .local v0, "endl":Ljava/lang/String;
    const-string v2, "StatisticalSummaryValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v2, "n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v2, "min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v2, "max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v2, "mean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v2, "std dev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getStandardDeviation()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v2, "variance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v2, "sum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
