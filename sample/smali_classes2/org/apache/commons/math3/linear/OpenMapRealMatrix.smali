.class public Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "OpenMapRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/SparseRealMatrix;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x52beeb57344b3c8dL


# instance fields
.field private final columns:I

.field private final entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 8
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 64
    int-to-long v2, p1

    .line 65
    .local v2, "lRow":J
    int-to-long v0, p2

    .line 66
    .local v0, "lCol":J
    mul-long v4, v2, v0

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 67
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    mul-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 69
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    .line 70
    iput p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    .line 71
    new-instance v4, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 80
    iget v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    .line 81
    iget v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    .line 82
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 83
    return-void
.end method

.method private computeKey(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 306
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 122
    new-instance v2, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    .line 123
    .local v2, "out":Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    iget-object v4, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .local v1, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 125
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v3, v4, v5

    .line 126
    .local v3, "row":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 127
    .local v0, "col":I
    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->setEntry(IID)V

    goto :goto_0

    .line 130
    .end local v0    # "col":I
    .end local v3    # "row":I
    :cond_0
    return-object v2
.end method

.method public addToEntry(IID)V
    .locals 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 274
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 275
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v0

    .line 276
    .local v0, "key":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v4

    add-double v2, v4, p3

    .line 277
    .local v2, "value":D
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0
.end method

.method public copy()Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->copy()Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    return v0
.end method

.method public getEntry(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 246
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 20
    .param p1, "m"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getColumnDimension()I

    move-result v8

    .line 217
    .local v8, "outCols":I
    new-instance v7, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    invoke-direct {v7, v13, v8}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    .line 218
    .local v7, "out":Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v3

    .local v3, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 219
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 220
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v14

    .line 221
    .local v14, "value":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v6

    .line 222
    .local v6, "key":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v2, v6, v13

    .line 223
    .local v2, "i":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    rem-int v5, v6, v13

    .line 224
    .local v5, "k":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 225
    move-object/from16 v0, p1

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v12

    .line 226
    .local v12, "rightKey":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13, v12}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 227
    invoke-direct {v7, v2, v4}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v9

    .line 228
    .local v9, "outKey":I
    iget-object v13, v7, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13, v9}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v16

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13, v12}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v18

    mul-double v18, v18, v14

    add-double v10, v16, v18

    .line 230
    .local v10, "outValue":D
    const-wide/16 v16, 0x0

    cmpl-double v13, v10, v16

    if-nez v13, :cond_2

    .line 231
    iget-object v13, v7, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13, v9}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    .line 224
    .end local v9    # "outKey":I
    .end local v10    # "outValue":D
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    .restart local v9    # "outKey":I
    .restart local v10    # "outValue":D
    :cond_2
    iget-object v13, v7, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13, v9, v10, v11}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_1

    .line 239
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "key":I
    .end local v9    # "outKey":I
    .end local v10    # "outValue":D
    .end local v12    # "rightKey":I
    .end local v14    # "value":D
    :cond_3
    return-object v7
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 14
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-object v12, v0

    invoke-virtual {p0, v12}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->multiply(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 197
    :cond_0
    return-object v8

    .line 180
    :catch_0
    move-exception v2

    .line 182
    .local v2, "cce":Ljava/lang/ClassCastException;
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 184
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v9

    .line 185
    .local v9, "outCols":I
    new-instance v8, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v12, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    invoke-direct {v8, v12, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 186
    .local v8, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    iget-object v12, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v12}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v4

    .local v4, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 187
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 188
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v10

    .line 189
    .local v10, "value":D
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v7

    .line 190
    .local v7, "key":I
    iget v12, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v3, v7, v12

    .line 191
    .local v3, "i":I
    iget v12, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    rem-int v6, v7, v12

    .line 192
    .local v6, "k":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 193
    invoke-interface {p1, v6, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v12

    mul-double/2addr v12, v10

    invoke-virtual {v8, v3, v5, v12, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->addToEntry(IID)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public multiplyEntry(IID)V
    .locals 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "factor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 289
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 290
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v0

    .line 291
    .local v0, "key":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v4

    mul-double v2, v4, p3

    .line 292
    .local v2, "value":D
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0
.end method

.method public setEntry(IID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 261
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 262
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1, p3, p4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 157
    new-instance v2, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    .line 158
    .local v2, "out":Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    iget-object v4, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .local v1, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 160
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v3, v4, v5

    .line 161
    .local v3, "row":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 162
    .local v0, "col":I
    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->setEntry(IID)V

    goto :goto_0

    .line 165
    .end local v0    # "col":I
    .end local v3    # "row":I
    :cond_0
    return-object v2
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 3
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->subtract(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    goto :goto_0
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0

    return-object v0
.end method
