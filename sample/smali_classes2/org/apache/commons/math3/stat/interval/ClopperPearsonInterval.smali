.class public Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;
.super Ljava/lang/Object;
.source "ClopperPearsonInterval.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 23
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .prologue
    .line 34
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .local v4, "lowerBound":D
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "upperBound":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, p3

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v10, v8, v18

    .line 39
    .local v10, "alpha":D
    new-instance v2, Lorg/apache/commons/math3/distribution/FDistribution;

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    int-to-double v8, v3

    mul-int/lit8 v3, p2, 0x2

    int-to-double v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v2, v8, v9, v0, v1}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DD)V

    .line 41
    .local v2, "distributionLowerBound":Lorg/apache/commons/math3/distribution/FDistribution;
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/math3/distribution/FDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v14

    .line 42
    .local v14, "fValueLowerBound":D
    if-lez p2, :cond_0

    .line 43
    move/from16 v0, p2

    int-to-double v8, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    int-to-double v0, v3

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    add-double v18, v18, v20

    div-double v4, v8, v18

    .line 47
    :cond_0
    new-instance v12, Lorg/apache/commons/math3/distribution/FDistribution;

    add-int/lit8 v3, p2, 0x1

    mul-int/lit8 v3, v3, 0x2

    int-to-double v8, v3

    sub-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x2

    int-to-double v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v12, v8, v9, v0, v1}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DD)V

    .line 49
    .local v12, "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    invoke-virtual {v12, v8, v9}, Lorg/apache/commons/math3/distribution/FDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v16

    .line 50
    .local v16, "fValueUpperBound":D
    if-lez p2, :cond_1

    .line 51
    add-int/lit8 v3, p2, 0x1

    int-to-double v8, v3

    mul-double v8, v8, v16

    sub-int v3, p1, p2

    int-to-double v0, v3

    move-wide/from16 v18, v0

    add-int/lit8 v3, p2, 0x1

    int-to-double v0, v3

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    add-double v18, v18, v20

    div-double v6, v8, v18

    .line 55
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v3
.end method
