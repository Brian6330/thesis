.class Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/EigenDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private realEigenvalues:[D


# direct methods
.method private constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 0
    .param p1, "realEigenvalues"    # [D
    .param p2, "imagEigenvalues"    # [D
    .param p3, "eigenvectors"    # [Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    .line 431
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    .line 432
    iput-object p3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 433
    return-void
.end method

.method synthetic constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .param p3, "x2"    # [Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p4, "x3"    # Lorg/apache/commons/math3/linear/EigenDecomposition$1;

    .prologue
    .line 412
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-void
.end method

.method private eigenvalueNorm(I)D
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 540
    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v2, v4, p1

    .line 541
    .local v2, "re":D
    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    aget-wide v0, v4, p1

    .line 542
    .local v0, "im":D
    mul-double v4, v2, v2

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 14

    .prologue
    .line 552
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v9

    if-nez v9, :cond_0

    .line 553
    new-instance v9, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v9}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v9

    .line 556
    :cond_0
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v7, v9

    .line 557
    .local v7, "m":I
    filled-new-array {v7, v7}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 559
    .local v1, "invData":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_3

    .line 560
    aget-object v2, v1, v0

    .line 561
    .local v2, "invI":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 562
    const-wide/16 v4, 0x0

    .line 563
    .local v4, "invIJ":D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 564
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v8

    .line 565
    .local v8, "vK":[D
    aget-wide v10, v8, v0

    aget-wide v12, v8, v3

    mul-double/2addr v10, v12

    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v12, v9, v6

    div-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 563
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 567
    .end local v8    # "vK":[D
    :cond_1
    aput-wide v4, v2, v3

    .line 561
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 559
    .end local v4    # "invIJ":D
    .end local v6    # "k":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .end local v2    # "invI":[D
    .end local v3    # "j":I
    :cond_3
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    return-object v9
.end method

.method public isNonSingular()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 515
    const-wide/16 v8, 0x0

    .line 518
    .local v8, "largestEigenvalueNorm":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 519
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 522
    :cond_0
    cmpl-double v0, v8, v2

    if-nez v0, :cond_1

    move v0, v7

    .line 532
    :goto_1
    return v0

    .line 525
    :cond_1
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 528
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v0

    div-double/2addr v0, v8

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 529
    goto :goto_1

    .line 525
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 532
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 474
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v13

    if-nez v13, :cond_0

    .line 475
    new-instance v13, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v13}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v13

    .line 478
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v6, v13

    .line 479
    .local v6, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v13

    if-eq v13, v6, :cond_1

    .line 480
    new-instance v13, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v14

    invoke-direct {v13, v14, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v13

    .line 483
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v7

    .line 484
    .local v7, "nColB":I
    filled-new-array {v6, v7}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 485
    .local v2, "bp":[[D
    new-array v10, v6, [D

    .line 486
    .local v10, "tmpCol":[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    if-ge v5, v7, :cond_6

    .line 487
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 488
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v14

    aput-wide v14, v10, v3

    .line 489
    aget-object v13, v2, v3

    const-wide/16 v14, 0x0

    aput-wide v14, v13, v5

    .line 487
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_5

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v11, v13, v3

    .line 493
    .local v11, "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v12

    .line 494
    .local v12, "vData":[D
    const-wide/16 v8, 0x0

    .line 495
    .local v8, "s":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 496
    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    aget-wide v16, v10, v4

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    .line 495
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 498
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v14, v13, v3

    div-double/2addr v8, v14

    .line 499
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_4

    .line 500
    aget-object v13, v2, v4

    aget-wide v14, v13, v5

    aget-wide v16, v12, v4

    mul-double v16, v16, v8

    add-double v14, v14, v16

    aput-wide v14, v13, v5

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 491
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 486
    .end local v4    # "j":I
    .end local v8    # "s":D
    .end local v11    # "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v12    # "vData":[D
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 505
    .end local v3    # "i":I
    :cond_6
    new-instance v13, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v14, 0x0

    invoke-direct {v13, v2, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v13
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v8

    if-nez v8, :cond_0

    .line 450
    new-instance v8, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v8}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v8

    .line 453
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v3, v8

    .line 454
    .local v3, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v8

    if-eq v8, v3, :cond_1

    .line 455
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v9

    invoke-direct {v8, v9, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 458
    :cond_1
    new-array v0, v3, [D

    .line 459
    .local v0, "bp":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 460
    iget-object v8, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v6, v8, v1

    .line 461
    .local v6, "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v7

    .line 462
    .local v7, "vData":[D
    invoke-virtual {v6, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v10, v10, v1

    div-double v4, v8, v10

    .line 463
    .local v4, "s":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 464
    aget-wide v8, v0, v2

    aget-wide v10, v7, v2

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    aput-wide v8, v0, v2

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "j":I
    .end local v4    # "s":D
    .end local v6    # "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v7    # "vData":[D
    :cond_3
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v8
.end method
