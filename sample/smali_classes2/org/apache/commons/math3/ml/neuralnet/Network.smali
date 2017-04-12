.class public Lorg/apache/commons/math3/ml/neuralnet/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;,
        Lorg/apache/commons/math3/ml/neuralnet/Network$NeuronIdentifierComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final featureSize:I

.field private final linkMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final neuronMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation
.end field

.field private final nextId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "initialIdentifier"    # J
    .param p3, "featureSize"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 134
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    .line 135
    return-void
.end method

.method constructor <init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V
    .locals 17
    .param p1, "nextId"    # J
    .param p3, "featureSize"    # I
    .param p4, "neuronList"    # [Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p5, "neighbourIdList"    # [[J

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    move-object/from16 v0, p4

    array-length v13, v0

    .line 97
    .local v13, "numNeurons":I
    move-object/from16 v0, p5

    array-length v14, v0

    if-eq v13, v14, :cond_0

    .line 98
    new-instance v14, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v14}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v14

    .line 101
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_2

    .line 102
    aget-object v12, p4, v7

    .line 103
    .local v12, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v10

    .line 104
    .local v10, "id":J
    cmp-long v14, v10, p1

    if-ltz v14, :cond_1

    .line 105
    new-instance v14, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v14}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v14

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 111
    .end local v10    # "id":J
    .end local v12    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_5

    .line 112
    aget-object v14, p4, v7

    invoke-virtual {v14}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    .line 113
    .local v2, "aId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 114
    .local v4, "aLinks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    aget-object v5, p5, v7

    .local v5, "arr$":[J
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_4

    aget-wide v14, v5, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 115
    .local v6, "bId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 116
    new-instance v14, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v14}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v14

    .line 118
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLinkToLinkSet(Ljava/util/Set;J)V

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 111
    .end local v6    # "bId":Ljava/lang/Long;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "aId":J
    .end local v4    # "aLinks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v5    # "arr$":[J
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_5
    new-instance v14, Ljava/util/concurrent/atomic/AtomicLong;

    move-wide/from16 v0, p1

    invoke-direct {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 123
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    .line 124
    return-void
.end method

.method private addLinkToLinkSet(Ljava/util/Set;J)V
    .locals 2
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "linkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method private createNextId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private deleteLinkFromLinkSet(Ljava/util/Set;J)V
    .locals 2
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "linkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 12

    .prologue
    .line 410
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 411
    .local v5, "neuronList":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    array-length v1, v5

    new-array v6, v1, [[J

    .line 413
    .local v6, "neighbourIdList":[[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, v5

    if-ge v7, v1, :cond_1

    .line 414
    aget-object v1, v5, v7

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v10

    .line 415
    .local v10, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v11, v1, [J

    .line 416
    .local v11, "neighboursId":[J
    const/4 v0, 0x0

    .line 417
    .local v0, "count":I
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 418
    .local v9, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v9}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    aput-wide v2, v11, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v9    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    aput-object v11, v6, v7

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "count":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v11    # "neighboursId":[J
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;-><init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V

    return-object v1
.end method


# virtual methods
.method public addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "b"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .prologue
    .line 224
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v0

    .line 225
    .local v0, "aId":J
    invoke-virtual {p2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    .line 228
    .local v2, "bId":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-eq p1, v4, :cond_0

    .line 229
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-eq p2, v4, :cond_1

    .line 232
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLinkToLinkSet(Ljava/util/Set;J)V

    .line 237
    return-void
.end method

.method public createNeuron([D)J
    .locals 5
    .param p1, "features"    # [D

    .prologue
    .line 171
    array-length v2, p1

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    if-eq v2, v3, :cond_0

    .line 172
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 175
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNextId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 176
    .local v0, "id":J
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-direct {v4, v0, v1, p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-wide v0
.end method

.method public deleteLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "b"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .prologue
    .line 262
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v0

    .line 263
    .local v0, "aId":J
    invoke-virtual {p2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    .line 266
    .local v2, "bId":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-eq p1, v4, :cond_0

    .line 267
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-eq p2, v4, :cond_1

    .line 270
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->deleteLinkFromLinkSet(Ljava/util/Set;J)V

    .line 275
    return-void
.end method

.method public deleteNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V
    .locals 6
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v2

    .line 194
    .local v2, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 195
    .local v1, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->deleteLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    goto :goto_0

    .line 199
    .end local v1    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public getFeaturesSize()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    return v0
.end method

.method public getNeighbours(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .local p2, "exclude":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v2, "idList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 334
    .local v3, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 336
    .end local v3    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    if-eqz p2, :cond_1

    .line 337
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 338
    .restart local v3    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    .end local v3    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v4, "neuronList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 344
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 347
    .end local v1    # "id":Ljava/lang/Long;
    :cond_2
    return-object v4
.end method

.method public getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;
    .locals 1
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 8
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "exclude":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 372
    .local v2, "idList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 373
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 374
    .local v3, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v4, "neuronList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 380
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-object v4
.end method

.method public getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 299
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 300
    .local v0, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    if-nez v0, :cond_0

    .line 301
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    return-object v0
.end method

.method public getNeurons(Ljava/util/Comparator;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "neurons":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
