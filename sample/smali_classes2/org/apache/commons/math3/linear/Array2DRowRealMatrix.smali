.class public Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "Array2DRowRealMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xecfca64605e8958L


# instance fields
.field private data:[[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 61
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 62
    return-void
.end method

.method public constructor <init>([D)V
    .locals 6
    .param p1, "v"    # [D

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 132
    array-length v0, p1

    .line 133
    .local v0, "nRows":I
    const/4 v2, 0x1

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 134
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aget-wide v4, p1, v1

    aput-wide v4, v2, v3

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0
    .param p1, "d"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyIn([[D)V

    .line 80
    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 5
    .param p1, "d"    # [[D
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyIn([[D)V

    .line 122
    :goto_0
    return-void

    .line 104
    :cond_0
    if-nez p1, :cond_1

    .line 105
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 107
    :cond_1
    array-length v1, p1

    .line 108
    .local v1, "nRows":I
    if-nez v1, :cond_2

    .line 109
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 111
    :cond_2
    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v0, v3

    .line 112
    .local v0, "nCols":I
    if-nez v0, :cond_3

    .line 113
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 115
    :cond_3
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 116
    aget-object v3, p1, v2

    array-length v3, v3

    if-eq v3, v0, :cond_4

    .line 117
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v2

    array-length v4, v4

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 115
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :cond_5
    iput-object p1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    goto :goto_0
.end method

.method private copyIn([[D)V
    .locals 1
    .param p1, "in"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setSubMatrix([[DII)V

    .line 547
    return-void
.end method

.method private copyOut()[[D
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 527
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 528
    .local v1, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 530
    .local v2, "out":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 531
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, v0

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v0

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 12
    .param p1, "m"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v7

    .line 167
    .local v7, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 168
    .local v1, "columnCount":I
    filled-new-array {v7, v1}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 169
    .local v4, "outData":[[D
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 170
    iget-object v8, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v2, v8, v6

    .line 171
    .local v2, "dataRow":[D
    iget-object v8, p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v8, v6

    .line 172
    .local v3, "mRow":[D
    aget-object v5, v4, v6

    .line 173
    .local v5, "outDataRow":[D
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 174
    aget-wide v8, v2, v0

    aget-wide v10, v3, v0

    add-double/2addr v8, v10

    aput-wide v8, v5, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "col":I
    .end local v2    # "dataRow":[D
    .end local v3    # "mRow":[D
    .end local v5    # "outDataRow":[D
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v8
.end method

.method public addToEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aget-wide v2, v0, p2

    add-double/2addr v2, p3

    aput-wide v2, v0, p2

    .line 324
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyOut()[[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v1, v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getData()[[D
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyOut()[[D

    move-result-object v0

    return-object v0
.end method

.method public getDataRef()[[D
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    return-object v0
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
    .line 305
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 306
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    array-length v0, v0

    goto :goto_0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 20
    .param p1, "m"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v9

    .line 221
    .local v9, "nRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v8

    .line 222
    .local v8, "nCols":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v10

    .line 224
    .local v10, "nSum":I
    filled-new-array {v9, v8}, [I

    move-result-object v13

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    .line 226
    .local v11, "outData":[[D
    new-array v5, v10, [D

    .line 227
    .local v5, "mCol":[D
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 230
    .local v6, "mData":[[D
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_0
    if-ge v2, v8, :cond_3

    .line 233
    const/4 v7, 0x0

    .local v7, "mRow":I
    :goto_1
    if-ge v7, v10, :cond_0

    .line 234
    aget-object v13, v6, v7

    aget-wide v16, v13, v2

    aput-wide v16, v5, v7

    .line 233
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 237
    :cond_0
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_2
    if-ge v12, v9, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v13, v12

    .line 239
    .local v3, "dataRow":[D
    const-wide/16 v14, 0x0

    .line 240
    .local v14, "sum":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v10, :cond_1

    .line 241
    aget-wide v16, v3, v4

    aget-wide v18, v5, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 243
    :cond_1
    aget-object v13, v11, v12

    aput-wide v14, v13, v2

    .line 237
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 230
    .end local v3    # "dataRow":[D
    .end local v4    # "i":I
    .end local v14    # "sum":D
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v7    # "mRow":I
    .end local v12    # "row":I
    :cond_3
    new-instance v13, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v13, v11, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v13
.end method

.method public multiplyEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "factor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 332
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aget-wide v2, v0, p2

    mul-double/2addr v2, p3

    aput-wide v2, v0, p2

    .line 333
    return-void
.end method

.method public operate([D)[D
    .locals 12
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    .line 352
    .local v3, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 353
    .local v2, "nCols":I
    array-length v8, p1

    if-eq v8, v2, :cond_0

    .line 354
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v9, p1

    invoke-direct {v8, v9, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 356
    :cond_0
    new-array v4, v3, [D

    .line 357
    .local v4, "out":[D
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 358
    iget-object v8, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v8, v5

    .line 359
    .local v0, "dataRow":[D
    const-wide/16 v6, 0x0

    .line 360
    .local v6, "sum":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 361
    aget-wide v8, v0, v1

    aget-wide v10, p1, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_1
    aput-wide v6, v4, v5

    .line 357
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "dataRow":[D
    .end local v1    # "i":I
    .end local v6    # "sum":D
    :cond_2
    return-object v4
.end method

.method public preMultiply([D)[D
    .locals 12
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    .line 373
    .local v3, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 374
    .local v2, "nCols":I
    array-length v5, p1

    if-eq v5, v3, :cond_0

    .line 375
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, p1

    invoke-direct {v5, v8, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 378
    :cond_0
    new-array v4, v2, [D

    .line 379
    .local v4, "out":[D
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 380
    const-wide/16 v6, 0x0

    .line 381
    .local v6, "sum":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 382
    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v1

    aget-wide v8, v5, v0

    aget-wide v10, p1, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    :cond_1
    aput-wide v6, v4, v0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    .end local v6    # "sum":D
    :cond_2
    return-object v4
.end method

.method public setEntry(IID)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 314
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aput-wide p3, v0, p2

    .line 315
    return-void
.end method

.method public setSubMatrix([[DII)V
    .locals 8
    .param p1, "subMatrix"    # [[D
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 271
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-nez v3, :cond_5

    .line 272
    if-lez p2, :cond_0

    .line 273
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ROWS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 275
    :cond_0
    if-lez p3, :cond_1

    .line 276
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_COLUMNS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 278
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    array-length v2, p1

    .line 280
    .local v2, "nRows":I
    if-nez v2, :cond_2

    .line 281
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 284
    :cond_2
    aget-object v3, p1, v7

    array-length v1, v3

    .line 285
    .local v1, "nCols":I
    if-nez v1, :cond_3

    .line 286
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 288
    :cond_3
    array-length v3, p1

    filled-new-array {v3, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 290
    aget-object v3, p1, v0

    array-length v3, v3

    if-eq v3, v1, :cond_4

    .line 291
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v0

    array-length v4, v4

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 293
    :cond_4
    aget-object v3, p1, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    add-int v5, v0, p2

    aget-object v4, v4, v5

    invoke-static {v3, v7, v4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    .end local v1    # "nCols":I
    .end local v2    # "nRows":I
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setSubMatrix([[DII)V

    .line 299
    :cond_6
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 12
    .param p1, "m"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v7

    .line 194
    .local v7, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 195
    .local v1, "columnCount":I
    filled-new-array {v7, v1}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 196
    .local v4, "outData":[[D
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 197
    iget-object v8, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v2, v8, v6

    .line 198
    .local v2, "dataRow":[D
    iget-object v8, p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v8, v6

    .line 199
    .local v3, "mRow":[D
    aget-object v5, v4, v6

    .line 200
    .local v5, "outDataRow":[D
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 201
    aget-wide v8, v2, v0

    aget-wide v10, v3, v0

    sub-double/2addr v8, v10

    aput-wide v8, v5, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "col":I
    .end local v2    # "dataRow":[D
    .end local v3    # "mRow":[D
    .end local v5    # "outDataRow":[D
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v8
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 10
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .prologue
    const/4 v3, 0x0

    .line 460
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 461
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 462
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 463
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 464
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 465
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v9, v0, v7

    .line 466
    .local v9, "rowI":[D
    aget-wide v4, v9, v8

    invoke-interface {p1, v7, v8, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v4

    aput-wide v4, v9, v8

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 463
    .end local v9    # "rowI":[D
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 469
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v4

    return-wide v4
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 10
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 493
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 495
    move v8, p4

    .local v8, "j":I
    :goto_0
    if-gt v8, p5, :cond_1

    .line 496
    move v7, p2

    .local v7, "i":I
    :goto_1
    if-gt v7, p3, :cond_0

    .line 497
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v9, v0, v7

    .line 498
    .local v9, "rowI":[D
    aget-wide v0, v9, v8

    invoke-interface {p1, v7, v8, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v0

    aput-wide v0, v9, v8

    .line 496
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 495
    .end local v9    # "rowI":[D
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 501
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 9
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .prologue
    const/4 v3, 0x0

    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 476
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 477
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 478
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 479
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 480
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, v7

    aget-wide v4, v0, v8

    invoke-interface {p1, v7, v8, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 479
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 478
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 483
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v4

    return-wide v4
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 9
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 513
    move v8, p4

    .local v8, "j":I
    :goto_0
    if-gt v8, p5, :cond_1

    .line 514
    move v7, p2

    .local v7, "i":I
    :goto_1
    if-gt v7, p3, :cond_0

    .line 515
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, v7

    aget-wide v0, v0, v8

    invoke-interface {p1, v7, v8, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 513
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 518
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 10
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 395
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 396
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 397
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 398
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v9, v0, v7

    .line 399
    .local v9, "rowI":[D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 400
    aget-wide v4, v9, v8

    invoke-interface {p1, v7, v8, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v4

    aput-wide v4, v9, v8

    .line 399
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 397
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 403
    .end local v8    # "j":I
    .end local v9    # "rowI":[D
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v4

    return-wide v4
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 10
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 428
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 430
    move v7, p2

    .local v7, "i":I
    :goto_0
    if-gt v7, p3, :cond_1

    .line 431
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v9, v0, v7

    .line 432
    .local v9, "rowI":[D
    move v8, p4

    .local v8, "j":I
    :goto_1
    if-gt v8, p5, :cond_0

    .line 433
    aget-wide v0, v9, v8

    invoke-interface {p1, v7, v8, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v0

    aput-wide v0, v9, v8

    .line 432
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 430
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 436
    .end local v8    # "j":I
    .end local v9    # "rowI":[D
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 10
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 410
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 411
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 412
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 413
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v9, v0, v7

    .line 414
    .local v9, "rowI":[D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 415
    aget-wide v4, v9, v8

    invoke-interface {p1, v7, v8, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 414
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 412
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 418
    .end local v8    # "j":I
    .end local v9    # "rowI":[D
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v4

    return-wide v4
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 10
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 446
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 448
    move v7, p2

    .local v7, "i":I
    :goto_0
    if-gt v7, p3, :cond_1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v9, v0, v7

    .line 450
    .local v9, "rowI":[D
    move v8, p4

    .local v8, "j":I
    :goto_1
    if-gt v8, p5, :cond_0

    .line 451
    aget-wide v0, v9, v8

    invoke-interface {p1, v7, v8, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 450
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 448
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 454
    .end local v8    # "j":I
    .end local v9    # "rowI":[D
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method
