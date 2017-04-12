.class Lorg/apache/commons/math3/linear/LUDecomposition$Solver;
.super Ljava/lang/Object;
.source "LUDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/LUDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final lu:[[D

.field private final pivot:[I

.field private final singular:Z


# direct methods
.method private constructor <init>([[D[IZ)V
    .locals 0
    .param p1, "lu"    # [[D
    .param p2, "pivot"    # [I
    .param p3, "singular"    # Z

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    .line 280
    iput-object p2, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    .line 281
    iput-boolean p3, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    .line 282
    return-void
.end method

.method synthetic constructor <init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [[D
    .param p2, "x1"    # [I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/commons/math3/linear/LUDecomposition$1;

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;-><init>([[D[IZ)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 22
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v9, v0

    .line 330
    .local v9, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v9, :cond_0

    .line 331
    new-instance v17, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v17

    .line 333
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 334
    new-instance v17, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct/range {v17 .. v17}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v17

    .line 337
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v14

    .line 340
    .local v14, "nColB":I
    filled-new-array {v9, v14}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 341
    .local v2, "bp":[[D
    const/16 v16, 0x0

    .local v16, "row":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_3

    .line 342
    aget-object v5, v2, v16

    .line 343
    .local v5, "bpRow":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    move-object/from16 v17, v0

    aget v15, v17, v16

    .line 344
    .local v15, "pRow":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v14, :cond_2

    .line 345
    move-object/from16 v0, p1

    invoke-interface {v0, v15, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    aput-wide v18, v5, v6

    .line 344
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 341
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 350
    .end local v5    # "bpRow":[D
    .end local v6    # "col":I
    .end local v15    # "pRow":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "col":I
    :goto_2
    if-ge v6, v9, :cond_6

    .line 351
    aget-object v3, v2, v6

    .line 352
    .local v3, "bpCol":[D
    add-int/lit8 v7, v6, 0x1

    .local v7, "i":I
    :goto_3
    if-ge v7, v9, :cond_5

    .line 353
    aget-object v4, v2, v7

    .line 354
    .local v4, "bpI":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    aget-wide v12, v17, v6

    .line 355
    .local v12, "luICol":D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v14, :cond_4

    .line 356
    aget-wide v18, v4, v8

    aget-wide v20, v3, v8

    mul-double v20, v20, v12

    sub-double v18, v18, v20

    aput-wide v18, v4, v8

    .line 355
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 352
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 350
    .end local v4    # "bpI":[D
    .end local v8    # "j":I
    .end local v12    # "luICol":D
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 362
    .end local v3    # "bpCol":[D
    .end local v7    # "i":I
    :cond_6
    add-int/lit8 v6, v9, -0x1

    :goto_5
    if-ltz v6, :cond_a

    .line 363
    aget-object v3, v2, v6

    .line 364
    .restart local v3    # "bpCol":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    aget-wide v10, v17, v6

    .line 365
    .local v10, "luDiag":D
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_6
    if-ge v8, v14, :cond_7

    .line 366
    aget-wide v18, v3, v8

    div-double v18, v18, v10

    aput-wide v18, v3, v8

    .line 365
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 368
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v6, :cond_9

    .line 369
    aget-object v4, v2, v7

    .line 370
    .restart local v4    # "bpI":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    aget-wide v12, v17, v6

    .line 371
    .restart local v12    # "luICol":D
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v14, :cond_8

    .line 372
    aget-wide v18, v4, v8

    aget-wide v20, v3, v8

    mul-double v20, v20, v12

    sub-double v18, v18, v20

    aput-wide v18, v4, v8

    .line 371
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 368
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 362
    .end local v4    # "bpI":[D
    .end local v12    # "luICol":D
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 377
    .end local v3    # "bpCol":[D
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "luDiag":D
    :cond_a
    new-instance v17, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v17
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 291
    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v5, v7

    .line 292
    .local v5, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v7

    if-eq v7, v5, :cond_0

    .line 293
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v8

    invoke-direct {v7, v8, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 295
    :cond_0
    iget-boolean v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    if-eqz v7, :cond_1

    .line 296
    new-instance v7, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v7}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v7

    .line 299
    :cond_1
    new-array v0, v5, [D

    .line 302
    .local v0, "bp":[D
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 303
    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    aget v7, v7, v6

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    aput-wide v8, v0, v6

    .line 302
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 307
    :cond_2
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 308
    aget-wide v2, v0, v1

    .line 309
    .local v2, "bpCol":D
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 310
    aget-wide v8, v0, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v7, v7, v4

    aget-wide v10, v7, v1

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    aput-wide v8, v0, v4

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 307
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    .end local v2    # "bpCol":D
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v1, v5, -0x1

    :goto_3
    if-ltz v1, :cond_6

    .line 316
    aget-wide v8, v0, v1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v7, v7, v1

    aget-wide v10, v7, v1

    div-double/2addr v8, v10

    aput-wide v8, v0, v1

    .line 317
    aget-wide v2, v0, v1

    .line 318
    .restart local v2    # "bpCol":D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v1, :cond_5

    .line 319
    aget-wide v8, v0, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v7, v7, v4

    aget-wide v10, v7, v1

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    aput-wide v8, v0, v4

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 315
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 323
    .end local v2    # "bpCol":D
    .end local v4    # "i":I
    :cond_6
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v7
.end method
