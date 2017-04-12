.class final Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;
.super Ljava/lang/Object;
.source "FeatureInitializerFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$orig:Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

.field final synthetic val$random:Lorg/apache/commons/math3/distribution/RealDistribution;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;Lorg/apache/commons/math3/distribution/RealDistribution;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;->val$orig:Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;->val$random:Lorg/apache/commons/math3/distribution/RealDistribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value()D
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;->val$orig:Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    invoke-interface {v0}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;->value()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$2;->val$random:Lorg/apache/commons/math3/distribution/RealDistribution;

    invoke-interface {v2}, Lorg/apache/commons/math3/distribution/RealDistribution;->sample()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method
