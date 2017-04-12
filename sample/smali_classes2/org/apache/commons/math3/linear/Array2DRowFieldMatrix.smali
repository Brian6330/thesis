.class public Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "Array2DRowFieldMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64c363b95c05d22aL


# instance fields
.field private data:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 1
    .param p2, "rowDimension"    # I
    .param p3, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 73
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 199
    array-length v0, p2

    .line 200
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    .line 201
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aget-object v4, p2, v1

    aput-object v4, v2, v3

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 113
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyIn([[Lorg/apache/commons/math3/FieldElement;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 5
    .param p3, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 156
    if-eqz p3, :cond_0

    .line 157
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyIn([[Lorg/apache/commons/math3/FieldElement;)V

    .line 175
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 160
    array-length v1, p2

    .line 161
    .local v1, "nRows":I
    if-nez v1, :cond_1

    .line 162
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 164
    :cond_1
    const/4 v3, 0x0

    aget-object v3, p2, v3

    array-length v0, v3

    .line 165
    .local v0, "nCols":I
    if-nez v0, :cond_2

    .line 166
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 168
    :cond_2
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 169
    aget-object v3, p2, v2

    array-length v3, v3

    if-eq v3, v0, :cond_3

    .line 170
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p2, v2

    array-length v4, v4

    invoke-direct {v3, v0, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 168
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    :cond_4
    iput-object p2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->extractField([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V

    .line 187
    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    .line 93
    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 1
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    .line 135
    return-void
.end method

.method private copyIn([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "in":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V

    .line 611
    return-void
.end method

.method private copyOut()[[Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    const/4 v6, 0x0

    .line 590
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    .line 591
    .local v1, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-static {v3, v1, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    .line 593
    .local v2, "out":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 594
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v0

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v0

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v7

    .line 234
    .local v7, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 235
    .local v1, "columnCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v8

    invoke-static {v8, v7, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/FieldElement;

    .line 236
    .local v4, "outData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 237
    iget-object v8, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v8, v6

    .line 238
    .local v2, "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v8, p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v8, v6

    .line 239
    .local v3, "mRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v5, v4, v6

    .line 240
    .local v5, "outDataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 241
    aget-object v8, v2, v0

    aget-object v9, v3, v0

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v5, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "col":I
    .end local v2    # "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "mRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "outDataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v4, v10}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v8
.end method

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p3, "increment":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkRowIndex(I)V

    .line 386
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkColumnIndex(I)V

    .line 388
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v1, p2

    .line 389
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyOut()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v1, v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyOut()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getDataRef()[[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkRowIndex(I)V

    .line 366
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkColumnIndex(I)V

    .line 368
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 404
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    goto :goto_0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 290
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v4

    .line 291
    .local v4, "nRows":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v3

    .line 292
    .local v3, "nCols":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v5

    .line 293
    .local v5, "nSum":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-static {v10, v4, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/FieldElement;

    .line 294
    .local v6, "outData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v8, 0x0

    .local v8, "row":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 295
    iget-object v10, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v10, v8

    .line 296
    .local v1, "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v7, v6, v8

    .line 297
    .local v7, "outDataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    .line 299
    .local v9, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 300
    aget-object v10, v1, v2

    iget-object v11, p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v11, v11, v2

    aget-object v11, v11, v0

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    .line 299
    .restart local v9    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 302
    :cond_0
    aput-object v9, v7, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    .end local v2    # "i":I
    .end local v9    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "col":I
    .end local v1    # "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v7    # "outDataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v10, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v6, v12}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v10
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p3, "factor":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkRowIndex(I)V

    .line 396
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkColumnIndex(I)V

    .line 398
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v1, p2

    .line 399
    return-void
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v3

    .line 417
    .local v3, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 418
    .local v2, "nCols":I
    array-length v7, p1

    if-eq v7, v2, :cond_0

    .line 419
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, p1

    invoke-direct {v7, v8, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 421
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 422
    .local v4, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 423
    iget-object v7, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v7, v5

    .line 424
    .local v0, "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 425
    .local v6, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 426
    aget-object v7, v0, v1

    aget-object v8, p1, v1

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 425
    .restart local v6    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_1
    aput-object v6, v4, v5

    .line 422
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "i":I
    .end local v6    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    return-object v4
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v3

    .line 437
    .local v3, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 438
    .local v2, "nCols":I
    array-length v6, p1

    if-eq v6, v3, :cond_0

    .line 439
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, p1

    invoke-direct {v6, v7, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 442
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 443
    .local v4, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 444
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    .line 445
    .local v5, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 446
    iget-object v6, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    aget-object v7, p1, v1

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    .line 445
    .restart local v5    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 448
    :cond_1
    aput-object v5, v4, v0

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "i":I
    .end local v5    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    return-object v4
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkRowIndex(I)V

    .line 376
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkColumnIndex(I)V

    .line 378
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p1

    aput-object p3, v0, p2

    .line 379
    return-void
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 8
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "subMatrix":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 332
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    if-nez v3, :cond_5

    .line 333
    if-lez p2, :cond_0

    .line 334
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ROWS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 336
    :cond_0
    if-lez p3, :cond_1

    .line 337
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_COLUMNS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 339
    :cond_1
    array-length v2, p1

    .line 340
    .local v2, "nRows":I
    if-nez v2, :cond_2

    .line 341
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 344
    :cond_2
    aget-object v3, p1, v7

    array-length v1, v3

    .line 345
    .local v1, "nCols":I
    if-nez v1, :cond_3

    .line 346
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 348
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    array-length v4, p1

    invoke-static {v3, v4, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 350
    aget-object v3, p1, v0

    array-length v3, v3

    if-eq v3, v1, :cond_4

    .line 351
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v0

    array-length v4, v4

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 353
    :cond_4
    aget-object v3, p1, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    add-int v5, v0, p2

    aget-object v4, v4, v5

    invoke-static {v3, v7, v4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "i":I
    .end local v1    # "nCols":I
    .end local v2    # "nRows":I
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V

    .line 359
    :cond_6
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v7

    .line 262
    .local v7, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 263
    .local v1, "columnCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v8

    invoke-static {v8, v7, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/FieldElement;

    .line 264
    .local v4, "outData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 265
    iget-object v8, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v8, v6

    .line 266
    .local v2, "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v8, p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v8, v6

    .line 267
    .local v3, "mRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v5, v4, v6

    .line 268
    .local v5, "outDataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 269
    aget-object v8, v2, v0

    aget-object v9, v3, v0

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v5, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "col":I
    .end local v2    # "dataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "mRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "outDataRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v4, v10}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v8
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    const/4 v3, 0x0

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    .line 524
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 525
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 526
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 527
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 528
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v0, v7

    .line 529
    .local v9, "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v0, v9, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    aput-object v0, v9, v8

    .line 527
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 526
    .end local v9    # "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 532
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
            "<TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 556
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 558
    move v8, p4

    .local v8, "j":I
    :goto_0
    if-gt v8, p5, :cond_1

    .line 559
    move v7, p2

    .local v7, "i":I
    :goto_1
    if-gt v7, p3, :cond_0

    .line 560
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v0, v7

    .line 561
    .local v9, "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v0, v9, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    aput-object v0, v9, v8

    .line 559
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 558
    .end local v9    # "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 564
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    .line 539
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 540
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 541
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 542
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 543
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 542
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 541
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 546
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
            "<TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 574
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 576
    move v8, p4

    .local v8, "j":I
    :goto_0
    if-gt v8, p5, :cond_1

    .line 577
    move v7, p2

    .local v7, "i":I
    :goto_1
    if-gt v7, p3, :cond_0

    .line 578
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 577
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 576
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 581
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    const/4 v3, 0x0

    .line 457
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    .line 458
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 459
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 460
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 461
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v0, v7

    .line 462
    .local v9, "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 463
    aget-object v0, v9, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    aput-object v0, v9, v8

    .line 462
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 460
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 466
    .end local v8    # "j":I
    .end local v9    # "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
            "<TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 493
    move v7, p2

    .local v7, "i":I
    :goto_0
    if-gt v7, p3, :cond_1

    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v0, v7

    .line 495
    .local v9, "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v8, p4

    .local v8, "j":I
    :goto_1
    if-gt v8, p5, :cond_0

    .line 496
    aget-object v0, v9, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    aput-object v0, v9, v8

    .line 495
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 493
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 499
    .end local v8    # "j":I
    .end local v9    # "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    const/4 v3, 0x0

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    .line 473
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 474
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 475
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 476
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v0, v7

    .line 477
    .local v9, "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 478
    aget-object v0, v9, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 477
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 475
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 481
    .end local v8    # "j":I
    .end local v9    # "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
            "<TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 509
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 511
    move v7, p2

    .local v7, "i":I
    :goto_0
    if-gt v7, p3, :cond_1

    .line 512
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v0, v7

    .line 513
    .local v9, "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v8, p4

    .local v8, "j":I
    :goto_1
    if-gt v8, p5, :cond_0

    .line 514
    aget-object v0, v9, v8

    invoke-interface {p1, v7, v8, v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 513
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 511
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 517
    .end local v8    # "j":I
    .end local v9    # "rowI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method
