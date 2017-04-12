.class final Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;
.super Ljava/lang/Object;
.source "FeatureInitializerFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private arg:D

.field final synthetic val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field final synthetic val$inc:D

.field final synthetic val$init:D


# direct methods
.method constructor <init>(DLorg/apache/commons/math3/analysis/UnivariateFunction;D)V
    .locals 2

    .prologue
    .line 84
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->val$init:D

    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iput-wide p4, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->val$inc:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->val$init:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->arg:D

    return-void
.end method


# virtual methods
.method public value()D
    .locals 6

    .prologue
    .line 90
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->arg:D

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    .line 91
    .local v0, "result":D
    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->arg:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->val$inc:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$1;->arg:D

    .line 92
    return-wide v0
.end method
