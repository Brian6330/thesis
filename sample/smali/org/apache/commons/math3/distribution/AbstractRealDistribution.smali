.class public abstract Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.super Ljava/lang/Object;
.source "AbstractRealDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/RealDistribution;
.implements Ljava/io/Serializable;


# static fields
.field public static final SOLVER_DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final serialVersionUID:J = -0x872367e4cbe0c2L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private solverAbsoluteAccuracy:D


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 59
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 59
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    .line 76
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 77
    return-void
.end method


# virtual methods
.method public cumulativeProbability(DD)D
    .locals 3
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 27
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 156
    const-wide/16 v10, 0x0

    cmpg-double v10, p1, v10

    if-ltz v10, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, p1, v10

    if-lez v10, :cond_1

    .line 157
    :cond_0
    new-instance v10, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v11, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v10

    .line 160
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSupportLowerBound()D

    move-result-wide v6

    .line 161
    .local v6, "lowerBound":D
    const-wide/16 v10, 0x0

    cmpl-double v10, p1, v10

    if-nez v10, :cond_3

    move-wide v8, v6

    .line 229
    :cond_2
    :goto_0
    return-wide v8

    .line 165
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSupportUpperBound()D

    move-result-wide v8

    .line 166
    .local v8, "upperBound":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, p1, v10

    if-eqz v10, :cond_2

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getNumericalMean()D

    move-result-wide v16

    .line 171
    .local v16, "mu":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getNumericalVariance()D

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    .line 173
    .local v20, "sig":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v4, 0x1

    .line 176
    .local v4, "chebyshevApplies":Z
    :goto_1
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v6, v10

    if-nez v10, :cond_4

    .line 177
    if-eqz v4, :cond_7

    .line 178
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v10, p1

    div-double v10, v10, p1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v20

    sub-double v6, v16, v10

    .line 187
    :cond_4
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v10, v8, v10

    if-nez v10, :cond_5

    .line 188
    if-eqz v4, :cond_8

    .line 189
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v10, p1

    div-double v10, p1, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v20

    add-double v8, v16, v10

    .line 198
    :cond_5
    new-instance v5, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;-><init>(Lorg/apache/commons/math3/distribution/AbstractRealDistribution;D)V

    .line 205
    .local v5, "toSolve":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v22

    .line 210
    .local v22, "x":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->isSupportConnected()Z

    move-result v10

    if-nez v10, :cond_a

    .line 212
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v12

    .line 213
    .local v12, "dx":D
    sub-double v10, v22, v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSupportLowerBound()D

    move-result-wide v24

    cmpl-double v10, v10, v24

    if-ltz v10, :cond_a

    .line 214
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v18

    .line 215
    .local v18, "px":D
    sub-double v10, v22, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v10

    cmpl-double v10, v10, v18

    if-nez v10, :cond_a

    .line 216
    move-wide/from16 v8, v22

    .line 217
    :goto_2
    sub-double v10, v8, v6

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    .line 218
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double v24, v6, v8

    mul-double v14, v10, v24

    .line 219
    .local v14, "midPoint":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v10

    cmpg-double v10, v10, v18

    if-gez v10, :cond_9

    .line 220
    move-wide v6, v14

    goto :goto_2

    .line 173
    .end local v4    # "chebyshevApplies":Z
    .end local v5    # "toSolve":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v12    # "dx":D
    .end local v14    # "midPoint":D
    .end local v18    # "px":D
    .end local v22    # "x":D
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 180
    .restart local v4    # "chebyshevApplies":Z
    :cond_7
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 181
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v10

    cmpl-double v10, v10, p1

    if-ltz v10, :cond_4

    .line 182
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v10

    goto :goto_3

    .line 191
    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 192
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v10

    cmpg-double v10, v10, p1

    if-gez v10, :cond_5

    .line 193
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    goto :goto_4

    .line 222
    .restart local v5    # "toSolve":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local v12    # "dx":D
    .restart local v14    # "midPoint":D
    .restart local v18    # "px":D
    .restart local v22    # "x":D
    :cond_9
    move-wide v8, v14

    goto :goto_2

    .end local v12    # "dx":D
    .end local v14    # "midPoint":D
    .end local v18    # "px":D
    :cond_a
    move-wide/from16 v8, v22

    .line 229
    goto/16 :goto_0
.end method

.method public logDensity(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->density(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public probability(D)D
    .locals 2
    .param p1, "x"    # D

    .prologue
    .line 286
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public probability(DD)D
    .locals 5
    .param p1, "x0"    # D
    .param p3, "x1"    # D

    .prologue
    .line 111
    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    .line 112
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 115
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 246
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    .line 247
    return-void
.end method

.method public sample()D
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample(I)[D
    .locals 5
    .param p1, "sampleSize"    # I

    .prologue
    .line 268
    if-gtz p1, :cond_0

    .line 269
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 272
    :cond_0
    new-array v1, p1, [D

    .line 273
    .local v1, "out":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    return-object v1
.end method
