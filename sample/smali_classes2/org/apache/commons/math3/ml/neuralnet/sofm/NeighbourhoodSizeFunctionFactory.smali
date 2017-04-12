.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory;
.super Ljava/lang/Object;
.source "NeighbourhoodSizeFunctionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;
    .locals 8
    .param p0, "initValue"    # D
    .param p2, "valueAtNumCall"    # D
    .param p4, "numCall"    # J

    .prologue
    .line 60
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$1;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$1;-><init>(DDJ)V

    return-object v1
.end method

.method public static quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;
    .locals 8
    .param p0, "initValue"    # D
    .param p2, "slope"    # D
    .param p4, "numCall"    # J

    .prologue
    .line 96
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;-><init>(DDJ)V

    return-object v1
.end method
