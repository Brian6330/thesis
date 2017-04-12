.class Lorg/apache/commons/math3/linear/HessenbergTransformer;
.super Ljava/lang/Object;
.source "HessenbergTransformer.java"


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final ort:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1

    .line 65
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 66
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    .line 67
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    .line 68
    iput-object v2, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 69
    iput-object v2, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 70
    iput-object v2, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->transform()V

    .line 74
    return-void
.end method

.method private transform()V
    .locals 20

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v12, v13

    .line 181
    .local v12, "n":I
    add-int/lit8 v8, v12, -0x1

    .line 183
    .local v8, "high":I
    const/4 v11, 0x1

    .local v11, "m":I
    :goto_0
    add-int/lit8 v13, v8, -0x1

    if-gt v11, v13, :cond_a

    .line 185
    const-wide/16 v14, 0x0

    .line 186
    .local v14, "scale":D
    move v9, v11

    .local v9, "i":I
    :goto_1
    if-gt v9, v8, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v9

    add-int/lit8 v16, v11, -0x1

    aget-wide v16, v13, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    .line 186
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 190
    :cond_0
    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v13

    if-nez v13, :cond_9

    .line 192
    const-wide/16 v6, 0x0

    .line 193
    .local v6, "h":D
    move v9, v8

    :goto_2
    if-lt v9, v11, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v9

    add-int/lit8 v17, v11, -0x1

    aget-wide v16, v16, v17

    div-double v16, v16, v14

    aput-wide v16, v13, v9

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v13, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v18, v13, v9

    mul-double v16, v16, v18

    add-double v6, v6, v16

    .line 193
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v13, v11

    const-wide/16 v18, 0x0

    cmpl-double v13, v16, v18

    if-lez v13, :cond_2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v4, v0

    .line 199
    .local v4, "g":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v13, v11

    mul-double v16, v16, v4

    sub-double v6, v6, v16

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v13, v11

    sub-double v16, v16, v4

    aput-wide v16, v13, v11

    .line 205
    move v10, v11

    .local v10, "j":I
    :goto_4
    if-ge v10, v12, :cond_5

    .line 206
    const-wide/16 v2, 0x0

    .line 207
    .local v2, "f":D
    move v9, v8

    :goto_5
    if-lt v9, v11, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v13, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v9

    aget-wide v18, v13, v10

    mul-double v16, v16, v18

    add-double v2, v2, v16

    .line 207
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 197
    .end local v2    # "f":D
    .end local v4    # "g":D
    .end local v10    # "j":I
    :cond_2
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    goto :goto_3

    .line 210
    .restart local v2    # "f":D
    .restart local v4    # "g":D
    .restart local v10    # "j":I
    :cond_3
    div-double/2addr v2, v6

    .line 211
    move v9, v11

    :goto_6
    if-gt v9, v8, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v9

    aget-wide v16, v13, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v9

    mul-double v18, v18, v2

    sub-double v16, v16, v18

    aput-wide v16, v13, v10

    .line 211
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 205
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 216
    .end local v2    # "f":D
    :cond_5
    const/4 v9, 0x0

    :goto_7
    if-gt v9, v8, :cond_8

    .line 217
    const-wide/16 v2, 0x0

    .line 218
    .restart local v2    # "f":D
    move v10, v8

    :goto_8
    if-lt v10, v11, :cond_6

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v13, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v9

    aget-wide v18, v13, v10

    mul-double v16, v16, v18

    add-double v2, v2, v16

    .line 218
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    .line 221
    :cond_6
    div-double/2addr v2, v6

    .line 222
    move v10, v11

    :goto_9
    if-gt v10, v8, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v9

    aget-wide v16, v13, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v10

    mul-double v18, v18, v2

    sub-double v16, v16, v18

    aput-wide v16, v13, v10

    .line 222
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 216
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 227
    .end local v2    # "f":D
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v11

    mul-double v16, v16, v14

    aput-wide v16, v13, v11

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v13, v13, v11

    add-int/lit8 v16, v11, -0x1

    mul-double v18, v14, v4

    aput-wide v18, v13, v16

    .line 183
    .end local v4    # "g":D
    .end local v6    # "h":D
    .end local v10    # "j":I
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 231
    .end local v9    # "i":I
    .end local v14    # "scale":D
    :cond_a
    return-void
.end method


# virtual methods
.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .prologue
    .line 143
    iget-object v4, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v4, :cond_3

    .line 144
    iget-object v4, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v3, v4

    .line 145
    .local v3, "m":I
    filled-new-array {v3, v3}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 146
    .local v0, "h":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 147
    if-lez v1, :cond_0

    .line 149
    aget-object v4, v0, v1

    add-int/lit8 v5, v1, -0x1

    iget-object v6, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v6, v6, v1

    add-int/lit8 v7, v1, -0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 153
    :cond_0
    move v2, v1

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 154
    aget-object v4, v0, v1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v2

    aput-wide v6, v4, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "j":I
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 161
    .end local v0    # "h":[[D
    .end local v1    # "i":I
    .end local v3    # "m":I
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v4
.end method

.method getHouseholderVectorsRef()[[D
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 14

    .prologue
    .line 83
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v8, :cond_8

    .line 84
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v6, v8

    .line 85
    .local v6, "n":I
    add-int/lit8 v2, v6, -0x1

    .line 86
    .local v2, "high":I
    filled-new-array {v6, v6}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 88
    .local v7, "pa":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 89
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 90
    aget-object v10, v7, v3

    if-ne v3, v4, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_2
    aput-wide v8, v10, v4

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 88
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v5, v2, -0x1

    .local v5, "m":I
    :goto_3
    const/4 v8, 0x1

    if-lt v5, v8, :cond_7

    .line 95
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v8, v8, v5

    add-int/lit8 v9, v5, -0x1

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_6

    .line 96
    add-int/lit8 v3, v5, 0x1

    :goto_4
    if-gt v3, v2, :cond_3

    .line 97
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    iget-object v9, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v9, v9, v3

    add-int/lit8 v10, v5, -0x1

    aget-wide v10, v9, v10

    aput-wide v10, v8, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 100
    :cond_3
    move v4, v5

    .restart local v4    # "j":I
    :goto_5
    if-gt v4, v2, :cond_6

    .line 101
    const-wide/16 v0, 0x0

    .line 103
    .local v0, "g":D
    move v3, v5

    :goto_6
    if-gt v3, v2, :cond_4

    .line 104
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v8, v8, v3

    aget-object v10, v7, v3

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 108
    :cond_4
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v8, v8, v5

    div-double v8, v0, v8

    iget-object v10, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v10, v10, v5

    add-int/lit8 v11, v5, -0x1

    aget-wide v10, v10, v11

    div-double v0, v8, v10

    .line 110
    move v3, v5

    :goto_7
    if-gt v3, v2, :cond_5

    .line 111
    aget-object v8, v7, v3

    aget-wide v10, v8, v4

    iget-object v9, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v12, v9, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    aput-wide v10, v8, v4

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 100
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 94
    .end local v0    # "g":D
    .end local v4    # "j":I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 117
    :cond_7
    invoke-static {v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 119
    .end local v2    # "high":I
    .end local v3    # "i":I
    .end local v5    # "m":I
    .end local v6    # "n":I
    .end local v7    # "pa":[[D
    :cond_8
    iget-object v8, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v8
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
