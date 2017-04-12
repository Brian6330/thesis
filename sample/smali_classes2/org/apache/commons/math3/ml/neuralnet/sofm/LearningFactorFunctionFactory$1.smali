.class final Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;
.super Ljava/lang/Object;
.source "LearningFactorFunctionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;->exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

.field final synthetic val$initValue:D

.field final synthetic val$numCall:J

.field final synthetic val$valueAtNumCall:D


# direct methods
.method constructor <init>(DDJ)V
    .locals 9

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$initValue:D

    iput-wide p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$valueAtNumCall:D

    iput-wide p5, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$numCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$initValue:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$valueAtNumCall:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$numCall:J

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;-><init>(DDJ)V

    iput-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    return-void
.end method


# virtual methods
.method public value(J)D
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->value(J)D

    move-result-wide v0

    return-wide v0
.end method
