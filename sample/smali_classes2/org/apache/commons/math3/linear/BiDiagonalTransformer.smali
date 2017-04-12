.class Lorg/apache/commons/math3/linear/BiDiagonalTransformer;
.super Ljava/lang/Object;
.source "BiDiagonalTransformer.java"


# instance fields
.field private cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final main:[D

.field private final secondary:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 64
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 65
    .local v1, "n":I
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 66
    .local v2, "p":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    .line 67
    new-array v3, v2, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    .line 68
    add-int/lit8 v3, v2, -0x1

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    .line 69
    iput-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 70
    iput-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 71
    iput-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 74
    if-lt v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->transformToUpperBiDiagonal()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->transformToLowerBiDiagonal()V

    goto :goto_0
.end method

.method private transformToLowerBiDiagonal()V
    .locals 26

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 323
    .local v18, "m":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v19, v0

    .line 324
    .local v19, "n":I
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    aget-object v13, v22, v17

    .line 328
    .local v13, "hK":[D
    const-wide/16 v20, 0x0

    .line 329
    .local v20, "xNormSqr":D
    move/from16 v16, v17

    .local v16, "j":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 330
    aget-wide v10, v13, v16

    .line 331
    .local v10, "c":D
    mul-double v22, v10, v10

    add-double v20, v20, v22

    .line 329
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 333
    .end local v10    # "c":D
    :cond_0
    aget-wide v22, v13, v17

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_1

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v2, v0

    .line 334
    .local v2, "a":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    move-object/from16 v22, v0

    aput-wide v2, v22, v17

    .line 335
    const-wide/16 v22, 0x0

    cmpl-double v22, v2, v22

    if-eqz v22, :cond_4

    .line 336
    aget-wide v22, v13, v17

    sub-double v22, v22, v2

    aput-wide v22, v13, v17

    .line 337
    add-int/lit8 v15, v17, 0x1

    .local v15, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    aget-object v12, v22, v15

    .line 339
    .local v12, "hI":[D
    const-wide/16 v4, 0x0

    .line 340
    .local v4, "alpha":D
    move/from16 v16, v17

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 341
    aget-wide v22, v12, v16

    aget-wide v24, v13, v16

    mul-double v22, v22, v24

    sub-double v4, v4, v22

    .line 340
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 333
    .end local v2    # "a":D
    .end local v4    # "alpha":D
    .end local v12    # "hI":[D
    .end local v15    # "i":I
    :cond_1
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    goto :goto_2

    .line 343
    .restart local v2    # "a":D
    .restart local v4    # "alpha":D
    .restart local v12    # "hI":[D
    .restart local v15    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    aget-object v22, v22, v17

    aget-wide v22, v22, v17

    mul-double v22, v22, v2

    div-double v4, v4, v22

    .line 344
    move/from16 v16, v17

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 345
    aget-wide v22, v12, v16

    aget-wide v24, v13, v16

    mul-double v24, v24, v4

    sub-double v22, v22, v24

    aput-wide v22, v12, v16

    .line 344
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 337
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 350
    .end local v4    # "alpha":D
    .end local v12    # "hI":[D
    .end local v15    # "i":I
    :cond_4
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, 0x1

    aget-object v14, v22, v23

    .line 353
    .local v14, "hKp1":[D
    const-wide/16 v20, 0x0

    .line 354
    add-int/lit8 v15, v17, 0x1

    .restart local v15    # "i":I
    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    aget-object v22, v22, v15

    aget-wide v10, v22, v17

    .line 356
    .restart local v10    # "c":D
    mul-double v22, v10, v10

    add-double v20, v20, v22

    .line 354
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 358
    .end local v10    # "c":D
    :cond_5
    aget-wide v22, v14, v17

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_6

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v6, v0

    .line 359
    .local v6, "b":D
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    move-object/from16 v22, v0

    aput-wide v6, v22, v17

    .line 360
    const-wide/16 v22, 0x0

    cmpl-double v22, v6, v22

    if-eqz v22, :cond_9

    .line 361
    aget-wide v22, v14, v17

    sub-double v22, v22, v6

    aput-wide v22, v14, v17

    .line 362
    add-int/lit8 v16, v17, 0x1

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 363
    const-wide/16 v8, 0x0

    .line 364
    .local v8, "beta":D
    add-int/lit8 v15, v17, 0x1

    :goto_9
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    aget-object v12, v22, v15

    .line 366
    .restart local v12    # "hI":[D
    aget-wide v22, v12, v16

    aget-wide v24, v12, v17

    mul-double v22, v22, v24

    sub-double v8, v8, v22

    .line 364
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 358
    .end local v6    # "b":D
    .end local v8    # "beta":D
    .end local v12    # "hI":[D
    :cond_6
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    goto :goto_7

    .line 368
    .restart local v6    # "b":D
    .restart local v8    # "beta":D
    :cond_7
    aget-wide v22, v14, v17

    mul-double v22, v22, v6

    div-double v8, v8, v22

    .line 369
    add-int/lit8 v15, v17, 0x1

    :goto_a
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v22, v0

    aget-object v12, v22, v15

    .line 371
    .restart local v12    # "hI":[D
    aget-wide v22, v12, v16

    aget-wide v24, v12, v17

    mul-double v24, v24, v8

    sub-double v22, v22, v24

    aput-wide v22, v12, v16

    .line 369
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 362
    .end local v12    # "hI":[D
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 324
    .end local v6    # "b":D
    .end local v8    # "beta":D
    .end local v14    # "hKp1":[D
    .end local v15    # "i":I
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 378
    .end local v2    # "a":D
    .end local v13    # "hK":[D
    .end local v16    # "j":I
    .end local v20    # "xNormSqr":D
    :cond_a
    return-void
.end method

.method private transformToUpperBiDiagonal()V
    .locals 26

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 259
    .local v17, "m":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    const/16 v22, 0x0

    aget-object v19, v19, v22

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 260
    .local v18, "n":I
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 263
    const-wide/16 v20, 0x0

    .line 264
    .local v20, "xNormSqr":D
    move/from16 v14, v16

    .local v14, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v14

    aget-wide v10, v19, v16

    .line 266
    .local v10, "c":D
    mul-double v22, v10, v10

    add-double v20, v20, v22

    .line 264
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 268
    .end local v10    # "c":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    aget-object v13, v19, v16

    .line 269
    .local v13, "hK":[D
    aget-wide v22, v13, v16

    const-wide/16 v24, 0x0

    cmpl-double v19, v22, v24

    if-lez v19, :cond_1

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v2, v0

    .line 270
    .local v2, "a":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    move-object/from16 v19, v0

    aput-wide v2, v19, v16

    .line 271
    const-wide/16 v22, 0x0

    cmpl-double v19, v2, v22

    if-eqz v19, :cond_4

    .line 272
    aget-wide v22, v13, v16

    sub-double v22, v22, v2

    aput-wide v22, v13, v16

    .line 273
    add-int/lit8 v15, v16, 0x1

    .local v15, "j":I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 274
    const-wide/16 v4, 0x0

    .line 275
    .local v4, "alpha":D
    move/from16 v14, v16

    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    aget-object v12, v19, v14

    .line 277
    .local v12, "hI":[D
    aget-wide v22, v12, v15

    aget-wide v24, v12, v16

    mul-double v22, v22, v24

    sub-double v4, v4, v22

    .line 275
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 269
    .end local v2    # "a":D
    .end local v4    # "alpha":D
    .end local v12    # "hI":[D
    .end local v15    # "j":I
    :cond_1
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    goto :goto_2

    .line 279
    .restart local v2    # "a":D
    .restart local v4    # "alpha":D
    .restart local v15    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v16

    aget-wide v22, v19, v16

    mul-double v22, v22, v2

    div-double v4, v4, v22

    .line 280
    move/from16 v14, v16

    :goto_5
    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    aget-object v12, v19, v14

    .line 282
    .restart local v12    # "hI":[D
    aget-wide v22, v12, v15

    aget-wide v24, v12, v16

    mul-double v24, v24, v4

    sub-double v22, v22, v24

    aput-wide v22, v12, v15

    .line 280
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 273
    .end local v12    # "hI":[D
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 287
    .end local v4    # "alpha":D
    .end local v15    # "j":I
    :cond_4
    add-int/lit8 v19, v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 289
    const-wide/16 v20, 0x0

    .line 290
    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "j":I
    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    .line 291
    aget-wide v10, v13, v15

    .line 292
    .restart local v10    # "c":D
    mul-double v22, v10, v10

    add-double v20, v20, v22

    .line 290
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 294
    .end local v10    # "c":D
    :cond_5
    add-int/lit8 v19, v16, 0x1

    aget-wide v22, v13, v19

    const-wide/16 v24, 0x0

    cmpl-double v19, v22, v24

    if-lez v19, :cond_6

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v6, v0

    .line 295
    .local v6, "b":D
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    move-object/from16 v19, v0

    aput-wide v6, v19, v16

    .line 296
    const-wide/16 v22, 0x0

    cmpl-double v19, v6, v22

    if-eqz v19, :cond_9

    .line 297
    add-int/lit8 v19, v16, 0x1

    aget-wide v22, v13, v19

    sub-double v22, v22, v6

    aput-wide v22, v13, v19

    .line 298
    add-int/lit8 v14, v16, 0x1

    :goto_8
    move/from16 v0, v17

    if-ge v14, v0, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v19, v0

    aget-object v12, v19, v14

    .line 300
    .restart local v12    # "hI":[D
    const-wide/16 v8, 0x0

    .line 301
    .local v8, "beta":D
    add-int/lit8 v15, v16, 0x1

    :goto_9
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 302
    aget-wide v22, v12, v15

    aget-wide v24, v13, v15

    mul-double v22, v22, v24

    sub-double v8, v8, v22

    .line 301
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 294
    .end local v6    # "b":D
    .end local v8    # "beta":D
    .end local v12    # "hI":[D
    :cond_6
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    goto :goto_7

    .line 304
    .restart local v6    # "b":D
    .restart local v8    # "beta":D
    .restart local v12    # "hI":[D
    :cond_7
    add-int/lit8 v19, v16, 0x1

    aget-wide v22, v13, v19

    mul-double v22, v22, v6

    div-double v8, v8, v22

    .line 305
    add-int/lit8 v15, v16, 0x1

    :goto_a
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    .line 306
    aget-wide v22, v12, v15

    aget-wide v24, v13, v15

    mul-double v24, v24, v8

    sub-double v22, v22, v24

    aput-wide v22, v12, v15

    .line 305
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 298
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 260
    .end local v6    # "b":D
    .end local v8    # "beta":D
    .end local v12    # "hI":[D
    .end local v15    # "j":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 313
    .end local v2    # "a":D
    .end local v13    # "hK":[D
    .end local v14    # "i":I
    .end local v20    # "xNormSqr":D
    :cond_a
    return-void
.end method


# virtual methods
.method public getB()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .prologue
    .line 138
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v4, :cond_3

    .line 140
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v2, v4

    .line 141
    .local v2, "m":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v3, v4

    .line 142
    .local v3, "n":I
    filled-new-array {v2, v3}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 143
    .local v0, "ba":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 144
    aget-object v4, v0, v1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    aget-wide v6, v5, v1

    aput-wide v6, v4, v1

    .line 145
    if-ge v2, v3, :cond_1

    .line 146
    if-lez v1, :cond_0

    .line 147
    aget-object v4, v0, v1

    add-int/lit8 v5, v1, -0x1

    iget-object v6, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    add-int/lit8 v7, v1, -0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 151
    aget-object v4, v0, v1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aget-wide v6, v6, v1

    aput-wide v6, v4, v5

    goto :goto_1

    .line 155
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 159
    .end local v0    # "ba":[[D
    .end local v1    # "i":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v4
.end method

.method getHouseholderVectorsRef()[[D
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    return-object v0
.end method

.method getMainDiagonalRef()[D
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    return-object v0
.end method

.method getSecondaryDiagonalRef()[D
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 22

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v14, :cond_8

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v10, v14

    .line 92
    .local v10, "m":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v15, 0x0

    aget-object v14, v14, v15

    array-length v11, v14

    .line 93
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v12, v14

    .line 94
    .local v12, "p":I
    if-lt v10, v11, :cond_0

    const/4 v4, 0x0

    .line 95
    .local v4, "diagOffset":I
    :goto_0
    if-lt v10, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    .line 96
    .local v5, "diagonal":[D
    :goto_1
    filled-new-array {v10, v10}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    .line 99
    .local v13, "ua":[[D
    add-int/lit8 v9, v10, -0x1

    .local v9, "k":I
    :goto_2
    if-lt v9, v12, :cond_2

    .line 100
    aget-object v14, v13, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v14, v9

    .line 99
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 94
    .end local v4    # "diagOffset":I
    .end local v5    # "diagonal":[D
    .end local v9    # "k":I
    .end local v13    # "ua":[[D
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 95
    .restart local v4    # "diagOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    goto :goto_1

    .line 104
    .restart local v5    # "diagonal":[D
    .restart local v9    # "k":I
    .restart local v13    # "ua":[[D
    :cond_2
    add-int/lit8 v9, v12, -0x1

    :goto_3
    if-lt v9, v4, :cond_6

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v6, v14, v9

    .line 106
    .local v6, "hK":[D
    aget-object v14, v13, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v14, v9

    .line 107
    sub-int v14, v9, v4

    aget-wide v14, v6, v14

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_5

    .line 108
    move v8, v9

    .local v8, "j":I
    :goto_4
    if-ge v8, v10, :cond_5

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "alpha":D
    move v7, v9

    .local v7, "i":I
    :goto_5
    if-ge v7, v10, :cond_3

    .line 111
    aget-object v14, v13, v7

    aget-wide v14, v14, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    sub-int v17, v9, v4

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    sub-double/2addr v2, v14

    .line 110
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 113
    :cond_3
    sub-int v14, v9, v4

    aget-wide v14, v5, v14

    sub-int v16, v9, v4

    aget-wide v16, v6, v16

    mul-double v14, v14, v16

    div-double/2addr v2, v14

    .line 115
    move v7, v9

    :goto_6
    if-ge v7, v10, :cond_4

    .line 116
    aget-object v14, v13, v7

    aget-wide v16, v14, v8

    neg-double v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v15, v15, v7

    sub-int v20, v9, v4

    aget-wide v20, v15, v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v14, v8

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 108
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 104
    .end local v2    # "alpha":D
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 121
    .end local v6    # "hK":[D
    :cond_6
    if-lez v4, :cond_7

    .line 122
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v14, v15

    .line 124
    :cond_7
    invoke-static {v13}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 128
    .end local v4    # "diagOffset":I
    .end local v5    # "diagonal":[D
    .end local v9    # "k":I
    .end local v10    # "m":I
    .end local v11    # "n":I
    .end local v12    # "p":I
    .end local v13    # "ua":[[D
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v14
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 22

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v14, :cond_8

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v10, v14

    .line 173
    .local v10, "m":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v15, 0x0

    aget-object v14, v14, v15

    array-length v11, v14

    .line 174
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v12, v14

    .line 175
    .local v12, "p":I
    if-lt v10, v11, :cond_0

    const/4 v4, 0x1

    .line 176
    .local v4, "diagOffset":I
    :goto_0
    if-lt v10, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    .line 177
    .local v5, "diagonal":[D
    :goto_1
    filled-new-array {v11, v11}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    .line 180
    .local v13, "va":[[D
    add-int/lit8 v9, v11, -0x1

    .local v9, "k":I
    :goto_2
    if-lt v9, v12, :cond_2

    .line 181
    aget-object v14, v13, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v14, v9

    .line 180
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 175
    .end local v4    # "diagOffset":I
    .end local v5    # "diagonal":[D
    .end local v9    # "k":I
    .end local v13    # "va":[[D
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 176
    .restart local v4    # "diagOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    goto :goto_1

    .line 185
    .restart local v5    # "diagonal":[D
    .restart local v9    # "k":I
    .restart local v13    # "va":[[D
    :cond_2
    add-int/lit8 v9, v12, -0x1

    :goto_3
    if-lt v9, v4, :cond_6

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    sub-int v15, v9, v4

    aget-object v6, v14, v15

    .line 187
    .local v6, "hK":[D
    aget-object v14, v13, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v14, v9

    .line 188
    aget-wide v14, v6, v9

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_5

    .line 189
    move v8, v9

    .local v8, "j":I
    :goto_4
    if-ge v8, v11, :cond_5

    .line 190
    const-wide/16 v2, 0x0

    .line 191
    .local v2, "beta":D
    move v7, v9

    .local v7, "i":I
    :goto_5
    if-ge v7, v11, :cond_3

    .line 192
    aget-object v14, v13, v7

    aget-wide v14, v14, v8

    aget-wide v16, v6, v7

    mul-double v14, v14, v16

    sub-double/2addr v2, v14

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 194
    :cond_3
    sub-int v14, v9, v4

    aget-wide v14, v5, v14

    aget-wide v16, v6, v9

    mul-double v14, v14, v16

    div-double/2addr v2, v14

    .line 196
    move v7, v9

    :goto_6
    if-ge v7, v11, :cond_4

    .line 197
    aget-object v14, v13, v7

    aget-wide v16, v14, v8

    neg-double v0, v2

    move-wide/from16 v18, v0

    aget-wide v20, v6, v7

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v14, v8

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 189
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 185
    .end local v2    # "beta":D
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 202
    .end local v6    # "hK":[D
    :cond_6
    if-lez v4, :cond_7

    .line 203
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v14, v15

    .line 205
    :cond_7
    invoke-static {v13}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 209
    .end local v4    # "diagOffset":I
    .end local v5    # "diagonal":[D
    .end local v9    # "k":I
    .end local v10    # "m":I
    .end local v11    # "n":I
    .end local v12    # "p":I
    .end local v13    # "va":[[D
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v14
.end method

.method isUpperBiDiagonal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
