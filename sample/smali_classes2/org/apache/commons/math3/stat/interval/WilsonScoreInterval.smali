.class public Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;
.super Ljava/lang/Object;
.source "WilsonScoreInterval.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 31
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .prologue
    .line 34
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 35
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, p3

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v10, v8, v24

    .line 36
    .local v10, "alpha":D
    new-instance v2, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v2}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    .line 37
    .local v2, "normalDistribution":Lorg/apache/commons/math3/distribution/NormalDistribution;
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v20

    .line 38
    .local v20, "z":D
    const/4 v3, 0x2

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v22

    .line 39
    .local v22, "zSquared":D
    move/from16 v0, p2

    int-to-double v8, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v16, v8, v24

    .line 41
    .local v16, "mean":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    mul-double v26, v26, v22

    add-double v24, v24, v26

    div-double v14, v8, v24

    .line 42
    .local v14, "factor":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-int/lit8 v3, p1, 0x2

    int-to-double v0, v3

    move-wide/from16 v24, v0

    div-double v8, v8, v24

    mul-double v8, v8, v22

    add-double v18, v16, v8

    .line 43
    .local v18, "modifiedSuccessRatio":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v8, v8, v24

    mul-double v8, v8, v16

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v24, v24, v16

    mul-double v8, v8, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const/4 v3, 0x2

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v28

    mul-double v26, v26, v28

    div-double v24, v24, v26

    mul-double v24, v24, v22

    add-double v8, v8, v24

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double v12, v20, v8

    .line 47
    .local v12, "difference":D
    sub-double v8, v18, v12

    mul-double v4, v14, v8

    .line 48
    .local v4, "lowerBound":D
    add-double v8, v18, v12

    mul-double v6, v14, v8

    .line 49
    .local v6, "upperBound":D
    new-instance v3, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v3
.end method
