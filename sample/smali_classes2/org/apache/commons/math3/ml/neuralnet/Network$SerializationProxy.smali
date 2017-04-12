.class Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final featureSize:I

.field private final neighbourIdList:[[J

.field private final neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

.field private final nextId:J


# direct methods
.method constructor <init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V
    .locals 1
    .param p1, "nextId"    # J
    .param p3, "featureSize"    # I
    .param p4, "neuronList"    # [Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p5, "neighbourIdList"    # [[J

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->nextId:J

    .line 457
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->featureSize:I

    .line 458
    iput-object p4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 459
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neighbourIdList:[[J

    .line 460
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 468
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->nextId:J

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->featureSize:I

    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neighbourIdList:[[J

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V

    return-object v1
.end method
