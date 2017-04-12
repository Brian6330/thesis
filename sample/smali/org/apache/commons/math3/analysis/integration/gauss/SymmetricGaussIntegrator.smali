.class public Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.source "SymmetricGaussIntegrator.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "pointsAndWeights":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[D[D>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;-><init>([D[D)V

    .line 62
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 0
    .param p1, "points"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    .line 47
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 28
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getNumberOfPoints()I

    move-result v14

    .line 71
    .local v14, "ruleLength":I
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 72
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getWeight(I)D

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v26

    mul-double v16, v24, v26

    .line 101
    :cond_0
    :goto_0
    return-wide v16

    .line 75
    :cond_1
    div-int/lit8 v11, v14, 0x2

    .line 76
    .local v11, "iMax":I
    const-wide/16 v16, 0x0

    .line 77
    .local v16, "s":D
    const-wide/16 v4, 0x0

    .line 78
    .local v4, "c":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 79
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getPoint(I)D

    move-result-wide v12

    .line 80
    .local v12, "p":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getWeight(I)D

    move-result-wide v20

    .line 82
    .local v20, "w":D
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    .line 83
    .local v6, "f1":D
    neg-double v0, v12

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v8

    .line 85
    .local v8, "f2":D
    add-double v24, v6, v8

    mul-double v24, v24, v20

    sub-double v22, v24, v4

    .line 86
    .local v22, "y":D
    add-double v18, v16, v22

    .line 88
    .local v18, "t":D
    sub-double v24, v18, v16

    sub-double v4, v24, v22

    .line 89
    move-wide/from16 v16, v18

    .line 78
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 92
    .end local v6    # "f1":D
    .end local v8    # "f2":D
    .end local v12    # "p":D
    .end local v18    # "t":D
    .end local v20    # "w":D
    .end local v22    # "y":D
    :cond_2
    rem-int/lit8 v15, v14, 0x2

    if-eqz v15, :cond_0

    .line 93
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getWeight(I)D

    move-result-wide v20

    .line 95
    .restart local v20    # "w":D
    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v24

    mul-double v24, v24, v20

    sub-double v22, v24, v4

    .line 96
    .restart local v22    # "y":D
    add-double v18, v16, v22

    .line 98
    .restart local v18    # "t":D
    move-wide/from16 v16, v18

    goto :goto_0
.end method
