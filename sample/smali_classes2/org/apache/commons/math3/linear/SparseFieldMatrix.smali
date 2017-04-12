.class public Lorg/apache/commons/math3/linear/SparseFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "SparseFieldMatrix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final columns:I

.field private final entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final rows:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 52
    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 53
    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 54
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 55
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

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 70
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 71
    iput p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 72
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p1, "other":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 94
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 96
    new-instance v2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    if-ge v0, v2, :cond_1

    .line 98
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    if-ge v1, v2, :cond_0

    .line 99
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p1, "other":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 82
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 83
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 84
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    iget-object v1, p1, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 85
    return-void
.end method

.method private computeKey(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p3, "increment":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 108
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result v0

    .line 110
    .local v0, "key":I
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {v2, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 111
    .local v1, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/linear/SparseFieldMatrix;)V

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

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    return v0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 140
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    return v0
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p3, "factor":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 154
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 155
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result v0

    .line 156
    .local v0, "key":I
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {v2, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 157
    .local v1, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    .local p3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 169
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method
