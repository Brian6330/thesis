.class public Lorg/apache/commons/math3/linear/DiagonalMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "DiagonalMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x133068dL


# instance fields
.field private final data:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 52
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    .line 53
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "d"    # [D

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    .line 64
    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 1
    .param p1, "d"    # [D
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 82
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    .line 84
    return-void

    :cond_0
    move-object v0, p1

    .line 83
    goto :goto_0
.end method

.method private ensureZero(D)V
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 316
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 123
    .local v0, "dim":I
    new-array v2, v0, [D

    .line 124
    .local v2, "outData":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 125
    iget-object v3, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v3, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v3, v1

    add-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v3
.end method

.method public addToEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 252
    if-ne p1, p2, :cond_0

    .line 253
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v2, v0, p1

    add-double/2addr v2, p3

    aput-wide v2, v0, p1

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->ensureZero(D)V

    goto :goto_0
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 96
    if-eq p1, p2, :cond_0

    .line 97
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getData()[[D
    .locals 6

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 204
    .local v0, "dim":I
    filled-new-array {v0, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 206
    .local v2, "out":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    aget-object v3, v2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-object v2
.end method

.method public getDataRef()[D
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

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
    .line 226
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 227
    if-ne p1, p2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v0, v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v0, v0

    return v0
.end method

.method public inverse()Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v0

    return-object v0
.end method

.method public inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 7
    .param p1, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->isSingular(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    new-instance v2, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v2}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v2

    .line 348
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v2, v2

    new-array v1, v2, [D

    .line 349
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 350
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v2
.end method

.method public isSingular(D)Z
    .locals 7
    .param p1, "threshold"    # D

    .prologue
    .line 363
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 364
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    .line 368
    :goto_1
    return v0

    .line 363
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 165
    .local v0, "dim":I
    new-array v2, v0, [D

    .line 166
    .local v2, "outData":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    iget-object v3, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v3, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v3, v1

    mul-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v3
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 184
    instance-of v5, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v5, :cond_0

    .line 185
    check-cast p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    .end local p1    # "m":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v5

    .line 196
    :goto_0
    return-object v5

    .line 187
    .restart local p1    # "m":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 188
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    .line 189
    .local v2, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 190
    .local v1, "nCols":I
    filled-new-array {v2, v1}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 191
    .local v3, "product":[[D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 192
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 193
    aget-object v5, v3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v6, v4

    invoke-interface {p1, v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "c":I
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    goto :goto_0
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
    .line 267
    if-ne p1, p2, :cond_0

    .line 268
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v2, v0, p1

    mul-double/2addr v2, p3

    aput-wide v2, v0, p1

    .line 271
    :cond_0
    return-void
.end method

.method public operate([D)[D
    .locals 2
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getDataRef()[D

    move-result-object v0

    return-object v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 303
    instance-of v1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v1, :cond_0

    .line 304
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    .line 308
    .local v0, "vectorData":[D
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->preMultiply([D)[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealVector([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1

    .line 306
    .end local v0    # "vectorData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    .restart local v0    # "vectorData":[D
    goto :goto_0
.end method

.method public preMultiply([D)[D
    .locals 1
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->operate([D)[D

    move-result-object v0

    return-object v0
.end method

.method public setEntry(IID)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 236
    if-ne p1, p2, :cond_0

    .line 237
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aput-wide p3, v0, p1

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->ensureZero(D)V

    goto :goto_0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 144
    .local v0, "dim":I
    new-array v2, v0, [D

    .line 145
    .local v2, "outData":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 146
    iget-object v3, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v3, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v3
.end method
