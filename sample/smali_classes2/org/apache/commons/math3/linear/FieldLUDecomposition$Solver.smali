.class Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;
.super Ljava/lang/Object;
.source "FieldLUDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldDecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/FieldLUDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldDecompositionSolver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final lu:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final pivot:[I

.field private final singular:Z


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZ)V
    .locals 0
    .param p3, "pivot"    # [I
    .param p4, "singular"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[[TT;[IZ)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "lu":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    .line 284
    iput-object p2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    .line 285
    iput-object p3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    .line 286
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZLorg/apache/commons/math3/linear/FieldLUDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/Field;
    .param p2, "x1"    # [[Lorg/apache/commons/math3/FieldElement;
    .param p3, "x2"    # [I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/commons/math3/linear/FieldLUDecomposition$1;

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZ)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v2, v4

    .line 436
    .local v2, "m":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 437
    .local v3, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v4, v2, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 438
    .local v1, "identity":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 439
    invoke-interface {v1, v0, v0, v3}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v4

    return-object v4
.end method

.method public isNonSingular()Z
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public solve(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "b":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v5, v7

    .line 345
    .local v5, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v4

    .line 346
    .local v4, "length":I
    if-eq v4, v5, :cond_0

    .line 347
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v7, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 349
    :cond_0
    iget-boolean v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-eqz v7, :cond_1

    .line 350
    new-instance v7, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v7}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v7

    .line 354
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v7, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 355
    .local v0, "bp":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 356
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    aget v7, v7, v6

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    aput-object v7, v0, v6

    .line 355
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 361
    aget-object v1, v0, v2

    .line 362
    .local v1, "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 363
    aget-object v7, v0, v3

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v3

    aget-object v8, v8, v2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v0, v3

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 360
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    .end local v1    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v3    # "i":I
    :cond_4
    add-int/lit8 v2, v5, -0x1

    :goto_3
    if-ltz v2, :cond_6

    .line 369
    aget-object v7, v0, v2

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v2

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v0, v2

    .line 370
    aget-object v1, v0, v2

    .line 371
    .restart local v1    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 372
    aget-object v7, v0, v3

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v3

    aget-object v8, v8, v2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v0, v3

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 368
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 376
    .end local v1    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v3    # "i":I
    :cond_6
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v7
.end method

.method public solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "b":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v10, v14

    .line 382
    .local v10, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v14

    if-eq v14, v10, :cond_0

    .line 383
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v15

    invoke-direct {v14, v15, v10}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 385
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-eqz v14, :cond_1

    .line 386
    new-instance v14, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v14}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v14

    .line 389
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v11

    .line 392
    .local v11, "nColB":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v14, v10, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/FieldElement;

    .line 393
    .local v1, "bp":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v13, 0x0

    .local v13, "row":I
    :goto_0
    if-ge v13, v10, :cond_3

    .line 394
    aget-object v4, v1, v13

    .line 395
    .local v4, "bpRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    aget v12, v14, v13

    .line 396
    .local v12, "pRow":I
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v11, :cond_2

    .line 397
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v14

    aput-object v14, v4, v5

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 393
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 402
    .end local v4    # "bpRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "col":I
    .end local v12    # "pRow":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "col":I
    :goto_2
    if-ge v5, v10, :cond_6

    .line 403
    aget-object v2, v1, v5

    .line 404
    .local v2, "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v6, v5, 0x1

    .local v6, "i":I
    :goto_3
    if-ge v6, v10, :cond_5

    .line 405
    aget-object v3, v1, v6

    .line 406
    .local v3, "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v14, v14, v6

    aget-object v9, v14, v5

    .line 407
    .local v9, "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v11, :cond_4

    .line 408
    aget-object v14, v3, v7

    aget-object v15, v2, v7

    invoke-interface {v15, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/FieldElement;

    aput-object v14, v3, v7

    .line 407
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 404
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 402
    .end local v3    # "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v7    # "j":I
    .end local v9    # "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 414
    .end local v2    # "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v6    # "i":I
    :cond_6
    add-int/lit8 v5, v10, -0x1

    :goto_5
    if-ltz v5, :cond_a

    .line 415
    aget-object v2, v1, v5

    .line 416
    .restart local v2    # "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v14, v14, v5

    aget-object v8, v14, v5

    .line 417
    .local v8, "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_6
    if-ge v7, v11, :cond_7

    .line 418
    aget-object v14, v2, v7

    invoke-interface {v14, v8}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/FieldElement;

    aput-object v14, v2, v7

    .line 417
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 420
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v5, :cond_9

    .line 421
    aget-object v3, v1, v6

    .line 422
    .restart local v3    # "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v14, v14, v6

    aget-object v9, v14, v5

    .line 423
    .restart local v9    # "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v11, :cond_8

    .line 424
    aget-object v14, v3, v7

    aget-object v15, v2, v7

    invoke-interface {v15, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/FieldElement;

    aput-object v14, v3, v7

    .line 423
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 420
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 414
    .end local v3    # "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 429
    .end local v2    # "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_a
    new-instance v14, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v15, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v14
.end method

.method public solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "b":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v8, v0

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 331
    :goto_0
    return-object v8

    .line 298
    :catch_0
    move-exception v3

    .line 300
    .local v3, "cce":Ljava/lang/ClassCastException;
    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v6, v8

    .line 301
    .local v6, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v8

    if-eq v8, v6, :cond_0

    .line 302
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 304
    :cond_0
    iget-boolean v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-eqz v8, :cond_1

    .line 305
    new-instance v8, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v8}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v8

    .line 309
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v8, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 310
    .local v1, "bp":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v7, 0x0

    .local v7, "row":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 311
    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    aget v8, v8, v7

    invoke-interface {p1, v8}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    aput-object v8, v1, v7

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 315
    :cond_2
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 316
    aget-object v2, v1, v4

    .line 317
    .local v2, "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v4, 0x1

    .local v5, "i":I
    :goto_3
    if-ge v5, v6, :cond_3

    .line 318
    aget-object v8, v1, v5

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v9, v5

    aget-object v9, v9, v4

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v1, v5

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 315
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 323
    .end local v2    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "i":I
    :cond_4
    add-int/lit8 v4, v6, -0x1

    :goto_4
    if-ltz v4, :cond_6

    .line 324
    aget-object v8, v1, v4

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v9, v4

    aget-object v9, v9, v4

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v1, v4

    .line 325
    aget-object v2, v1, v4

    .line 326
    .restart local v2    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v4, :cond_5

    .line 327
    aget-object v8, v1, v5

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v9, v5

    aget-object v9, v9, v4

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v1, v5

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 323
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 331
    .end local v2    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "i":I
    :cond_6
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v1, v10}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    goto/16 :goto_0
.end method
