.class public Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;
.super Ljava/lang/Object;
.source "FeatureInitializerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 7
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "init"    # D
    .param p3, "inc"    # D

    .prologue
    .line 84
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;

    move-wide v1, p1

    move-object v3, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;-><init>(DLorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object v0
.end method

.method public static randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 1
    .param p0, "random"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p1, "orig"    # Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    .prologue
    .line 107
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;-><init>(Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;Lorg/apache/commons/math3/distribution/RealDistribution;)V

    return-object v0
.end method

.method public static uniform(DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 4
    .param p0, "min"    # D
    .param p2, "max"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(DD)V

    new-instance v1, Lorg/apache/commons/math3/analysis/function/Constant;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    invoke-static {v1, v2, v3, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object v0

    return-object v0
.end method

.method public static uniform(Lorg/apache/commons/math3/random/RandomGenerator;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 9
    .param p0, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 51
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    new-instance v1, Lorg/apache/commons/math3/analysis/function/Constant;

    invoke-direct {v1, v6, v7}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    invoke-static {v1, v6, v7, v6, v7}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object v0

    return-object v0
.end method
