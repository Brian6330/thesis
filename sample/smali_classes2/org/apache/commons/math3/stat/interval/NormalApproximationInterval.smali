.class public Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;
.super Ljava/lang/Object;
.source "NormalApproximationInterval.java"

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
    .locals 17
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .prologue
    .line 35
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 36
    move/from16 v0, p2

    int-to-double v4, v0

    move/from16 v0, p1

    int-to-double v6, v0

    div-double v14, v4, v6

    .line 37
    .local v14, "mean":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v10, v4, v6

    .line 38
    .local v10, "alpha":D
    new-instance v2, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v2}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    .line 39
    .local v2, "normalDistribution":Lorg/apache/commons/math3/distribution/NormalDistribution;
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p1

    int-to-double v8, v0

    div-double/2addr v6, v8

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v14

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double v12, v4, v6

    .line 41
    .local v12, "difference":D
    new-instance v3, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v4, v14, v12

    add-double v6, v14, v12

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v3
.end method
