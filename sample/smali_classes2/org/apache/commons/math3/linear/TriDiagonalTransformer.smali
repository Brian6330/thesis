.class Lorg/apache/commons/math3/linear/TriDiagonalTransformer;
.super Ljava/lang/Object;
.source "TriDiagonalTransformer.java"


# instance fields
.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final main:[D

.field private final secondary:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1

    .line 67
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 68
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    .line 69
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    .line 70
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    .line 71
    iput-object v2, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 72
    iput-object v2, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 73
    iput-object v2, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->transform()V

    .line 77
    return-void
.end method

.method private transform()V
    .locals 38

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v23, v0

    .line 193
    .local v23, "m":I
    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v26, v0

    .line 194
    .local v26, "z":[D
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_0
    add-int/lit8 v27, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v27, v0

    aget-object v15, v27, v22

    .line 198
    .local v15, "hK":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    move-object/from16 v27, v0

    aget-wide v30, v15, v22

    aput-wide v30, v27, v22

    .line 199
    const-wide/16 v24, 0x0

    .line 200
    .local v24, "xNormSqr":D
    add-int/lit8 v21, v22, 0x1

    .local v21, "j":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 201
    aget-wide v10, v15, v21

    .line 202
    .local v10, "c":D
    mul-double v30, v10, v10

    add-double v24, v24, v30

    .line 200
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 204
    .end local v10    # "c":D
    :cond_0
    add-int/lit8 v27, v22, 0x1

    aget-wide v30, v15, v27

    const-wide/16 v32, 0x0

    cmpl-double v27, v30, v32

    if-lez v27, :cond_1

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v6, v0

    .line 205
    .local v6, "a":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    move-object/from16 v27, v0

    aput-wide v6, v27, v22

    .line 206
    const-wide/16 v30, 0x0

    cmpl-double v27, v6, v30

    if-eqz v27, :cond_7

    .line 209
    add-int/lit8 v27, v22, 0x1

    aget-wide v30, v15, v27

    sub-double v30, v30, v6

    aput-wide v30, v15, v27

    .line 210
    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    add-int/lit8 v27, v22, 0x1

    aget-wide v32, v15, v27

    mul-double v32, v32, v6

    div-double v8, v30, v32

    .line 216
    .local v8, "beta":D
    add-int/lit8 v27, v22, 0x1

    const-wide/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v23

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    .line 217
    add-int/lit8 v20, v22, 0x1

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v27, v0

    aget-object v14, v27, v20

    .line 219
    .local v14, "hI":[D
    aget-wide v18, v15, v20

    .line 220
    .local v18, "hKI":D
    aget-wide v30, v14, v20

    mul-double v28, v30, v18

    .line 221
    .local v28, "zI":D
    add-int/lit8 v21, v20, 0x1

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 222
    aget-wide v16, v14, v21

    .line 223
    .local v16, "hIJ":D
    aget-wide v30, v15, v21

    mul-double v30, v30, v16

    add-double v28, v28, v30

    .line 224
    aget-wide v30, v26, v21

    mul-double v32, v16, v18

    add-double v30, v30, v32

    aput-wide v30, v26, v21

    .line 221
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 204
    .end local v6    # "a":D
    .end local v8    # "beta":D
    .end local v14    # "hI":[D
    .end local v16    # "hIJ":D
    .end local v18    # "hKI":D
    .end local v20    # "i":I
    .end local v28    # "zI":D
    :cond_1
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    goto :goto_2

    .line 226
    .restart local v6    # "a":D
    .restart local v8    # "beta":D
    .restart local v14    # "hI":[D
    .restart local v18    # "hKI":D
    .restart local v20    # "i":I
    .restart local v28    # "zI":D
    :cond_2
    aget-wide v30, v26, v20

    add-double v30, v30, v28

    mul-double v30, v30, v8

    aput-wide v30, v26, v20

    .line 217
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 230
    .end local v14    # "hI":[D
    .end local v18    # "hKI":D
    .end local v28    # "zI":D
    :cond_3
    const-wide/16 v12, 0x0

    .line 231
    .local v12, "gamma":D
    add-int/lit8 v20, v22, 0x1

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 232
    aget-wide v30, v26, v20

    aget-wide v32, v15, v20

    mul-double v30, v30, v32

    add-double v12, v12, v30

    .line 231
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 234
    :cond_4
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v30, v8, v30

    mul-double v12, v12, v30

    .line 237
    add-int/lit8 v20, v22, 0x1

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 238
    aget-wide v30, v26, v20

    aget-wide v32, v15, v20

    mul-double v32, v32, v12

    sub-double v30, v30, v32

    aput-wide v30, v26, v20

    .line 237
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 243
    :cond_5
    add-int/lit8 v20, v22, 0x1

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v27, v0

    aget-object v14, v27, v20

    .line 245
    .restart local v14    # "hI":[D
    move/from16 v21, v20

    :goto_8
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 246
    aget-wide v30, v14, v21

    aget-wide v32, v15, v20

    aget-wide v34, v26, v21

    mul-double v32, v32, v34

    aget-wide v34, v26, v20

    aget-wide v36, v15, v21

    mul-double v34, v34, v36

    add-double v32, v32, v34

    sub-double v30, v30, v32

    aput-wide v30, v14, v21

    .line 245
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 243
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 194
    .end local v8    # "beta":D
    .end local v12    # "gamma":D
    .end local v14    # "hI":[D
    .end local v20    # "i":I
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 251
    .end local v6    # "a":D
    .end local v15    # "hK":[D
    .end local v21    # "j":I
    .end local v24    # "xNormSqr":D
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    move-object/from16 v27, v0

    add-int/lit8 v30, v23, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v31, v0

    add-int/lit8 v32, v23, -0x1

    aget-object v31, v31, v32

    add-int/lit8 v32, v23, -0x1

    aget-wide v32, v31, v32

    aput-wide v32, v27, v30

    .line 252
    return-void
.end method


# virtual methods
.method getHouseholderVectorsRef()[[D
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    return-object v0
.end method

.method getMainDiagonalRef()[D
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    return-object v0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v12, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    array-length v10, v12

    .line 99
    .local v10, "m":I
    filled-new-array {v10, v10}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    .line 102
    .local v11, "qta":[[D
    add-int/lit8 v9, v10, -0x1

    .local v9, "k":I
    :goto_0
    const/4 v12, 0x1

    if-lt v9, v12, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    add-int/lit8 v13, v9, -0x1

    aget-object v4, v12, v13

    .line 104
    .local v4, "hK":[D
    aget-object v12, v11, v9

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v12, v9

    .line 105
    aget-wide v12, v4, v9

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_3

    .line 106
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    add-int/lit8 v15, v9, -0x1

    aget-wide v14, v14, v15

    aget-wide v16, v4, v9

    mul-double v14, v14, v16

    div-double v6, v12, v14

    .line 107
    .local v6, "inv":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    add-int/lit8 v15, v9, -0x1

    aget-wide v14, v14, v15

    div-double v2, v12, v14

    .line 108
    .local v2, "beta":D
    aget-object v12, v11, v9

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aget-wide v16, v4, v9

    mul-double v16, v16, v2

    add-double v14, v14, v16

    aput-wide v14, v12, v9

    .line 109
    add-int/lit8 v5, v9, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_0

    .line 110
    aget-object v12, v11, v9

    aget-wide v14, v4, v5

    mul-double/2addr v14, v2

    aput-wide v14, v12, v5

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .local v8, "j":I
    :goto_2
    if-ge v8, v10, :cond_3

    .line 113
    const-wide/16 v2, 0x0

    .line 114
    add-int/lit8 v5, v9, 0x1

    :goto_3
    if-ge v5, v10, :cond_1

    .line 115
    aget-object v12, v11, v8

    aget-wide v12, v12, v5

    aget-wide v14, v4, v5

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 117
    :cond_1
    mul-double/2addr v2, v6

    .line 118
    aget-object v12, v11, v8

    aget-wide v14, v4, v9

    mul-double/2addr v14, v2

    aput-wide v14, v12, v9

    .line 119
    add-int/lit8 v5, v9, 0x1

    :goto_4
    if-ge v5, v10, :cond_2

    .line 120
    aget-object v12, v11, v8

    aget-wide v14, v12, v5

    aget-wide v16, v4, v5

    mul-double v16, v16, v2

    add-double v14, v14, v16

    aput-wide v14, v12, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 112
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 102
    .end local v2    # "beta":D
    .end local v5    # "i":I
    .end local v6    # "inv":D
    .end local v8    # "j":I
    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 125
    .end local v4    # "hK":[D
    :cond_4
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v12, v13

    .line 126
    invoke-static {v11}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 130
    .end local v9    # "k":I
    .end local v10    # "m":I
    .end local v11    # "qta":[[D
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v12
.end method

.method getSecondaryDiagonalRef()[D
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .prologue
    .line 138
    iget-object v3, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v3, :cond_3

    .line 139
    iget-object v3, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    array-length v1, v3

    .line 140
    .local v1, "m":I
    filled-new-array {v1, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 141
    .local v2, "ta":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 142
    aget-object v3, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    .line 143
    if-lez v0, :cond_0

    .line 144
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    .line 146
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 147
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aget-wide v6, v5, v0

    aput-wide v6, v3, v4

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 154
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v2    # "ta":[[D
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v3
.end method
