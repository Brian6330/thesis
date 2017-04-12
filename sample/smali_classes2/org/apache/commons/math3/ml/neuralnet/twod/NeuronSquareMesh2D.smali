.class public Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
.super Ljava/lang/Object;
.source "NeuronSquareMesh2D.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;,
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final identifiers:[[J

.field private final neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field private final network:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field private final numberOfColumns:I

.field private final numberOfRows:I

.field private final wrapColumns:Z

.field private final wrapRows:Z


# direct methods
.method public constructor <init>(IZIZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)V
    .locals 9
    .param p1, "numRows"    # I
    .param p2, "wrapRowDim"    # Z
    .param p3, "numCols"    # I
    .param p4, "wrapColDim"    # Z
    .param p5, "neighbourhoodType"    # Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .param p6, "featureInit"    # [Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-ge p1, v7, :cond_0

    .line 143
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 145
    :cond_0
    if-ge p3, v7, :cond_1

    .line 146
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 149
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 150
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 151
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 152
    iput-boolean p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 153
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 154
    iget v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iput-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 156
    array-length v1, p6

    .line 157
    .local v1, "fLen":I
    new-instance v5, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 160
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_4

    .line 161
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 162
    new-array v2, v1, [D

    .line 163
    .local v2, "features":[D
    const/4 v0, 0x0

    .local v0, "fIndex":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 164
    aget-object v5, p6, v0

    invoke-interface {v5}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;->value()D

    move-result-wide v6

    aput-wide v6, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "fIndex":I
    .end local v2    # "features":[D
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v4    # "j":I
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    .line 172
    return-void
.end method

.method constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V
    .locals 7
    .param p1, "wrapRowDim"    # Z
    .param p2, "wrapColDim"    # Z
    .param p3, "neighbourhoodType"    # Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .param p4, "featuresList"    # [[[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    array-length v3, p4

    iput v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 83
    aget-object v3, p4, v4

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 85
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v3, v5, :cond_0

    .line 86
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 88
    :cond_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v3, v5, :cond_1

    .line 89
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 92
    :cond_1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 93
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 94
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 96
    aget-object v3, p4, v4

    aget-object v3, v3, v4

    array-length v0, v3

    .line 97
    .local v0, "fLen":I
    new-instance v3, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 98
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iput-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v1, v3, :cond_3

    .line 102
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v2, v3, :cond_2

    .line 103
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    aget-object v5, p4, v1

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "j":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    .line 109
    return-void
.end method

.method private createLinks()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 233
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v9, "linkEnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/lit8 v6, v10, -0x1

    .line 235
    .local v6, "iLast":I
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/lit8 v8, v10, -0x1

    .line 236
    .local v8, "jLast":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v4, v10, :cond_1a

    .line 237
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v7, v10, :cond_19

    .line 238
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 240
    sget-object v10, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood:[I

    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 349
    new-instance v10, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v10}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v10

    .line 244
    :pswitch_0
    if-lez v4, :cond_1

    .line 245
    if-lez v7, :cond_0

    .line 246
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    if-ge v7, v8, :cond_1

    .line 249
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    if-ge v4, v6, :cond_3

    .line 253
    if-lez v7, :cond_2

    .line 254
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2
    if-ge v7, v8, :cond_3

    .line 257
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_3
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v10, :cond_5

    .line 261
    if-nez v4, :cond_f

    .line 262
    if-lez v7, :cond_4

    .line 263
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_4
    if-ge v7, v8, :cond_5

    .line 266
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v10, :cond_7

    .line 278
    if-nez v7, :cond_11

    .line 279
    if-lez v4, :cond_6

    .line 280
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_6
    if-ge v4, v6, :cond_7

    .line 283
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_7
    :goto_3
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v10, :cond_8

    .line 296
    if-nez v4, :cond_13

    if-nez v7, :cond_13

    .line 298
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_8
    :goto_4
    :pswitch_1
    if-lez v4, :cond_9

    .line 319
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_9
    if-ge v4, v6, :cond_a

    .line 322
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_a
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v10, :cond_b

    .line 325
    if-nez v4, :cond_16

    .line 326
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_b
    :goto_5
    if-lez v7, :cond_c

    .line 334
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_c
    if-ge v7, v8, :cond_d

    .line 337
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_d
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v10, :cond_e

    .line 340
    if-nez v7, :cond_17

    .line 341
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_e
    :goto_6
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v11, v11, v4

    aget-wide v12, v11, v7

    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    .line 353
    .local v0, "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 354
    .local v2, "b":J
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v10, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v1

    .line 357
    .local v1, "bNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    goto :goto_7

    .line 268
    .end local v0    # "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v1    # "bNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v2    # "b":J
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_f
    if-ne v4, v6, :cond_5

    .line 269
    if-lez v7, :cond_10

    .line 270
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_10
    if-ge v7, v8, :cond_5

    .line 273
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 285
    :cond_11
    if-ne v7, v8, :cond_7

    .line 286
    if-lez v4, :cond_12

    .line 287
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_12
    if-ge v4, v6, :cond_7

    .line 290
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 299
    :cond_13
    if-nez v4, :cond_14

    if-ne v7, v8, :cond_14

    .line 301
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 302
    :cond_14
    if-ne v4, v6, :cond_15

    if-nez v7, :cond_15

    .line 304
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 305
    :cond_15
    if-ne v4, v6, :cond_8

    if-ne v7, v8, :cond_8

    .line 307
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 327
    :cond_16
    if-ne v4, v6, :cond_b

    .line 328
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 342
    :cond_17
    if-ne v7, v8, :cond_e

    .line 343
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 237
    .restart local v0    # "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 236
    .end local v0    # "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 361
    .end local v7    # "j":I
    :cond_1a
    return-void

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 378
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, [D

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    .line 379
    .local v0, "featuresList":[[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v1, v3, :cond_1

    .line 380
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v2, v3, :cond_0

    .line 381
    aget-object v3, v0, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v4

    aput-object v4, v3, v2

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "j":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;

    iget-boolean v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    iget-boolean v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V

    return-object v3
.end method


# virtual methods
.method public getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    return-object v0
.end method

.method public getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v2, 0x0

    .line 216
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-lt p1, v0, :cond_1

    .line 218
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 220
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-lt p2, v0, :cond_3

    .line 222
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 225
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v1, v1, p1

    aget-wide v2, v1, p2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    return v0
.end method
