.class public Lorg/apache/commons/math3/distribution/UniformRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "UniformRealDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x133022dL


# instance fields
.field private final lower:D

.field private final upper:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(DD)V

    .line 60
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 80
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 7
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "lower"    # D
    .param p4, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 133
    cmpl-double v0, p2, p4

    if-ltz v0, :cond_0

    .line 134
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 139
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    .line 140
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "lower"    # D
    .param p4, "upper"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 117
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 154
    const-wide/16 v0, 0x0

    .line 159
    :goto_0
    return-wide v0

    .line 156
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 157
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 159
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public density(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 146
    :cond_0
    const-wide/16 v0, 0x0

    .line 148
    :goto_0
    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getNumericalMean()D
    .locals 6

    .prologue
    .line 178
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .prologue
    .line 188
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double v0, v2, v4

    .line 189
    .local v0, "ul":D
    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 5
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 168
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public sample()D
    .locals 8

    .prologue
    .line 240
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 241
    .local v0, "u":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    return-wide v2
.end method
