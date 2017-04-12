.class Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
.super Ljava/lang/Object;
.source "QRDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/QRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final qrt:[[D

.field private final rDiag:[D

.field private final threshold:D


# direct methods
.method private constructor <init>([[D[DD)V
    .locals 1
    .param p1, "qrt"    # [[D
    .param p2, "rDiag"    # [D
    .param p3, "threshold"    # D

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    .line 332
    iput-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .line 333
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    .line 334
    return-void
.end method

.method synthetic constructor <init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V
    .locals 1
    .param p1, "x0"    # [[D
    .param p2, "x1"    # [D
    .param p3, "x2"    # D
    .param p5, "x3"    # Lorg/apache/commons/math3/linear/QRDecomposition$1;

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 10

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .local v0, "arr$":[D
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v2, v0, v1

    .line 339
    .local v2, "diag":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_0

    .line 340
    const/4 v5, 0x0

    .line 343
    .end local v2    # "diag":D
    :goto_1
    return v5

    .line 338
    .restart local v2    # "diag":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "diag":D
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 46
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v0, v4

    move/from16 v30, v0

    .line 392
    .local v30, "n":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v0, v4

    move/from16 v28, v0

    .line 393
    .local v28, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    move/from16 v0, v28

    if-eq v4, v0, :cond_0

    .line 394
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    move/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 396
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    new-instance v4, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v4}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v4

    .line 400
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v13

    .line 401
    .local v13, "columns":I
    const/16 v11, 0x34

    .line 402
    .local v11, "blockSize":I
    add-int/lit8 v4, v13, 0x34

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v12, v4, 0x34

    .line 403
    .local v12, "cBlocks":I
    move/from16 v0, v30

    invoke-static {v0, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v37

    .line 404
    .local v37, "xBlocks":[[D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    const/16 v5, 0x34

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 405
    .local v9, "y":[[D
    const/16 v4, 0x34

    new-array v10, v4, [D

    .line 407
    .local v10, "alpha":[D
    const/16 v25, 0x0

    .local v25, "kBlock":I
    :goto_0
    move/from16 v0, v25

    if-ge v0, v12, :cond_c

    .line 408
    mul-int/lit8 v7, v25, 0x34

    .line 409
    .local v7, "kStart":I
    add-int/lit8 v4, v7, 0x34

    invoke-static {v4, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v26

    .line 410
    .local v26, "kEnd":I
    sub-int v27, v26, v7

    .line 413
    .local v27, "kWidth":I
    const/4 v5, 0x0

    add-int/lit8 v6, v28, -0x1

    add-int/lit8 v8, v26, -0x1

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/linear/RealMatrix;->copySubMatrix(IIII[[D)V

    .line 416
    const/16 v29, 0x0

    .local v29, "minor":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v32, v4, v29

    .line 418
    .local v32, "qrtMinor":[D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v42, v6, v29

    aget-wide v44, v32, v29

    mul-double v42, v42, v44

    div-double v16, v4, v42

    .line 420
    .local v16, "factor":D
    const/4 v4, 0x0

    const-wide/16 v42, 0x0

    move/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-static {v10, v4, v0, v1, v2}, Ljava/util/Arrays;->fill([DIID)V

    .line 421
    move/from16 v33, v29

    .local v33, "row":I
    :goto_2
    move/from16 v0, v33

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 422
    aget-wide v14, v32, v33

    .line 423
    .local v14, "d":D
    aget-object v40, v9, v33

    .line 424
    .local v40, "yRow":[D
    const/16 v24, 0x0

    .local v24, "k":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 425
    aget-wide v4, v10, v24

    aget-wide v42, v40, v24

    mul-double v42, v42, v14

    add-double v4, v4, v42

    aput-wide v4, v10, v24

    .line 424
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 421
    :cond_2
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 428
    .end local v14    # "d":D
    .end local v24    # "k":I
    .end local v40    # "yRow":[D
    :cond_3
    const/16 v24, 0x0

    .restart local v24    # "k":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 429
    aget-wide v4, v10, v24

    mul-double v4, v4, v16

    aput-wide v4, v10, v24

    .line 428
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 432
    :cond_4
    move/from16 v33, v29

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 433
    aget-wide v14, v32, v33

    .line 434
    .restart local v14    # "d":D
    aget-object v40, v9, v33

    .line 435
    .restart local v40    # "yRow":[D
    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 436
    aget-wide v4, v40, v24

    aget-wide v42, v10, v24

    mul-double v42, v42, v14

    add-double v4, v4, v42

    aput-wide v4, v40, v24

    .line 435
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 432
    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 416
    .end local v14    # "d":D
    .end local v40    # "yRow":[D
    :cond_6
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 442
    .end local v16    # "factor":D
    .end local v24    # "k":I
    .end local v32    # "qrtMinor":[D
    .end local v33    # "row":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v4, v4

    add-int/lit8 v21, v4, -0x1

    .local v21, "j":I
    :goto_7
    if-ltz v21, :cond_b

    .line 443
    div-int/lit8 v22, v21, 0x34

    .line 444
    .local v22, "jBlock":I
    mul-int/lit8 v23, v22, 0x34

    .line 445
    .local v23, "jStart":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v42, v6, v21

    div-double v16, v4, v42

    .line 446
    .restart local v16    # "factor":D
    aget-object v39, v9, v21

    .line 447
    .local v39, "yJ":[D
    mul-int v4, v22, v12

    add-int v4, v4, v25

    aget-object v36, v37, v4

    .line 448
    .local v36, "xBlock":[D
    sub-int v4, v21, v23

    mul-int v19, v4, v27

    .line 449
    .local v19, "index":I
    const/16 v24, 0x0

    .restart local v24    # "k":I
    move/from16 v20, v19

    .end local v19    # "index":I
    .local v20, "index":I
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 450
    aget-wide v4, v39, v24

    mul-double v4, v4, v16

    aput-wide v4, v39, v24

    .line 451
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "index":I
    .restart local v19    # "index":I
    aget-wide v4, v39, v24

    aput-wide v4, v36, v20

    .line 449
    add-int/lit8 v24, v24, 0x1

    move/from16 v20, v19

    .end local v19    # "index":I
    .restart local v20    # "index":I
    goto :goto_8

    .line 454
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v31, v4, v21

    .line 455
    .local v31, "qrtJ":[D
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_9
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 456
    aget-wide v34, v31, v18

    .line 457
    .local v34, "rIJ":D
    aget-object v38, v9, v18

    .line 458
    .local v38, "yI":[D
    const/16 v24, 0x0

    :goto_a
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 459
    aget-wide v4, v38, v24

    aget-wide v42, v39, v24

    mul-double v42, v42, v34

    sub-double v4, v4, v42

    aput-wide v4, v38, v24

    .line 458
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 455
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 442
    .end local v34    # "rIJ":D
    .end local v38    # "yI":[D
    :cond_a
    add-int/lit8 v21, v21, -0x1

    goto :goto_7

    .line 407
    .end local v16    # "factor":D
    .end local v18    # "i":I
    .end local v20    # "index":I
    .end local v22    # "jBlock":I
    .end local v23    # "jStart":I
    .end local v24    # "k":I
    .end local v31    # "qrtJ":[D
    .end local v36    # "xBlock":[D
    .end local v39    # "yJ":[D
    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 465
    .end local v7    # "kStart":I
    .end local v21    # "j":I
    .end local v26    # "kEnd":I
    .end local v27    # "kWidth":I
    .end local v29    # "minor":I
    :cond_c
    new-instance v4, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v37

    invoke-direct {v4, v0, v13, v1, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-object v4
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 20
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v7, v13

    .line 349
    .local v7, "n":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/16 v16, 0x0

    aget-object v13, v13, v16

    array-length v5, v13

    .line 350
    .local v5, "m":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v13

    if-eq v13, v5, :cond_0

    .line 351
    new-instance v13, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v13, v0, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v13

    .line 353
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v13

    if-nez v13, :cond_1

    .line 354
    new-instance v13, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v13}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v13

    .line 357
    :cond_1
    new-array v11, v7, [D

    .line 358
    .local v11, "x":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v12

    .line 361
    .local v12, "y":[D
    const/4 v6, 0x0

    .local v6, "minor":I
    :goto_0
    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v8, v13, v6

    .line 364
    .local v8, "qrtMinor":[D
    const-wide/16 v2, 0x0

    .line 365
    .local v2, "dotProduct":D
    move v10, v6

    .local v10, "row":I
    :goto_1
    if-ge v10, v5, :cond_2

    .line 366
    aget-wide v16, v12, v10

    aget-wide v18, v8, v10

    mul-double v16, v16, v18

    add-double v2, v2, v16

    .line 365
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 368
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v16, v13, v6

    aget-wide v18, v8, v6

    mul-double v16, v16, v18

    div-double v2, v2, v16

    .line 370
    move v10, v6

    :goto_2
    if-ge v10, v5, :cond_3

    .line 371
    aget-wide v16, v12, v10

    aget-wide v18, v8, v10

    mul-double v18, v18, v2

    add-double v16, v16, v18

    aput-wide v16, v12, v10

    .line 370
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 361
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "dotProduct":D
    .end local v8    # "qrtMinor":[D
    .end local v10    # "row":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v13, v13

    add-int/lit8 v10, v13, -0x1

    .restart local v10    # "row":I
    :goto_3
    if-ltz v10, :cond_6

    .line 377
    aget-wide v16, v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v18, v13, v10

    div-double v16, v16, v18

    aput-wide v16, v12, v10

    .line 378
    aget-wide v14, v12, v10

    .line 379
    .local v14, "yRow":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v9, v13, v10

    .line 380
    .local v9, "qrtRow":[D
    aput-wide v14, v11, v10

    .line 381
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v10, :cond_5

    .line 382
    aget-wide v16, v12, v4

    aget-wide v18, v9, v4

    mul-double v18, v18, v14

    sub-double v16, v16, v18

    aput-wide v16, v12, v4

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 376
    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 386
    .end local v4    # "i":I
    .end local v9    # "qrtRow":[D
    .end local v14    # "yRow":D
    :cond_6
    new-instance v13, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v13, v11, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v13
.end method
