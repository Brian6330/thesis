.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;
.super Ljava/lang/Object;
.source "QuasiSigmoidDecayFunction.java"


# instance fields
.field private final scale:D

.field private final sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;


# direct methods
.method public constructor <init>(DDJ)V
    .locals 25
    .param p1, "initValue"    # D
    .param p3, "slope"    # D
    .param p5, "numCall"    # J

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    .line 57
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 59
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-ltz v2, :cond_1

    .line 60
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v2, v3, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 62
    :cond_1
    const-wide/16 v2, 0x1

    cmp-long v2, p5, v2

    if-gtz v2, :cond_2

    .line 63
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 66
    :cond_2
    move-wide/from16 v4, p1

    .line 67
    .local v4, "k":D
    move-wide/from16 v0, p5

    long-to-double v6, v0

    .line 68
    .local v6, "m":D
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p3

    div-double v8, v2, p1

    .line 69
    .local v8, "b":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 70
    .local v20, "q":D
    const-wide/16 v16, 0x0

    .line 71
    .local v16, "a":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 72
    .local v18, "n":D
    new-instance v3, Lorg/apache/commons/math3/analysis/function/Logistic;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v15}, Lorg/apache/commons/math3/analysis/function/Logistic;-><init>(DDDDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(D)D

    move-result-wide v22

    .line 75
    .local v22, "y0":D
    div-double v2, v4, v22

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->scale:D

    .line 76
    return-void
.end method


# virtual methods
.method public value(J)D
    .locals 7
    .param p1, "numCall"    # J

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->scale:D

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    long-to-double v4, p1

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
