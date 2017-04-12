.class Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;
.super Ljava/lang/Object;
.source "NeuronSquareMesh2D.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13329b2L


# instance fields
.field private final featuresList:[[[D

.field private final neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field private final wrapColumns:Z

.field private final wrapRows:Z


# direct methods
.method constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V
    .locals 0
    .param p1, "wrapRows"    # Z
    .param p2, "wrapColumns"    # Z
    .param p3, "neighbourhood"    # Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .param p4, "featuresList"    # [[[D

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->wrapRows:Z

    .line 418
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->wrapColumns:Z

    .line 419
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 420
    iput-object p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->featuresList:[[[D

    .line 421
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 429
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    iget-boolean v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->wrapRows:Z

    iget-boolean v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->wrapColumns:Z

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;->featuresList:[[[D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V

    return-object v0
.end method
