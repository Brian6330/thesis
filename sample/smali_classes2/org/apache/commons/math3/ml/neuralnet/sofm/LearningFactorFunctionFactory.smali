.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;
.super Ljava/lang/Object;
.source "LearningFactorFunctionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .locals 8
    .param p0, "initValue"    # D
    .param p2, "valueAtNumCall"    # D
    .param p4, "numCall"    # J

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 65
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;-><init>(DDJ)V

    return-object v1
.end method

.method public static quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .locals 8
    .param p0, "initValue"    # D
    .param p2, "slope"    # D
    .param p4, "numCall"    # J

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 106
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;-><init>(DDJ)V

    return-object v1
.end method
