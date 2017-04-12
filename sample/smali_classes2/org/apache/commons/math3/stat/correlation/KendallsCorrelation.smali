.class public Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;
.super Ljava/lang/Object;
.source "KendallsCorrelation.java"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .param p1, "data"    # [[D

    .prologue
    .line 91
    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 92
    return-void
.end method

.method private static sum(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 269
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    .line 122
    .local v4, "nVars":I
    new-instance v5, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v5, v4, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 123
    .local v5, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 124
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 125
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D

    move-result-wide v0

    .line 126
    .local v0, "corr":D
    invoke-interface {v5, v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 127
    invoke-interface {v5, v3, v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "corr":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v2, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "j":I
    :cond_1
    return-object v5
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "matrix"    # [[D

    .prologue
    .line 143
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 38
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 157
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v34, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v36, v0

    invoke-direct/range {v34 .. v36}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v34

    .line 161
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 162
    .local v16, "n":I
    add-int/lit8 v34, v16, -0x1

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v20

    .line 165
    .local v20, "numPairs":J
    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v22, v0

    .line 166
    .local v22, "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 167
    new-instance v34, Lorg/apache/commons/math3/util/Pair;

    aget-wide v36, p1, v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    aget-wide v36, p2, v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v34, v22, v12

    .line 166
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v34, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;-><init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 177
    const-wide/16 v28, 0x0

    .line 178
    .local v28, "tiedXPairs":J
    const-wide/16 v30, 0x0

    .line 179
    .local v30, "tiedXYPairs":J
    const-wide/16 v4, 0x1

    .line 180
    .local v4, "consecutiveXTies":J
    const-wide/16 v6, 0x1

    .line 181
    .local v6, "consecutiveXYTies":J
    const/16 v34, 0x0

    aget-object v25, v22, v34

    .line 182
    .local v25, "prev":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/4 v12, 0x1

    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 183
    aget-object v11, v22, v12

    .line 184
    .local v11, "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Double;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 185
    const-wide/16 v34, 0x1

    add-long v4, v4, v34

    .line 186
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Double;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 187
    const-wide/16 v34, 0x1

    add-long v6, v6, v34

    .line 198
    :goto_2
    move-object/from16 v25, v11

    .line 182
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 189
    :cond_2
    const-wide/16 v34, 0x1

    sub-long v34, v6, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v30, v30, v34

    .line 190
    const-wide/16 v6, 0x1

    goto :goto_2

    .line 193
    :cond_3
    const-wide/16 v34, 0x1

    sub-long v34, v4, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v28, v28, v34

    .line 194
    const-wide/16 v4, 0x1

    .line 195
    const-wide/16 v34, 0x1

    sub-long v34, v6, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v30, v30, v34

    .line 196
    const-wide/16 v6, 0x1

    goto :goto_2

    .line 200
    .end local v11    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_4
    const-wide/16 v34, 0x1

    sub-long v34, v4, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v28, v28, v34

    .line 201
    const-wide/16 v34, 0x1

    sub-long v34, v6, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v30, v30, v34

    .line 203
    const/16 v27, 0x0

    .line 205
    .local v27, "swaps":I
    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v23, v0

    .line 206
    .local v23, "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v26, 0x1

    .local v26, "segmentSize":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 207
    const/16 v17, 0x0

    .local v17, "offset":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 208
    move/from16 v12, v17

    .line 209
    add-int v34, v12, v26

    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 210
    .local v13, "iEnd":I
    move v14, v13

    .line 211
    .local v14, "j":I
    add-int v34, v14, v26

    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 213
    .local v15, "jEnd":I
    move/from16 v10, v17

    .line 214
    .local v10, "copyLocation":I
    :goto_5
    if-lt v12, v13, :cond_5

    if-ge v14, v15, :cond_9

    .line 215
    :cond_5
    if-ge v12, v13, :cond_8

    .line 216
    if-ge v14, v15, :cond_7

    .line 217
    aget-object v34, v22, v12

    invoke-virtual/range {v34 .. v34}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Double;

    aget-object v35, v22, v14

    invoke-virtual/range {v35 .. v35}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v34

    if-gtz v34, :cond_6

    .line 218
    aget-object v34, v22, v12

    aput-object v34, v23, v10

    .line 219
    add-int/lit8 v12, v12, 0x1

    .line 233
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 221
    :cond_6
    aget-object v34, v22, v14

    aput-object v34, v23, v10

    .line 222
    add-int/lit8 v14, v14, 0x1

    .line 223
    sub-int v34, v13, v12

    add-int v27, v27, v34

    goto :goto_6

    .line 226
    :cond_7
    aget-object v34, v22, v12

    aput-object v34, v23, v10

    .line 227
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 230
    :cond_8
    aget-object v34, v22, v14

    aput-object v34, v23, v10

    .line 231
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 207
    :cond_9
    mul-int/lit8 v34, v26, 0x2

    add-int v17, v17, v34

    goto :goto_4

    .line 236
    .end local v10    # "copyLocation":I
    .end local v13    # "iEnd":I
    .end local v14    # "j":I
    .end local v15    # "jEnd":I
    :cond_a
    move-object/from16 v24, v22

    .line 237
    .local v24, "pairsTemp":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v22, v23

    .line 238
    move-object/from16 v23, v24

    .line 206
    shl-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 241
    .end local v17    # "offset":I
    .end local v24    # "pairsTemp":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_b
    const-wide/16 v32, 0x0

    .line 242
    .local v32, "tiedYPairs":J
    const-wide/16 v8, 0x1

    .line 243
    .local v8, "consecutiveYTies":J
    const/16 v34, 0x0

    aget-object v25, v22, v34

    .line 244
    const/4 v12, 0x1

    :goto_7
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 245
    aget-object v11, v22, v12

    .line 246
    .restart local v11    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Double;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 247
    const-wide/16 v34, 0x1

    add-long v8, v8, v34

    .line 252
    :goto_8
    move-object/from16 v25, v11

    .line 244
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 249
    :cond_c
    const-wide/16 v34, 0x1

    sub-long v34, v8, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v32, v32, v34

    .line 250
    const-wide/16 v8, 0x1

    goto :goto_8

    .line 254
    .end local v11    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_d
    const-wide/16 v34, 0x1

    sub-long v34, v8, v34

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v34

    add-long v32, v32, v34

    .line 256
    sub-long v34, v20, v28

    sub-long v34, v34, v32

    add-long v34, v34, v30

    mul-int/lit8 v36, v27, 0x2

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    sub-long v2, v34, v36

    .line 257
    .local v2, "concordantMinusDiscordant":J
    sub-long v34, v20, v28

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    sub-long v36, v20, v32

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v18, v34, v36

    .line 258
    .local v18, "nonTiedPairsMultiplied":D
    long-to-double v0, v2

    move-wide/from16 v34, v0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    div-double v34, v34, v36

    return-wide v34
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
