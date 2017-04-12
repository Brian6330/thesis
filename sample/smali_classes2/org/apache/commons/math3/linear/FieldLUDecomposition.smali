.class public Lorg/apache/commons/math3/linear/FieldLUDecomposition;
.super Ljava/lang/Object;
.source "FieldLUDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/FieldLUDecomposition$1;,
        Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end field

.field private even:Z

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private lu:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private pivot:[I

.field private singular:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    .local p1, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->isSquare()Z

    move-result v10

    if-nez v10, :cond_0

    .line 86
    new-instance v10, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v11

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v12

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v10

    .line 90
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v4

    .line 91
    .local v4, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    .line 92
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    .line 93
    new-array v10, v4, [I

    iput-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    .line 94
    iput-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 95
    iput-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 96
    iput-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 99
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 100
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aput v6, v10, v6

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iput-boolean v11, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    .line 103
    iput-boolean v12, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    .line 106
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-ge v0, v4, :cond_7

    .line 108
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    .line 111
    .local v7, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_3

    .line 112
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v10, v6

    .line 113
    .local v3, "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v7, v3, v0

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v6, :cond_2

    .line 115
    aget-object v10, v3, v1

    iget-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v13, v13, v1

    aget-object v13, v13, v0

    invoke-interface {v10, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    .line 114
    .restart local v7    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 117
    :cond_2
    aput-object v7, v3, v0

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    .end local v3    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_3
    move v5, v0

    .line 122
    .local v5, "nonZero":I
    move v6, v0

    :goto_4
    if-ge v6, v4, :cond_6

    .line 123
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v10, v6

    .line 124
    .restart local v3    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v7, v3, v0

    .line 125
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_4

    .line 126
    aget-object v10, v3, v1

    iget-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v13, v13, v1

    aget-object v13, v13, v0

    invoke-interface {v10, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    .line 125
    .restart local v7    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 128
    :cond_4
    aput-object v7, v3, v0

    .line 130
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v10, v5

    aget-object v10, v10, v0

    iget-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 122
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 137
    .end local v1    # "i":I
    .end local v3    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_6
    if-lt v5, v4, :cond_8

    .line 138
    iput-boolean v11, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    .line 164
    .end local v5    # "nonZero":I
    .end local v7    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_7
    return-void

    .line 143
    .restart local v5    # "nonZero":I
    .restart local v7    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_8
    if-eq v5, v0, :cond_a

    .line 144
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    .line 145
    .local v9, "tmp":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v4, :cond_9

    .line 146
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v10, v5

    aget-object v9, v10, v1

    .line 147
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v10, v5

    iget-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v13, v13, v0

    aget-object v13, v13, v1

    aput-object v13, v10, v1

    .line 148
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v10, v0

    aput-object v9, v10, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 150
    :cond_9
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v8, v10, v5

    .line 151
    .local v8, "temp":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    iget-object v13, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v13, v13, v0

    aput v13, v10, v5

    .line 152
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aput v8, v10, v0

    .line 153
    iget-boolean v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    if-nez v10, :cond_b

    move v10, v11

    :goto_7
    iput-boolean v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    .line 157
    .end local v1    # "i":I
    .end local v8    # "temp":I
    .end local v9    # "tmp":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_a
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v10, v0

    aget-object v2, v10, v0

    .line 158
    .local v2, "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v6, v0, 0x1

    :goto_8
    if-ge v6, v4, :cond_c

    .line 159
    iget-object v10, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v10, v6

    .line 160
    .restart local v3    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v10, v3, v0

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    aput-object v10, v3, v0

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .end local v2    # "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v3    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v1    # "i":I
    .restart local v8    # "temp":I
    .restart local v9    # "tmp":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_b
    move v10, v12

    .line 153
    goto :goto_7

    .line 106
    .end local v1    # "i":I
    .end local v8    # "temp":I
    .end local v9    # "tmp":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getDeterminant()Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 247
    :goto_0
    return-object v3

    .line 242
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v2, v3

    .line 243
    .local v2, "m":I
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    move-object v0, v3

    .line 244
    .local v0, "determinant":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 245
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "determinant":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 244
    .restart local v0    # "determinant":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 243
    .end local v0    # "determinant":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    move-object v0, v3

    goto :goto_1

    .restart local v0    # "determinant":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v1    # "i":I
    :cond_2
    move-object v3, v0

    .line 247
    goto :goto_0
.end method

.method public getL()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v4, :cond_1

    .line 173
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v3, v4

    .line 174
    .local v3, "m":I
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v4, v5, v3, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 176
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v4, v0

    .line 177
    .local v2, "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v5, v2, v1

    invoke-interface {v4, v0, v1, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v5, v0, v0, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "m":I
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v4
.end method

.method public getP()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v1, v2

    .line 217
    .local v1, "m":I
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v2, v3, v1, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v4, v2, v0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v3, v0, v4, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    .end local v1    # "m":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v2
.end method

.method public getPivot()[I
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldDecompositionSolver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZLorg/apache/commons/math3/linear/FieldLUDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v4, :cond_1

    .line 193
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v3, v4

    .line 194
    .local v3, "m":I
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v4, v5, v3, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 196
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v4, v0

    .line 197
    .local v2, "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 198
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v5, v2, v1

    invoke-interface {v4, v0, v1, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "m":I
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v4
.end method
