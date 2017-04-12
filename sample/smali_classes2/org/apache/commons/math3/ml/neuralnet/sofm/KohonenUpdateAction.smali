.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;
.super Ljava/lang/Object;
.source "KohonenUpdateAction.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/UpdateAction;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

.field private final neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

.field private final numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;)V
    .locals 4
    .param p1, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p2, "learningFactor"    # Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .param p3, "neighbourhoodSize"    # Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 87
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    .line 88
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    .line 89
    return-void
.end method

.method private computeFeatures([D[DD)[D
    .locals 3
    .param p1, "current"    # [D
    .param p2, "sample"    # [D
    .param p3, "learningRate"    # D

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 208
    .local v0, "c":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, p2, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 210
    .local v1, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    return-object v2
.end method

.method private findAndUpdateBestNeuron(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 5
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p2, "features"    # [D
    .param p3, "learningRate"    # D

    .prologue
    .line 180
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {p2, p1, v3}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    .line 182
    .local v0, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v1

    .line 183
    .local v1, "expect":[D
    invoke-direct {p0, v1, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->computeFeatures([D[DD)[D

    move-result-object v2

    .line 186
    .local v2, "update":[D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->compareAndSetFeatures([D[D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    return-object v0
.end method

.method private updateNeighbouringNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V
    .locals 3
    .param p1, "n"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "features"    # [D
    .param p3, "learningRate"    # D

    .prologue
    .line 157
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v0

    .line 158
    .local v0, "expect":[D
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->computeFeatures([D[DD)[D

    move-result-object v1

    .line 161
    .local v1, "update":[D
    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->compareAndSetFeatures([D[D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    return-void
.end method


# virtual methods
.method public getNumberOfCalls()J
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Lorg/apache/commons/math3/ml/neuralnet/Network;[D)V
    .locals 22
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p2, "features"    # [D

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v18

    .line 97
    .local v18, "numCalls":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    move-wide/from16 v0, v18

    invoke-interface {v8, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;->value(J)D

    move-result-wide v6

    .line 98
    .local v6, "currentLearning":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->findAndUpdateBestNeuron(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    .line 102
    .local v4, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    move-wide/from16 v0, v18

    invoke-interface {v8, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;->value(J)I

    move-result v12

    .line 105
    .local v12, "currentNeighbourhood":I
    new-instance v5, Lorg/apache/commons/math3/analysis/function/Gaussian;

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v12

    move-wide/from16 v20, v0

    div-double v10, v10, v20

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    .line 110
    .local v5, "neighbourhoodDecay":Lorg/apache/commons/math3/analysis/function/Gaussian;
    if-lez v12, :cond_2

    .line 112
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v16, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v13, "exclude":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    const/16 v17, 0x1

    .line 121
    .local v17, "radius":I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v16

    .line 124
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 125
    .local v15, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    move/from16 v0, v17

    int-to-double v8, v0

    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1, v8, v9}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->updateNeighbouringNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V

    goto :goto_0

    .line 130
    .end local v15    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 131
    add-int/lit8 v17, v17, 0x1

    .line 132
    move/from16 v0, v17

    if-le v0, v12, :cond_0

    .line 134
    .end local v13    # "exclude":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v17    # "radius":I
    :cond_2
    return-void
.end method
