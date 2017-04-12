.class Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;
.super Ljava/lang/Object;
.source "NeuronString.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13329b2L


# instance fields
.field private final featuresList:[[D

.field private final wrap:Z


# direct methods
.method constructor <init>(Z[[D)V
    .locals 0
    .param p1, "wrap"    # Z
    .param p2, "featuresList"    # [[D

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;->wrap:Z

    .line 225
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;->featuresList:[[D

    .line 226
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;

    iget-boolean v1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;->wrap:Z

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;->featuresList:[[D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;-><init>(Z[[D)V

    return-object v0
.end method
