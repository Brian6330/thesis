.class final Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;
.super Ljava/lang/Object;
.source "NeighbourhoodSizeFunctionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory;->quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

.field final synthetic val$initValue:D

.field final synthetic val$numCall:J

.field final synthetic val$slope:D


# direct methods
.method constructor <init>(DDJ)V
    .locals 9

    .prologue
    .line 96
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->val$initValue:D

    iput-wide p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->val$slope:D

    iput-wide p5, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->val$numCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->val$initValue:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->val$slope:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->val$numCall:J

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;-><init>(DDJ)V

    iput-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

    return-void
.end method


# virtual methods
.method public value(J)I
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->value(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
