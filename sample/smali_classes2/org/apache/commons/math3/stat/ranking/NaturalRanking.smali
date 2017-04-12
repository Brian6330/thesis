.class public Lorg/apache/commons/math3/stat/ranking/NaturalRanking;
.super Ljava/lang/Object;
.source "NaturalRanking.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;,
        Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# instance fields
.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private final tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FAILED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 76
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 93
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "randomGenerator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 143
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 144
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 117
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "randomGenerator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 159
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 160
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 130
    iput-object p2, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 131
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 105
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 107
    return-void
.end method

.method private containsNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Z
    .locals 4
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 312
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    .line 316
    :goto_1
    return v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private fill([DLjava/util/List;D)V
    .locals 3
    .param p1, "data"    # [D
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-wide p3, p1, v1

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method private getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;
    .locals 4
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 414
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_1
    return-object v1
.end method

.method private recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V
    .locals 4
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .param p2, "value"    # D

    .prologue
    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 297
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v1, p1, v0

    .line 296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    return-void
.end method

.method private removeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .locals 10
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .prologue
    const/4 v9, 0x0

    .line 266
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->containsNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 286
    .end local p1    # "ranks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    :goto_0
    return-object p1

    .line 269
    .restart local p1    # "ranks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    :cond_0
    array-length v5, p1

    new-array v3, v5, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 270
    .local v3, "outRanks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    const/4 v1, 0x0

    .line 271
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 272
    aget-object v5, p1, v0

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    add-int/lit8 v2, v0, 0x1

    .local v2, "k":I
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 275
    new-instance v5, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v6

    aget-object v8, p1, v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v5, p1, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    .end local v2    # "k":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v6, p1, v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v6

    aget-object v8, p1, v0

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v5, v3, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_3
    new-array v4, v1, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 285
    .local v4, "returnRanks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    invoke-static {v3, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    .line 286
    goto :goto_0
.end method

.method private resolveTie([DLjava/util/List;)V
    .locals 18
    .param p1, "ranks"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-wide v4, p1, v12

    .line 339
    .local v4, "c":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    .line 341
    .local v11, "length":I
    sget-object v12, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 370
    new-instance v12, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v12}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v12

    .line 343
    :pswitch_0
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v4

    int-to-double v14, v11

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v13}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_1
    int-to-double v12, v11

    add-double/2addr v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v13}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    goto :goto_0

    .line 349
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    goto :goto_0

    .line 352
    :pswitch_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 353
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v6

    .line 354
    .local v6, "f":J
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 356
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    int-to-long v14, v11

    add-long/2addr v14, v6

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-virtual {v13, v6, v7, v14, v15}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(JJ)J

    move-result-wide v14

    long-to-double v14, v14

    aput-wide v14, p1, v12

    goto :goto_1

    .line 362
    .end local v6    # "f":J
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :pswitch_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 363
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v6

    .line 364
    .restart local v6    # "f":J
    const/4 v8, 0x0

    .line 365
    .local v8, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 366
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    int-to-long v14, v8

    add-long/2addr v14, v6

    long-to-double v14, v14

    aput-wide v14, p1, v12

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private restoreNaNs([DLjava/util/List;)V
    .locals 4
    .param p1, "ranks"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, "nanPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 403
    :cond_0
    return-void

    .line 398
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 399
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    aput-wide v2, p1, v1

    goto :goto_0
.end method


# virtual methods
.method public getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method

.method public getTiesStrategy()Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-object v0
.end method

.method public rank([D)[D
    .locals 12
    .param p1, "data"    # [D

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    array-length v6, p1

    new-array v4, v6, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 195
    .local v4, "ranks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 196
    new-instance v6, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-wide v8, p1, v0

    invoke-direct {v6, v8, v9, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v6, v4, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "nanPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v6, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy:[I

    iget-object v7, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v7}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 221
    new-instance v6, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v6}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v6

    .line 203
    :pswitch_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p0, v4, v6, v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V

    .line 225
    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 229
    array-length v6, v4

    new-array v2, v6, [D

    .line 230
    .local v2, "out":[D
    const/4 v3, 0x1

    .line 231
    .local v3, "pos":I
    aget-object v6, v4, v10

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    int-to-double v8, v3

    aput-wide v8, v2, v6

    .line 232
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v5, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v6, v4, v10

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v0, 0x1

    :goto_2
    array-length v6, v4

    if-ge v0, v6, :cond_4

    .line 235
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v6

    add-int/lit8 v8, v0, -0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-lez v6, :cond_3

    .line 237
    add-int/lit8 v3, v0, 0x1

    .line 238
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v11, :cond_2

    .line 239
    invoke-direct {p0, v2, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->resolveTie([DLjava/util/List;)V

    .line 241
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .restart local v5    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_3
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    int-to-double v8, v3

    aput-wide v8, v2, v6

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    .end local v2    # "out":[D
    .end local v3    # "pos":I
    .end local v5    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_1
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {p0, v4, v6, v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V

    goto :goto_1

    .line 209
    :pswitch_2
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->removeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    move-result-object v4

    .line 210
    goto :goto_1

    .line 212
    :pswitch_3
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;

    move-result-object v1

    .line 213
    goto :goto_1

    .line 215
    :pswitch_4
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 217
    new-instance v6, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v6}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v6

    .line 245
    .restart local v2    # "out":[D
    .restart local v3    # "pos":I
    .restart local v5    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 249
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v11, :cond_5

    .line 250
    invoke-direct {p0, v2, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->resolveTie([DLjava/util/List;)V

    .line 252
    :cond_5
    iget-object v6, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v7, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v6, v7, :cond_6

    .line 253
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->restoreNaNs([DLjava/util/List;)V

    .line 255
    :cond_6
    return-object v2

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
