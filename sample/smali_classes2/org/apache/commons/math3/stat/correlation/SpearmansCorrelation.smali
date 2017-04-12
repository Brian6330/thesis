.class public Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;
.super Ljava/lang/Object;
.source "SpearmansCorrelation.java"


# instance fields
.field private final data:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

.field private final rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "dataMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 2
    .param p1, "dataMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "rankingAlgorithm"    # Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 1
    .param p1, "rankingAlgorithm"    # Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 75
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    .line 76
    return-void
.end method

.method private getNaNPositions([D)Ljava/util/List;
    .locals 4
    .param p1, "input"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 233
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    return-object v1
.end method

.method private rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, "transformed":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v3, v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    check-cast v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v3, v4, :cond_1

    .line 198
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v1, "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 200
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    .end local v2    # "transformed":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 207
    .restart local v2    # "transformed":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 208
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "i":I
    .end local v1    # "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 214
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 217
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 218
    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    :cond_3
    return-object v2
.end method

.method private removeValues([DLjava/util/Set;)[D
    .locals 6
    .param p1, "input"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "indices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    .end local p1    # "input":[D
    :goto_0
    return-object p1

    .line 251
    .restart local p1    # "input":[D
    :cond_0
    array-length v4, p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v3, v4, [D

    .line 252
    .local v3, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-wide v4, p1, v0

    aput-wide v4, v3, v1

    move v1, v2

    .line 252
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 257
    goto :goto_0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 139
    .local v0, "matrixCopy":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v1, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    return-object v1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "matrix"    # [[D

    .prologue
    .line 151
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 9
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D

    .prologue
    const/4 v8, 0x2

    .line 164
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    .line 165
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, p1

    array-length v5, p2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 166
    :cond_0
    array-length v3, p1

    if-ge v3, v8, :cond_1

    .line 167
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 170
    :cond_1
    move-object v1, p1

    .line 171
    .local v1, "x":[D
    move-object v2, p2

    .line 172
    .local v2, "y":[D
    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v3, v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    if-eqz v3, :cond_2

    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    check-cast v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v3

    if-ne v4, v3, :cond_2

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v0, "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v1

    .line 180
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v2

    .line 182
    .end local v0    # "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    iget-object v4, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide v4

    return-wide v4
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getRankCorrelation()Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-object v0
.end method
