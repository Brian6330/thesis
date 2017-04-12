.class public Lorg/apache/commons/math3/linear/BlockFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "BlockFieldMatrix.java"

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
.field public static final BLOCK_SIZE:I = 0x24

.field private static final serialVersionUID:J = -0x3fdec8c7e872feefL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 7
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p4, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "blockData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-static {p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 153
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 154
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    .line 157
    add-int/lit8 v4, p1, 0x24

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x24

    iput v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    .line 158
    add-int/lit8 v4, p2, 0x24

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x24

    iput v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    .line 160
    if-eqz p4, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    .line 168
    :goto_0
    const/4 v2, 0x0

    .line 169
    .local v2, "index":I
    const/4 v0, 0x0

    .local v0, "iBlock":I
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v0, v4, :cond_4

    .line 170
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v1

    .line 171
    .local v1, "iHeight":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v4, :cond_3

    .line 172
    aget-object v4, p3, v2

    array-length v4, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    mul-int/2addr v5, v1

    if-eq v4, v5, :cond_1

    .line 173
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v5, p3, v2

    array-length v5, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    mul-int/2addr v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 165
    .end local v0    # "iBlock":I
    .end local v1    # "iHeight":I
    .end local v2    # "index":I
    .end local v3    # "jBlock":I
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 176
    .restart local v0    # "iBlock":I
    .restart local v1    # "iHeight":I
    .restart local v2    # "index":I
    .restart local v3    # "jBlock":I
    :cond_1
    if-eqz p4, :cond_2

    .line 177
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, p3, v2

    invoke-virtual {v4}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v5, v2

    .line 171
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v1    # "iHeight":I
    .end local v3    # "jBlock":I
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 1
    .param p2, "rows"    # I
    .param p3, "columns"    # I
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
    .line 102
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 103
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 104
    iput p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    .line 107
    add-int/lit8 v0, p2, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    .line 108
    add-int/lit8 v0, p3, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    .line 111
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    .line 112
    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "rawData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v3, 0x0

    .line 129
    array-length v0, p1

    aget-object v1, p1, v3

    array-length v1, v1

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V

    .line 130
    return-void
.end method

.method private blockHeight(I)I
    .locals 2
    .param p1, "blockRow"    # I

    .prologue
    .line 1581
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    mul-int/lit8 v1, p1, 0x24

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x24

    goto :goto_0
.end method

.method private blockWidth(I)I
    .locals 2
    .param p1, "blockColumn"    # I

    .prologue
    .line 1590
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    mul-int/lit8 v1, p1, 0x24

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x24

    goto :goto_0
.end method

.method private copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V
    .locals 5
    .param p2, "srcWidth"    # I
    .param p3, "srcStartRow"    # I
    .param p4, "srcEndRow"    # I
    .param p5, "srcStartColumn"    # I
    .param p6, "srcEndColumn"    # I
    .param p8, "dstWidth"    # I
    .param p9, "dstStartRow"    # I
    .param p10, "dstStartColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IIIII[TT;III)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "srcBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p7, "dstBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v1, p6, p5

    .line 772
    .local v1, "length":I
    mul-int v4, p3, p2

    add-int v2, v4, p5

    .line 773
    .local v2, "srcPos":I
    mul-int v4, p9, p8

    add-int v0, v4, p10

    .line 774
    .local v0, "dstPos":I
    move v3, p3

    .local v3, "srcRow":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 775
    invoke-static {p1, v2, p7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    add-int/2addr v2, p2

    .line 777
    add-int/2addr v0, p8

    .line 774
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    :cond_0
    return-void
.end method

.method public static createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;
    .locals 15
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;II)[[TT;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    add-int/lit8 v13, p1, 0x24

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v3, v13, 0x24

    .line 272
    .local v3, "blockRows":I
    add-int/lit8 v13, p2, 0x24

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v1, v13, 0x24

    .line 274
    .local v1, "blockColumns":I
    mul-int v13, v3, v1

    const/4 v14, -0x1

    invoke-static {p0, v13, v14}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/FieldElement;

    .line 275
    .local v4, "blocks":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v2, 0x0

    .line 276
    .local v2, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 277
    mul-int/lit8 v10, v5, 0x24

    .line 278
    .local v10, "pStart":I
    add-int/lit8 v13, v10, 0x24

    move/from16 v0, p1

    invoke-static {v13, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 279
    .local v9, "pEnd":I
    sub-int v6, v9, v10

    .line 280
    .local v6, "iHeight":I
    const/4 v7, 0x0

    .local v7, "jBlock":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 281
    mul-int/lit8 v12, v7, 0x24

    .line 282
    .local v12, "qStart":I
    add-int/lit8 v13, v12, 0x24

    move/from16 v0, p2

    invoke-static {v13, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 283
    .local v11, "qEnd":I
    sub-int v8, v11, v12

    .line 284
    .local v8, "jWidth":I
    mul-int v13, v6, v8

    invoke-static {p0, v13}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lorg/apache/commons/math3/FieldElement;

    aput-object v13, v4, v2

    .line 285
    add-int/lit8 v2, v2, 0x1

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 276
    .end local v8    # "jWidth":I
    .end local v11    # "qEnd":I
    .end local v12    # "qStart":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    .end local v6    # "iHeight":I
    .end local v7    # "jBlock":I
    .end local v9    # "pEnd":I
    .end local v10    # "pStart":I
    :cond_1
    return-object v4
.end method

.method public static toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>([[TT;)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "rawData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    .line 211
    .local v21, "rows":I
    const/16 v22, 0x0

    aget-object v22, p0, v22

    move-object/from16 v0, v22

    array-length v7, v0

    .line 212
    .local v7, "columns":I
    add-int/lit8 v22, v21, 0x24

    add-int/lit8 v22, v22, -0x1

    div-int/lit8 v5, v22, 0x24

    .line 213
    .local v5, "blockRows":I
    add-int/lit8 v22, v7, 0x24

    add-int/lit8 v22, v22, -0x1

    div-int/lit8 v3, v22, 0x24

    .line 216
    .local v3, "blockColumns":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_1

    .line 217
    aget-object v22, p0, v9

    move-object/from16 v0, v22

    array-length v15, v0

    .line 218
    .local v15, "length":I
    if-eq v15, v7, :cond_0

    .line 219
    new-instance v22, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, v22

    invoke-direct {v0, v7, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v22

    .line 216
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 224
    .end local v15    # "length":I
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v8

    .line 225
    .local v8, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    mul-int v22, v5, v3

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/FieldElement;

    .line 226
    .local v6, "blocks":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v4, 0x0

    .line 227
    .local v4, "blockIndex":I
    const/4 v10, 0x0

    .local v10, "iBlock":I
    :goto_1
    if-ge v10, v5, :cond_4

    .line 228
    mul-int/lit8 v18, v10, 0x24

    .line 229
    .local v18, "pStart":I
    add-int/lit8 v22, v18, 0x24

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v17

    .line 230
    .local v17, "pEnd":I
    sub-int v11, v17, v18

    .line 231
    .local v11, "iHeight":I
    const/4 v13, 0x0

    .local v13, "jBlock":I
    :goto_2
    if-ge v13, v3, :cond_3

    .line 232
    mul-int/lit8 v20, v13, 0x24

    .line 233
    .local v20, "qStart":I
    add-int/lit8 v22, v20, 0x24

    move/from16 v0, v22

    invoke-static {v0, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v19

    .line 234
    .local v19, "qEnd":I
    sub-int v14, v19, v20

    .line 237
    .local v14, "jWidth":I
    mul-int v22, v11, v14

    move/from16 v0, v22

    invoke-static {v8, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 238
    .local v2, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aput-object v2, v6, v4

    .line 241
    const/4 v12, 0x0

    .line 242
    .local v12, "index":I
    move/from16 v16, v18

    .local v16, "p":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 243
    aget-object v22, p0, v16

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1, v2, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    add-int/2addr v12, v14

    .line 242
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 247
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 231
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 227
    .end local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v12    # "index":I
    .end local v14    # "jWidth":I
    .end local v16    # "p":I
    .end local v19    # "qEnd":I
    .end local v20    # "qStart":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 251
    .end local v11    # "iHeight":I
    .end local v13    # "jBlock":I
    .end local v17    # "pEnd":I
    .end local v18    # "pStart":I
    :cond_4
    return-object v6
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 373
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v3, v6, v7, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 376
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 377
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v6, v0

    .line 378
    .local v4, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v6, v0

    .line 379
    .local v5, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v6, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v6, v0

    .line 380
    .local v2, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 381
    aget-object v6, v5, v1

    aget-object v7, v2, v1

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v4, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "k":I
    .end local v2    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    return-object v3
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 355
    :cond_0
    return-object v8

    .line 322
    :catch_0
    move-exception v4

    .line 325
    .local v4, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 327
    new-instance v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 330
    .local v8, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v3, 0x0

    .line 331
    .local v3, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v0, v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 332
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v0, v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 335
    iget-object v0, v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    aget-object v9, v17, v3

    .line 336
    .local v9, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    aget-object v16, v17, v3

    .line 337
    .local v16, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v12, v5, 0x24

    .line 338
    .local v12, "pStart":I
    add-int/lit8 v17, v12, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 339
    .local v11, "pEnd":I
    mul-int/lit8 v15, v6, 0x24

    .line 340
    .local v15, "qStart":I
    add-int/lit8 v17, v15, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    .line 341
    .local v14, "qEnd":I
    const/4 v7, 0x0

    .line 342
    .local v7, "k":I
    move v10, v12

    .local v10, "p":I
    :goto_2
    if-ge v10, v11, :cond_2

    .line 343
    move v13, v15

    .local v13, "q":I
    :goto_3
    if-ge v13, v14, :cond_1

    .line 344
    aget-object v17, v16, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v13}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/FieldElement;

    aput-object v17, v9, v7

    .line 345
    add-int/lit8 v7, v7, 0x1

    .line 343
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 342
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 350
    .end local v13    # "q":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 332
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 331
    .end local v7    # "k":I
    .end local v9    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v10    # "p":I
    .end local v11    # "pEnd":I
    .end local v12    # "pStart":I
    .end local v14    # "qEnd":I
    .end local v15    # "qStart":I
    .end local v16    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 6
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
    .line 1190
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "increment":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1191
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1193
    div-int/lit8 v1, p1, 0x24

    .line 1194
    .local v1, "iBlock":I
    div-int/lit8 v2, p2, 0x24

    .line 1195
    .local v2, "jBlock":I
    mul-int/lit8 v4, v1, 0x24

    sub-int v4, p1, v4

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x24

    sub-int v5, p2, v5

    add-int v3, v4, v5

    .line 1197
    .local v3, "k":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aget-object v0, v4, v5

    .line 1199
    .local v0, "blockIJ":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v4, v0, v3

    invoke-interface {v4, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v0, v3

    .line 1200
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v5, 0x0

    .line 306
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 309
    .local v0, "copied":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 310
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
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
    .line 297
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumn(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 12
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1113
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1114
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/FieldElement;

    .line 1117
    .local v7, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v4, p1, 0x24

    .line 1118
    .local v4, "jBlock":I
    mul-int/lit8 v10, v4, 0x24

    sub-int v5, p1, v10

    .line 1119
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 1120
    .local v6, "jWidth":I
    const/4 v8, 0x0

    .line 1121
    .local v8, "outIndex":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v2, v10, :cond_1

    .line 1122
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v3

    .line 1123
    .local v3, "iHeight":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v0, v10, v11

    .line 1124
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    move v9, v8

    .end local v8    # "outIndex":I
    .local v9, "outIndex":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1125
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    mul-int v10, v1, v6

    add-int/2addr v10, v5

    aget-object v10, v0, v10

    aput-object v10, v7, v9

    .line 1124
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "outIndex":I
    .restart local v9    # "outIndex":I
    goto :goto_1

    .line 1121
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v8, v9

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    goto :goto_0

    .line 1129
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_1
    return-object v7
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 1266
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 15
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 925
    new-instance v7, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v12

    iget v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    const/4 v14, 0x1

    invoke-direct {v7, v12, v13, v14}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 928
    .local v7, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    div-int/lit8 v4, p1, 0x24

    .line 929
    .local v4, "jBlock":I
    mul-int/lit8 v12, v4, 0x24

    sub-int v5, p1, v12

    .line 930
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 931
    .local v6, "jWidth":I
    const/4 v9, 0x0

    .line 932
    .local v9, "outBlockIndex":I
    const/4 v10, 0x0

    .line 933
    .local v10, "outIndex":I
    iget-object v12, v7, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v12, v9

    .line 934
    .local v8, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v12, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v2, v12, :cond_2

    .line 935
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v3

    .line 936
    .local v3, "iHeight":I
    iget-object v12, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v13, v2

    add-int/2addr v13, v4

    aget-object v0, v12, v13

    .line 937
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 938
    array-length v12, v8

    if-lt v10, v12, :cond_0

    .line 939
    iget-object v12, v7, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v12, v9

    .line 940
    const/4 v10, 0x0

    .line 942
    :cond_0
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "outIndex":I
    .local v11, "outIndex":I
    mul-int v12, v1, v6

    add-int/2addr v12, v5

    aget-object v12, v0, v12

    aput-object v12, v8, v10

    .line 937
    add-int/lit8 v1, v1, 0x1

    move v10, v11

    .end local v11    # "outIndex":I
    .restart local v10    # "outIndex":I
    goto :goto_1

    .line 934
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_2
    return-object v7
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 13
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1038
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1039
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/FieldElement;

    .line 1042
    .local v7, "outData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v4, p1, 0x24

    .line 1043
    .local v4, "jBlock":I
    mul-int/lit8 v10, v4, 0x24

    sub-int v5, p1, v10

    .line 1044
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 1045
    .local v6, "jWidth":I
    const/4 v8, 0x0

    .line 1046
    .local v8, "outIndex":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v2, v10, :cond_1

    .line 1047
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v3

    .line 1048
    .local v3, "iHeight":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v0, v10, v11

    .line 1049
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    move v9, v8

    .end local v8    # "outIndex":I
    .local v9, "outIndex":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1050
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    mul-int v10, v1, v6

    add-int/2addr v10, v5

    aget-object v10, v0, v10

    aput-object v10, v7, v9

    .line 1049
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "outIndex":I
    .restart local v9    # "outIndex":I
    goto :goto_1

    .line 1046
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v8, v9

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    goto :goto_0

    .line 1054
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_1
    new-instance v10, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v7, v12}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v10
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v16

    invoke-static/range {v14 .. v16}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/FieldElement;

    .line 631
    .local v3, "data":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v15, v15, -0x1

    mul-int/lit8 v15, v15, 0x24

    sub-int v8, v14, v15

    .line 633
    .local v8, "lastColumns":I
    const/4 v6, 0x0

    .local v6, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v6, v14, :cond_2

    .line 634
    mul-int/lit8 v12, v6, 0x24

    .line 635
    .local v12, "pStart":I
    add-int/lit8 v14, v12, 0x24

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 636
    .local v11, "pEnd":I
    const/4 v13, 0x0

    .line 637
    .local v13, "regularPos":I
    const/4 v9, 0x0

    .line 638
    .local v9, "lastPos":I
    move v10, v12

    .local v10, "p":I
    :goto_1
    if-ge v10, v11, :cond_1

    .line 639
    aget-object v4, v3, v10

    .line 640
    .local v4, "dataP":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v1, v6, v14

    .line 641
    .local v1, "blockIndex":I
    const/4 v5, 0x0

    .line 642
    .local v5, "dataPos":I
    const/4 v7, 0x0

    .local v7, "jBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v14, v14, -0x1

    if-ge v7, v14, :cond_0

    .line 643
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "blockIndex":I
    .local v2, "blockIndex":I
    aget-object v14, v14, v1

    const/16 v15, 0x24

    invoke-static {v14, v13, v4, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    add-int/lit8 v5, v5, 0x24

    .line 642
    add-int/lit8 v7, v7, 0x1

    move v1, v2

    .end local v2    # "blockIndex":I
    .restart local v1    # "blockIndex":I
    goto :goto_2

    .line 646
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v14, v14, v1

    invoke-static {v14, v9, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    add-int/lit8 v13, v13, 0x24

    .line 648
    add-int/2addr v9, v8

    .line 638
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 633
    .end local v1    # "blockIndex":I
    .end local v4    # "dataP":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "dataPos":I
    .end local v7    # "jBlock":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 652
    .end local v9    # "lastPos":I
    .end local v10    # "p":I
    .end local v11    # "pEnd":I
    .end local v12    # "pStart":I
    .end local v13    # "regularPos":I
    :cond_2
    return-object v3
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 5
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
    .line 1160
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1161
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1163
    div-int/lit8 v0, p1, 0x24

    .line 1164
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x24

    .line 1165
    .local v1, "jBlock":I
    mul-int/lit8 v3, v0, 0x24

    sub-int v3, p1, v3

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x24

    sub-int v4, p2, v4

    add-int v2, v3, v4

    .line 1168
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    return-object v3
.end method

.method public getRow(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/FieldElement;

    .line 1075
    .local v5, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v1, p1, 0x24

    .line 1076
    .local v1, "iBlock":I
    mul-int/lit8 v7, v1, 0x24

    sub-int v2, p1, v7

    .line 1077
    .local v2, "iRow":I
    const/4 v6, 0x0

    .line 1078
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v7, :cond_0

    .line 1079
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    .line 1080
    .local v4, "jWidth":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    aget-object v0, v7, v8

    .line 1081
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int v7, v2, v4

    invoke-static {v0, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    add-int/2addr v6, v4

    .line 1078
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "jWidth":I
    :cond_0
    return-object v5
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 1260
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 13
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 839
    new-instance v6, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    const/4 v11, 0x1

    iget v12, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v6, v10, v11, v12}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 842
    .local v6, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    div-int/lit8 v2, p1, 0x24

    .line 843
    .local v2, "iBlock":I
    mul-int/lit8 v10, v2, 0x24

    sub-int v3, p1, v10

    .line 844
    .local v3, "iRow":I
    const/4 v8, 0x0

    .line 845
    .local v8, "outBlockIndex":I
    const/4 v9, 0x0

    .line 846
    .local v9, "outIndex":I
    iget-object v10, v6, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v10, v8

    .line 847
    .local v7, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v10, :cond_1

    .line 848
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 849
    .local v5, "jWidth":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v1, v10, v11

    .line 850
    .local v1, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    array-length v10, v7

    sub-int v0, v10, v9

    .line 851
    .local v0, "available":I
    if-le v5, v0, :cond_0

    .line 852
    mul-int v10, v3, v5

    invoke-static {v1, v10, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v10, v6, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v10, v8

    .line 854
    mul-int v10, v3, v5

    const/4 v11, 0x0

    sub-int v12, v5, v0

    invoke-static {v1, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    sub-int v9, v5, v0

    .line 847
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 857
    :cond_0
    mul-int v10, v3, v5

    invoke-static {v1, v10, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    add-int/2addr v9, v5

    goto :goto_1

    .line 862
    .end local v0    # "available":I
    .end local v1    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "jWidth":I
    :cond_1
    return-object v6
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 10
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1007
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/FieldElement;

    .line 1010
    .local v5, "outData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v1, p1, 0x24

    .line 1011
    .local v1, "iBlock":I
    mul-int/lit8 v7, v1, 0x24

    sub-int v2, p1, v7

    .line 1012
    .local v2, "iRow":I
    const/4 v6, 0x0

    .line 1013
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v7, :cond_0

    .line 1014
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    .line 1015
    .local v4, "jWidth":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    aget-object v0, v7, v8

    .line 1016
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int v7, v2, v4

    invoke-static {v0, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1017
    add-int/2addr v6, v4

    .line 1013
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "jWidth":I
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v7
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 39
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 665
    new-instance v35, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    sub-int v6, p4, p3

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v35

    invoke-direct {v0, v2, v3, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 669
    .local v35, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    div-int/lit8 v30, p1, 0x24

    .line 670
    .local v30, "blockStartRow":I
    rem-int/lit8 v5, p1, 0x24

    .line 671
    .local v5, "rowsShift":I
    div-int/lit8 v29, p3, 0x24

    .line 672
    .local v29, "blockStartColumn":I
    rem-int/lit8 v7, p3, 0x24

    .line 675
    .local v7, "columnsShift":I
    move/from16 v37, v30

    .line 676
    .local v37, "pBlock":I
    const/16 v31, 0x0

    .local v31, "iBlock":I
    :goto_0
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v0, v31

    if-ge v0, v2, :cond_4

    .line 677
    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v32

    .line 678
    .local v32, "iHeight":I
    move/from16 v38, v29

    .line 679
    .local v38, "qBlock":I
    const/16 v34, 0x0

    .local v34, "jBlock":I
    :goto_1
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v0, v34

    if-ge v0, v2, :cond_3

    .line 680
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v10

    .line 683
    .local v10, "jWidth":I
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v2, v2, v31

    add-int v36, v2, v34

    .line 684
    .local v36, "outIndex":I
    move-object/from16 v0, v35

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v2, v36

    .line 685
    .local v9, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v2, v2, v37

    add-int v33, v2, v38

    .line 686
    .local v33, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    .line 688
    .local v4, "width":I
    add-int v2, v32, v5

    add-int/lit8 v22, v2, -0x24

    .line 689
    .local v22, "heightExcess":I
    add-int v2, v10, v7

    add-int/lit8 v17, v2, -0x24

    .line 690
    .local v17, "widthExcess":I
    if-lez v22, :cond_1

    .line 692
    if-lez v17, :cond_0

    .line 694
    add-int/lit8 v2, v38, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v13

    .line 695
    .local v13, "width2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v2, v33

    const/16 v6, 0x24

    const/16 v8, 0x24

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v33, 0x1

    aget-object v12, v2, v3

    const/16 v15, 0x24

    const/16 v16, 0x0

    const/16 v20, 0x0

    sub-int v21, v10, v17

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v3, v3, v33

    aget-object v19, v2, v3

    const/16 v21, 0x0

    const/16 v24, 0x24

    sub-int v27, v32, v22

    const/16 v28, 0x0

    move-object/from16 v18, p0

    move/from16 v20, v4

    move/from16 v23, v7

    move-object/from16 v25, v9

    move/from16 v26, v10

    invoke-direct/range {v18 .. v28}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v3, v3, v33

    add-int/lit8 v3, v3, 0x1

    aget-object v12, v2, v3

    const/4 v14, 0x0

    const/16 v16, 0x0

    sub-int v20, v32, v22

    sub-int v21, v10, v17

    move-object/from16 v11, p0

    move/from16 v15, v22

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 743
    .end local v13    # "width2":I
    :goto_2
    add-int/lit8 v38, v38, 0x1

    .line 679
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 713
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v2, v33

    const/16 v6, 0x24

    add-int v8, v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v3, v3, v33

    aget-object v19, v2, v3

    const/16 v21, 0x0

    add-int v24, v10, v7

    sub-int v27, v32, v22

    const/16 v28, 0x0

    move-object/from16 v18, p0

    move/from16 v20, v4

    move/from16 v23, v7

    move-object/from16 v25, v9

    move/from16 v26, v10

    invoke-direct/range {v18 .. v28}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    goto :goto_2

    .line 724
    :cond_1
    if-lez v17, :cond_2

    .line 726
    add-int/lit8 v2, v38, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v13

    .line 727
    .restart local v13    # "width2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v2, v33

    add-int v6, v32, v5

    const/16 v8, 0x24

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v33, 0x1

    aget-object v12, v2, v3

    add-int v15, v32, v5

    const/16 v16, 0x0

    const/16 v20, 0x0

    sub-int v21, v10, v17

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    goto :goto_2

    .line 737
    .end local v13    # "width2":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v2, v33

    add-int v6, v32, v5

    add-int v8, v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    goto :goto_2

    .line 745
    .end local v4    # "width":I
    .end local v9    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v10    # "jWidth":I
    .end local v17    # "widthExcess":I
    .end local v22    # "heightExcess":I
    .end local v33    # "index":I
    .end local v36    # "outIndex":I
    :cond_3
    add-int/lit8 v37, v37, 0x1

    .line 676
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    .line 748
    .end local v32    # "iHeight":I
    .end local v34    # "jBlock":I
    .end local v38    # "qBlock":I
    :cond_4
    return-object v35
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 567
    new-instance v21, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 568
    .local v21, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/commons/math3/FieldElement;

    .line 571
    .local v28, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .line 572
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v5, v0, :cond_5

    .line 574
    mul-int/lit8 v25, v5, 0x24

    .line 575
    .local v25, "pStart":I
    add-int/lit8 v29, v25, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v24

    .line 577
    .local v24, "pEnd":I
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v6, v0, :cond_4

    .line 578
    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    .line 579
    .local v7, "jWidth":I
    add-int v8, v7, v7

    .line 580
    .local v8, "jWidth2":I
    add-int v9, v8, v7

    .line 581
    .local v9, "jWidth3":I
    add-int v10, v9, v7

    .line 584
    .local v10, "jWidth4":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v29, v0

    aget-object v22, v29, v4

    .line 587
    .local v22, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v12, 0x0

    .local v12, "kBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v12, v0, :cond_3

    .line 588
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v13

    .line 589
    .local v13, "kWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v30, v0

    mul-int v30, v30, v5

    add-int v30, v30, v12

    aget-object v27, v29, v30

    .line 590
    .local v27, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v30, v0

    mul-int v30, v30, v12

    add-int v30, v30, v6

    aget-object v18, v29, v30

    .line 591
    .local v18, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v11, 0x0

    .line 592
    .local v11, "k":I
    move/from16 v23, v25

    .local v23, "p":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 593
    sub-int v29, v23, v25

    mul-int v17, v29, v13

    .line 594
    .local v17, "lStart":I
    add-int v16, v17, v13

    .line 595
    .local v16, "lEnd":I
    const/16 v20, 0x0

    .local v20, "nStart":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v7, :cond_1

    .line 596
    move-object/from16 v26, v28

    .line 597
    .local v26, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v14, v17

    .line 598
    .local v14, "l":I
    move/from16 v19, v20

    .line 599
    .local v19, "n":I
    :goto_5
    add-int/lit8 v29, v16, -0x3

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 600
    aget-object v29, v27, v14

    aget-object v30, v18, v19

    invoke-interface/range {v29 .. v30}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v30, v14, 0x1

    aget-object v30, v27, v30

    add-int v31, v19, v7

    aget-object v31, v18, v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v30, v14, 0x2

    aget-object v30, v27, v30

    add-int v31, v19, v8

    aget-object v31, v18, v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v30, v14, 0x3

    aget-object v30, v27, v30

    add-int v31, v19, v9

    aget-object v31, v18, v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v26, Lorg/apache/commons/math3/FieldElement;

    .line 605
    .restart local v26    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v14, v14, 0x4

    .line 606
    add-int v19, v19, v10

    goto :goto_5

    .line 608
    .end local v14    # "l":I
    .local v15, "l":I
    :goto_6
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 609
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "l":I
    .restart local v14    # "l":I
    aget-object v29, v27, v15

    aget-object v30, v18, v19

    invoke-interface/range {v29 .. v30}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v26, Lorg/apache/commons/math3/FieldElement;

    .line 610
    .restart local v26    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int v19, v19, v7

    move v15, v14

    .end local v14    # "l":I
    .restart local v15    # "l":I
    goto :goto_6

    .line 612
    :cond_0
    aget-object v29, v22, v11

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/FieldElement;

    aput-object v29, v22, v11

    .line 613
    add-int/lit8 v11, v11, 0x1

    .line 595
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 592
    .end local v15    # "l":I
    .end local v19    # "n":I
    .end local v26    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 587
    .end local v16    # "lEnd":I
    .end local v17    # "lStart":I
    .end local v20    # "nStart":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 619
    .end local v11    # "k":I
    .end local v13    # "kWidth":I
    .end local v18    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v23    # "p":I
    .end local v27    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 577
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 572
    .end local v7    # "jWidth":I
    .end local v8    # "jWidth2":I
    .end local v9    # "jWidth3":I
    .end local v10    # "jWidth4":I
    .end local v12    # "kBlock":I
    .end local v22    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 623
    .end local v6    # "jBlock":I
    .end local v24    # "pEnd":I
    .end local v25    # "pStart":I
    :cond_5
    return-object v21

    .restart local v6    # "jBlock":I
    .restart local v7    # "jWidth":I
    .restart local v8    # "jWidth2":I
    .restart local v9    # "jWidth3":I
    .restart local v10    # "jWidth4":I
    .restart local v11    # "k":I
    .restart local v12    # "kBlock":I
    .restart local v13    # "kWidth":I
    .restart local v14    # "l":I
    .restart local v16    # "lEnd":I
    .restart local v17    # "lStart":I
    .restart local v18    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v19    # "n":I
    .restart local v20    # "nStart":I
    .restart local v22    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v23    # "p":I
    .restart local v24    # "pEnd":I
    .restart local v25    # "pStart":I
    .restart local v26    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v27    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_6
    move v15, v14

    .end local v14    # "l":I
    .restart local v15    # "l":I
    goto :goto_6
.end method

.method public multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 550
    :cond_0
    return-object v13

    .line 499
    :catch_0
    move-exception v4

    .line 502
    .local v4, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 504
    new-instance v13, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v27, v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 505
    .local v13, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/FieldElement;

    .line 508
    .local v25, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .line 509
    .local v3, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v0, v13, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v5, v0, :cond_0

    .line 511
    mul-int/lit8 v17, v5, 0x24

    .line 512
    .local v17, "pStart":I
    add-int/lit8 v26, v17, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v16

    .line 514
    .local v16, "pEnd":I
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v0, v13, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_5

    .line 516
    mul-int/lit8 v20, v6, 0x24

    .line 517
    .local v20, "qStart":I
    add-int/lit8 v26, v20, 0x24

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v27

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v19

    .line 520
    .local v19, "qEnd":I
    iget-object v0, v13, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v26, v0

    aget-object v14, v26, v3

    .line 523
    .local v14, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .local v8, "kBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v8, v0, :cond_4

    .line 524
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    .line 525
    .local v9, "kWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v27, v0

    mul-int v27, v27, v5

    add-int v27, v27, v8

    aget-object v24, v26, v27

    .line 526
    .local v24, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v22, v8, 0x24

    .line 527
    .local v22, "rStart":I
    const/4 v7, 0x0

    .line 528
    .local v7, "k":I
    move/from16 v15, v17

    .local v15, "p":I
    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 529
    sub-int v26, v15, v17

    mul-int v12, v26, v9

    .line 530
    .local v12, "lStart":I
    add-int v11, v12, v9

    .line 531
    .local v11, "lEnd":I
    move/from16 v18, v20

    .local v18, "q":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 532
    move-object/from16 v23, v25

    .line 533
    .local v23, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v21, v22

    .line 534
    .local v21, "r":I
    move v10, v12

    .local v10, "l":I
    :goto_5
    if-ge v10, v11, :cond_1

    .line 535
    aget-object v26, v24, v10

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v23, Lorg/apache/commons/math3/FieldElement;

    .line 536
    .restart local v23    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v21, v21, 0x1

    .line 534
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 538
    :cond_1
    aget-object v26, v14, v7

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/FieldElement;

    aput-object v26, v14, v7

    .line 539
    add-int/lit8 v7, v7, 0x1

    .line 531
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 528
    .end local v10    # "l":I
    .end local v21    # "r":I
    .end local v23    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 523
    .end local v11    # "lEnd":I
    .end local v12    # "lStart":I
    .end local v18    # "q":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 545
    .end local v7    # "k":I
    .end local v9    # "kWidth":I
    .end local v15    # "p":I
    .end local v22    # "rStart":I
    .end local v24    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 514
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 509
    .end local v8    # "kBlock":I
    .end local v14    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v19    # "qEnd":I
    .end local v20    # "qStart":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 6
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
    .line 1206
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "factor":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1207
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1209
    div-int/lit8 v1, p1, 0x24

    .line 1210
    .local v1, "iBlock":I
    div-int/lit8 v2, p2, 0x24

    .line 1211
    .local v2, "jBlock":I
    mul-int/lit8 v4, v1, 0x24

    sub-int v4, p1, v4

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x24

    sub-int v5, p2, v5

    add-int v3, v4, v5

    .line 1213
    .local v3, "k":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aget-object v0, v4, v5

    .line 1215
    .local v0, "blockIJ":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v4, v0, v3

    invoke-interface {v4, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v0, v3

    .line 1216
    return-void
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 20
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
    .line 1272
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1273
    new-instance v17, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v17

    .line 1275
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/FieldElement;

    .line 1276
    .local v7, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/FieldElement;

    .line 1279
    .local v16, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_4

    .line 1280
    mul-int/lit8 v10, v3, 0x24

    .line 1281
    .local v10, "pStart":I
    add-int/lit8 v17, v10, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 1282
    .local v9, "pEnd":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v18, v0

    mul-int v18, v18, v3

    add-int v18, v18, v4

    aget-object v2, v17, v18

    .line 1284
    .local v2, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v14, v4, 0x24

    .line 1285
    .local v14, "qStart":I
    add-int/lit8 v17, v14, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1286
    .local v13, "qEnd":I
    const/4 v5, 0x0

    .line 1287
    .local v5, "k":I
    move v8, v10

    .local v8, "p":I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 1288
    move-object/from16 v15, v16

    .line 1289
    .local v15, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move v11, v14

    .line 1290
    .local v11, "q":I
    :goto_3
    add-int/lit8 v17, v13, -0x3

    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    .line 1291
    aget-object v17, v2, v5

    aget-object v18, p1, v11

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v18, v5, 0x1

    aget-object v18, v2, v18

    add-int/lit8 v19, v11, 0x1

    aget-object v19, p1, v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v18, v5, 0x2

    aget-object v18, v2, v18

    add-int/lit8 v19, v11, 0x2

    aget-object v19, p1, v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v18, v5, 0x3

    aget-object v18, v2, v18

    add-int/lit8 v19, v11, 0x3

    aget-object v19, p1, v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v15, Lorg/apache/commons/math3/FieldElement;

    .line 1296
    .restart local v15    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x4

    .line 1297
    add-int/lit8 v11, v11, 0x4

    goto :goto_3

    .line 1299
    .end local v5    # "k":I
    .end local v11    # "q":I
    .local v6, "k":I
    .local v12, "q":I
    :goto_4
    if-ge v12, v13, :cond_1

    .line 1300
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    aget-object v17, v2, v6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "q":I
    .restart local v11    # "q":I
    aget-object v18, p1, v12

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v15, Lorg/apache/commons/math3/FieldElement;

    .restart local v15    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move v12, v11

    .end local v11    # "q":I
    .restart local v12    # "q":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    goto :goto_4

    .line 1302
    :cond_1
    aget-object v17, v7, v8

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/FieldElement;

    aput-object v17, v7, v8

    .line 1287
    add-int/lit8 v8, v8, 0x1

    move v5, v6

    .end local v6    # "k":I
    .restart local v5    # "k":I
    goto :goto_2

    .line 1282
    .end local v12    # "q":I
    .end local v15    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1279
    .end local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "k":I
    .end local v8    # "p":I
    .end local v13    # "qEnd":I
    .end local v14    # "qStart":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1307
    .end local v4    # "jBlock":I
    .end local v9    # "pEnd":I
    .end local v10    # "pStart":I
    :cond_4
    return-object v7

    .restart local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v4    # "jBlock":I
    .restart local v5    # "k":I
    .restart local v8    # "p":I
    .restart local v9    # "pEnd":I
    .restart local v10    # "pStart":I
    .restart local v11    # "q":I
    .restart local v13    # "qEnd":I
    .restart local v14    # "qStart":I
    .restart local v15    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_5
    move v12, v11

    .end local v11    # "q":I
    .restart local v12    # "q":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    goto :goto_4
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 23
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
    .line 1314
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1315
    new-instance v20, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v20

    .line 1317
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/commons/math3/FieldElement;

    .line 1318
    .local v10, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/FieldElement;

    .line 1321
    .local v19, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    .line 1322
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1323
    .local v5, "jWidth":I
    add-int v6, v5, v5

    .line 1324
    .local v6, "jWidth2":I
    add-int v7, v6, v5

    .line 1325
    .local v7, "jWidth3":I
    add-int v8, v7, v5

    .line 1326
    .local v8, "jWidth4":I
    mul-int/lit8 v17, v4, 0x24

    .line 1327
    .local v17, "qStart":I
    add-int/lit8 v20, v17, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v16

    .line 1328
    .local v16, "qEnd":I
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v3, v0, :cond_3

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v21, v0

    mul-int v21, v21, v3

    add-int v21, v21, v4

    aget-object v2, v20, v21

    .line 1330
    .local v2, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v14, v3, 0x24

    .line 1331
    .local v14, "pStart":I
    add-int/lit8 v20, v14, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1332
    .local v13, "pEnd":I
    move/from16 v15, v17

    .local v15, "q":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 1333
    sub-int v9, v15, v17

    .line 1334
    .local v9, "k":I
    move-object/from16 v18, v19

    .line 1335
    .local v18, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move v11, v14

    .line 1336
    .local v11, "p":I
    :goto_3
    add-int/lit8 v20, v13, -0x3

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 1337
    aget-object v20, v2, v9

    aget-object v21, p1, v11

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/FieldElement;

    add-int v21, v9, v5

    aget-object v21, v2, v21

    add-int/lit8 v22, v11, 0x1

    aget-object v22, p1, v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/FieldElement;

    add-int v21, v9, v6

    aget-object v21, v2, v21

    add-int/lit8 v22, v11, 0x2

    aget-object v22, p1, v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/FieldElement;

    add-int v21, v9, v7

    aget-object v21, v2, v21

    add-int/lit8 v22, v11, 0x3

    aget-object v22, p1, v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v18, Lorg/apache/commons/math3/FieldElement;

    .line 1342
    .restart local v18    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/2addr v9, v8

    .line 1343
    add-int/lit8 v11, v11, 0x4

    goto :goto_3

    .line 1345
    .end local v11    # "p":I
    .local v12, "p":I
    :goto_4
    if-ge v12, v13, :cond_1

    .line 1346
    aget-object v20, v2, v9

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "p":I
    .restart local v11    # "p":I
    aget-object v21, p1, v12

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v18, Lorg/apache/commons/math3/FieldElement;

    .line 1347
    .restart local v18    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/2addr v9, v5

    move v12, v11

    .end local v11    # "p":I
    .restart local v12    # "p":I
    goto :goto_4

    .line 1349
    :cond_1
    aget-object v20, v10, v15

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/FieldElement;

    aput-object v20, v10, v15

    .line 1332
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1328
    .end local v9    # "k":I
    .end local v12    # "p":I
    .end local v18    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1321
    .end local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v13    # "pEnd":I
    .end local v14    # "pStart":I
    .end local v15    # "q":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1354
    .end local v3    # "iBlock":I
    .end local v5    # "jWidth":I
    .end local v6    # "jWidth2":I
    .end local v7    # "jWidth3":I
    .end local v8    # "jWidth4":I
    .end local v16    # "qEnd":I
    .end local v17    # "qStart":I
    :cond_4
    return-object v10

    .restart local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "iBlock":I
    .restart local v5    # "jWidth":I
    .restart local v6    # "jWidth2":I
    .restart local v7    # "jWidth3":I
    .restart local v8    # "jWidth4":I
    .restart local v9    # "k":I
    .restart local v11    # "p":I
    .restart local v13    # "pEnd":I
    .restart local v14    # "pStart":I
    .restart local v15    # "q":I
    .restart local v16    # "qEnd":I
    .restart local v17    # "qStart":I
    .restart local v18    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_5
    move v12, v11

    .end local v11    # "p":I
    .restart local v12    # "p":I
    goto :goto_4
.end method

.method public scalarAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 464
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 465
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v5, v0

    .line 466
    .local v3, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v5, v0

    .line 467
    .local v4, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 468
    aget-object v5, v4, v1

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v3, v1

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "k":I
    .end local v3    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    return-object v2
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 482
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 483
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v5, v0

    .line 484
    .local v3, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v5, v0

    .line 485
    .local v4, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 486
    aget-object v5, v4, v1

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v3, v1

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "k":I
    .end local v3    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    return-object v2
.end method

.method public setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 13
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "array":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v12, 0x1

    .line 1136
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1137
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v7

    .line 1138
    .local v7, "nRows":I
    array-length v10, p2

    if-eq v10, v7, :cond_0

    .line 1139
    new-instance v10, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v11, p2

    invoke-direct {v10, v11, v12, v7, v12}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v10

    .line 1143
    :cond_0
    div-int/lit8 v4, p1, 0x24

    .line 1144
    .local v4, "jBlock":I
    mul-int/lit8 v10, v4, 0x24

    sub-int v5, p1, v10

    .line 1145
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 1146
    .local v6, "jWidth":I
    const/4 v8, 0x0

    .line 1147
    .local v8, "outIndex":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v2, v10, :cond_2

    .line 1148
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v3

    .line 1149
    .local v3, "iHeight":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v0, v10, v11

    .line 1150
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    move v9, v8

    .end local v8    # "outIndex":I
    .local v9, "outIndex":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1151
    mul-int v10, v1, v6

    add-int/2addr v10, v5

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    aget-object v11, p2, v9

    aput-object v11, v0, v10

    .line 1150
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "outIndex":I
    .restart local v9    # "outIndex":I
    goto :goto_1

    .line 1147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v8, v9

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    goto :goto_0

    .line 1154
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_2
    return-void
.end method

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 17
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v12

    .line 975
    .local v12, "nRows":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v13

    if-ne v13, v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    .line 977
    :cond_0
    new-instance v13, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v13, v14, v15, v12, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v13

    .line 983
    :cond_1
    div-int/lit8 v5, p1, 0x24

    .line 984
    .local v5, "jBlock":I
    mul-int/lit8 v13, v5, 0x24

    sub-int v6, p1, v13

    .line 985
    .local v6, "jColumn":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    .line 986
    .local v7, "jWidth":I
    const/4 v9, 0x0

    .line 987
    .local v9, "mBlockIndex":I
    const/4 v10, 0x0

    .line 988
    .local v10, "mIndex":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v13, v9

    .line 989
    .local v8, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v3, v13, :cond_4

    .line 990
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v4

    .line 991
    .local v4, "iHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v14, v3

    add-int/2addr v14, v5

    aget-object v1, v13, v14

    .line 992
    .local v1, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 993
    array-length v13, v8

    if-lt v10, v13, :cond_2

    .line 994
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v13, v9

    .line 995
    const/4 v10, 0x0

    .line 997
    :cond_2
    mul-int v13, v2, v7

    add-int/2addr v13, v6

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "mIndex":I
    .local v11, "mIndex":I
    aget-object v14, v8, v10

    aput-object v14, v1, v13

    .line 992
    add-int/lit8 v2, v2, 0x1

    move v10, v11

    .end local v11    # "mIndex":I
    .restart local v10    # "mIndex":I
    goto :goto_1

    .line 989
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    .end local v1    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v2    # "i":I
    .end local v4    # "iHeight":I
    :cond_4
    return-void
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-object v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    goto :goto_0
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "vector":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    goto :goto_0
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 5
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
    .line 1175
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1176
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1178
    div-int/lit8 v0, p1, 0x24

    .line 1179
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x24

    .line 1180
    .local v1, "jBlock":I
    mul-int/lit8 v3, v0, 0x24

    sub-int v3, p1, v3

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x24

    sub-int v4, p2, v4

    add-int v2, v3, v4

    .line 1183
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aput-object p3, v3, v2

    .line 1184
    return-void
.end method

.method public setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 10
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "array":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v9, 0x1

    .line 1092
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1093
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v5

    .line 1094
    .local v5, "nCols":I
    array-length v7, p2

    if-eq v7, v5, :cond_0

    .line 1095
    new-instance v7, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v8, p2

    invoke-direct {v7, v9, v8, v9, v5}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v7

    .line 1099
    :cond_0
    div-int/lit8 v1, p1, 0x24

    .line 1100
    .local v1, "iBlock":I
    mul-int/lit8 v7, v1, 0x24

    sub-int v2, p1, v7

    .line 1101
    .local v2, "iRow":I
    const/4 v6, 0x0

    .line 1102
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v7, :cond_1

    .line 1103
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    .line 1104
    .local v4, "jWidth":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    aget-object v0, v7, v8

    .line 1105
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int v7, v2, v4

    invoke-static {p2, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    add-int/2addr v6, v4

    .line 1102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1108
    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "jWidth":I
    :cond_1
    return-void
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 15
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 890
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v10

    .line 891
    .local v10, "nCols":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v11

    if-eq v11, v10, :cond_1

    .line 893
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14, v10}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v11

    .line 899
    :cond_1
    div-int/lit8 v3, p1, 0x24

    .line 900
    .local v3, "iBlock":I
    mul-int/lit8 v11, v3, 0x24

    sub-int v4, p1, v11

    .line 901
    .local v4, "iRow":I
    const/4 v8, 0x0

    .line 902
    .local v8, "mBlockIndex":I
    const/4 v9, 0x0

    .line 903
    .local v9, "mIndex":I
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v11, v8

    .line 904
    .local v7, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .local v5, "jBlock":I
    :goto_0
    iget v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v11, :cond_3

    .line 905
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 906
    .local v6, "jWidth":I
    iget-object v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v12, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v12, v3

    add-int/2addr v12, v5

    aget-object v2, v11, v12

    .line 907
    .local v2, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    array-length v11, v7

    sub-int v1, v11, v9

    .line 908
    .local v1, "available":I
    if-le v6, v1, :cond_2

    .line 909
    mul-int v11, v4, v6

    invoke-static {v7, v9, v2, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v11, v8

    .line 911
    const/4 v11, 0x0

    mul-int v12, v4, v6

    sub-int v13, v6, v1

    invoke-static {v7, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    sub-int v9, v6, v1

    .line 904
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 914
    :cond_2
    mul-int v11, v4, v6

    invoke-static {v7, v9, v2, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    add-int/2addr v9, v6

    goto :goto_1

    .line 918
    .end local v1    # "available":I
    .end local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v6    # "jWidth":I
    :cond_3
    return-void
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 3
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 870
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-object v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_0
    return-void

    .line 871
    :catch_0
    move-exception v1

    .line 872
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    goto :goto_0
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "vector":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_0
    return-void

    .line 1029
    :catch_0
    move-exception v1

    .line 1030
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    goto :goto_0
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 32
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "subMatrix":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 789
    const/16 v28, 0x0

    aget-object v28, p1, v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v26, v0

    .line 790
    .local v26, "refLength":I
    if-nez v26, :cond_0

    .line 791
    new-instance v28, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v29, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct/range {v28 .. v29}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v28

    .line 793
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    add-int v28, v28, p2

    add-int/lit8 v11, v28, -0x1

    .line 794
    .local v11, "endRow":I
    add-int v28, p3, v26

    add-int/lit8 v10, v28, -0x1

    .line 795
    .local v10, "endColumn":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 796
    move-object/from16 v4, p1

    .local v4, "arr$":[[Lorg/apache/commons/math3/FieldElement;
    array-length v0, v4

    move/from16 v25, v0

    .local v25, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v25

    if-ge v15, v0, :cond_2

    aget-object v27, v4, v15

    .line 797
    .local v27, "subRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 798
    new-instance v28, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v28

    .line 796
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 803
    .end local v27    # "subRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    div-int/lit8 v9, p2, 0x24

    .line 804
    .local v9, "blockStartRow":I
    add-int/lit8 v28, v11, 0x24

    div-int/lit8 v7, v28, 0x24

    .line 805
    .local v7, "blockEndRow":I
    div-int/lit8 v8, p3, 0x24

    .line 806
    .local v8, "blockStartColumn":I
    add-int/lit8 v28, v10, 0x24

    div-int/lit8 v6, v28, 0x24

    .line 809
    .local v6, "blockEndColumn":I
    move/from16 v16, v9

    .local v16, "iBlock":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v7, :cond_5

    .line 810
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v18

    .line 811
    .local v18, "iHeight":I
    mul-int/lit8 v13, v16, 0x24

    .line 812
    .local v13, "firstRow":I
    move/from16 v0, p2

    invoke-static {v0, v13}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v19

    .line 813
    .local v19, "iStart":I
    add-int/lit8 v28, v11, 0x1

    add-int v29, v13, v18

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v17

    .line 815
    .local v17, "iEnd":I
    move/from16 v20, v8

    .local v20, "jBlock":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v6, :cond_4

    .line 816
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v24

    .line 817
    .local v24, "jWidth":I
    mul-int/lit8 v12, v20, 0x24

    .line 818
    .local v12, "firstColumn":I
    move/from16 v0, p3

    invoke-static {v0, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v23

    .line 819
    .local v23, "jStart":I
    add-int/lit8 v28, v10, 0x1

    add-int v29, v12, v24

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v21

    .line 820
    .local v21, "jEnd":I
    sub-int v22, v21, v23

    .line 823
    .local v22, "jLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v29, v0

    mul-int v29, v29, v16

    add-int v29, v29, v20

    aget-object v5, v28, v29

    .line 824
    .local v5, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move/from16 v14, v19

    .local v14, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 825
    sub-int v28, v14, p2

    aget-object v28, p1, v28

    sub-int v29, v23, p3

    sub-int v30, v14, v13

    mul-int v30, v30, v24

    sub-int v31, v23, v12

    add-int v30, v30, v31

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v22

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 815
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 809
    .end local v5    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v12    # "firstColumn":I
    .end local v14    # "i":I
    .end local v21    # "jEnd":I
    .end local v22    # "jLength":I
    .end local v23    # "jStart":I
    .end local v24    # "jWidth":I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 832
    .end local v13    # "firstRow":I
    .end local v17    # "iEnd":I
    .end local v18    # "iHeight":I
    .end local v19    # "iStart":I
    .end local v20    # "jBlock":I
    :cond_5
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 443
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v3, v6, v7, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 446
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 447
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v6, v0

    .line 448
    .local v4, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v6, v0

    .line 449
    .local v5, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v6, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v6, v0

    .line 450
    .local v2, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 451
    aget-object v6, v5, v1

    aget-object v7, v2, v1

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v4, v1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "k":I
    .end local v2    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    return-object v3
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 427
    :cond_0
    return-object v8

    .line 394
    :catch_0
    move-exception v4

    .line 397
    .local v4, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 399
    new-instance v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 402
    .local v8, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v3, 0x0

    .line 403
    .local v3, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v0, v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 404
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v0, v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 407
    iget-object v0, v8, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    aget-object v9, v17, v3

    .line 408
    .local v9, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    aget-object v16, v17, v3

    .line 409
    .local v16, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v12, v5, 0x24

    .line 410
    .local v12, "pStart":I
    add-int/lit8 v17, v12, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 411
    .local v11, "pEnd":I
    mul-int/lit8 v15, v6, 0x24

    .line 412
    .local v15, "qStart":I
    add-int/lit8 v17, v15, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    .line 413
    .local v14, "qEnd":I
    const/4 v7, 0x0

    .line 414
    .local v7, "k":I
    move v10, v12

    .local v10, "p":I
    :goto_2
    if-ge v10, v11, :cond_2

    .line 415
    move v13, v15

    .local v13, "q":I
    :goto_3
    if-ge v13, v14, :cond_1

    .line 416
    aget-object v17, v16, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v13}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/FieldElement;

    aput-object v17, v9, v7

    .line 417
    add-int/lit8 v7, v7, 0x1

    .line 415
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 414
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 422
    .end local v13    # "q":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 404
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 403
    .end local v7    # "k":I
    .end local v9    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v10    # "p":I
    .end local v11    # "pEnd":I
    .end local v12    # "pStart":I
    .end local v14    # "qEnd":I
    .end local v15    # "qStart":I
    .end local v16    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1221
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v8

    .line 1222
    .local v8, "nRows":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v7

    .line 1223
    .local v7, "nCols":I
    new-instance v9, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v7, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 1226
    .local v9, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .line 1227
    .local v1, "blockIndex":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1228
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 1231
    iget-object v0, v9, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v18, v0

    aget-object v10, v18, v1

    .line 1232
    .local v10, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    move/from16 v19, v0

    mul-int v19, v19, v3

    add-int v19, v19, v2

    aget-object v17, v18, v19

    .line 1233
    .local v17, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v13, v2, 0x24

    .line 1234
    .local v13, "pStart":I
    add-int/lit8 v18, v13, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1235
    .local v12, "pEnd":I
    mul-int/lit8 v16, v3, 0x24

    .line 1236
    .local v16, "qStart":I
    add-int/lit8 v18, v16, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1237
    .local v15, "qEnd":I
    const/4 v4, 0x0

    .line 1238
    .local v4, "k":I
    move v11, v13

    .local v11, "p":I
    :goto_2
    if-ge v11, v12, :cond_1

    .line 1239
    sub-int v6, v12, v13

    .line 1240
    .local v6, "lInc":I
    sub-int v5, v11, v13

    .line 1241
    .local v5, "l":I
    move/from16 v14, v16

    .local v14, "q":I
    :goto_3
    if-ge v14, v15, :cond_0

    .line 1242
    aget-object v18, v17, v5

    aput-object v18, v10, v4

    .line 1243
    add-int/lit8 v4, v4, 0x1

    .line 1244
    add-int/2addr v5, v6

    .line 1241
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1238
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1249
    .end local v5    # "l":I
    .end local v6    # "lInc":I
    .end local v14    # "q":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1228
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1227
    .end local v4    # "k":I
    .end local v10    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v11    # "p":I
    .end local v12    # "pEnd":I
    .end local v13    # "pStart":I
    .end local v15    # "qEnd":I
    .end local v16    # "qStart":I
    .end local v17    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1254
    .end local v3    # "jBlock":I
    :cond_3
    return-object v9
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1468
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1469
    const/4 v10, 0x0

    .line 1470
    .local v10, "blockIndex":I
    const/4 v11, 0x0

    .local v11, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v11, v2, :cond_3

    .line 1471
    mul-int/lit8 v16, v11, 0x24

    .line 1472
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1473
    .local v15, "pEnd":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v12, v2, :cond_2

    .line 1474
    mul-int/lit8 v19, v12, 0x24

    .line 1475
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1476
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v2, v10

    .line 1477
    .local v9, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v13, 0x0

    .line 1478
    .local v13, "k":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 1479
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1480
    aget-object v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v9, v13

    .line 1481
    add-int/lit8 v13, v13, 0x1

    .line 1479
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1478
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1484
    .end local v17    # "q":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1473
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1470
    .end local v9    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v13    # "k":I
    .end local v14    # "p":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1487
    .end local v12    # "jBlock":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 25
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
    .line 1521
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1522
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1523
    div-int/lit8 v13, p2, 0x24

    .local v13, "iBlock":I
    :goto_0
    div-int/lit8 v5, p3, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v13, v5, :cond_3

    .line 1524
    mul-int/lit8 v18, v13, 0x24

    .line 1525
    .local v18, "p0":I
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v20

    .line 1526
    .local v20, "pStart":I
    add-int/lit8 v5, v13, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p3, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v19

    .line 1527
    .local v19, "pEnd":I
    div-int/lit8 v14, p4, 0x24

    .local v14, "jBlock":I
    :goto_1
    div-int/lit8 v5, p5, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v14, v5, :cond_2

    .line 1528
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v15

    .line 1529
    .local v15, "jWidth":I
    mul-int/lit8 v22, v14, 0x24

    .line 1530
    .local v22, "q0":I
    move/from16 v0, p4

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v24

    .line 1531
    .local v24, "qStart":I
    add-int/lit8 v5, v14, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p5, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v23

    .line 1532
    .local v23, "qEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v6, v13

    add-int/2addr v6, v14

    aget-object v12, v5, v6

    .line 1533
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move/from16 v17, v20

    .local v17, "p":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1534
    sub-int v5, v17, v18

    mul-int/2addr v5, v15

    add-int v5, v5, v24

    sub-int v16, v5, v22

    .line 1535
    .local v16, "k":I
    move/from16 v21, v24

    .local v21, "q":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1536
    aget-object v5, v12, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v5}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    aput-object v5, v12, v16

    .line 1537
    add-int/lit8 v16, v16, 0x1

    .line 1535
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1533
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1527
    .end local v16    # "k":I
    .end local v21    # "q":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1523
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v15    # "jWidth":I
    .end local v17    # "p":I
    .end local v22    # "q0":I
    .end local v23    # "qEnd":I
    .end local v24    # "qStart":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1542
    .end local v14    # "jBlock":I
    .end local v18    # "p0":I
    .end local v19    # "pEnd":I
    .end local v20    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    return-object v5
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1493
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1494
    const/4 v10, 0x0

    .line 1495
    .local v10, "blockIndex":I
    const/4 v11, 0x0

    .local v11, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v11, v2, :cond_3

    .line 1496
    mul-int/lit8 v16, v11, 0x24

    .line 1497
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1498
    .local v15, "pEnd":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v12, v2, :cond_2

    .line 1499
    mul-int/lit8 v19, v12, 0x24

    .line 1500
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1501
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v2, v10

    .line 1502
    .local v9, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v13, 0x0

    .line 1503
    .local v13, "k":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 1504
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1505
    aget-object v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1506
    add-int/lit8 v13, v13, 0x1

    .line 1504
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1503
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1509
    .end local v17    # "q":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1498
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1495
    .end local v9    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v13    # "k":I
    .end local v14    # "p":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1512
    .end local v12    # "jBlock":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 25
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
    .line 1551
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1552
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1553
    div-int/lit8 v13, p2, 0x24

    .local v13, "iBlock":I
    :goto_0
    div-int/lit8 v5, p3, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v13, v5, :cond_3

    .line 1554
    mul-int/lit8 v18, v13, 0x24

    .line 1555
    .local v18, "p0":I
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v20

    .line 1556
    .local v20, "pStart":I
    add-int/lit8 v5, v13, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p3, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v19

    .line 1557
    .local v19, "pEnd":I
    div-int/lit8 v14, p4, 0x24

    .local v14, "jBlock":I
    :goto_1
    div-int/lit8 v5, p5, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v14, v5, :cond_2

    .line 1558
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v15

    .line 1559
    .local v15, "jWidth":I
    mul-int/lit8 v22, v14, 0x24

    .line 1560
    .local v22, "q0":I
    move/from16 v0, p4

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v24

    .line 1561
    .local v24, "qStart":I
    add-int/lit8 v5, v14, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p5, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v23

    .line 1562
    .local v23, "qEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v6, v13

    add-int/2addr v6, v14

    aget-object v12, v5, v6

    .line 1563
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move/from16 v17, v20

    .local v17, "p":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1564
    sub-int v5, v17, v18

    mul-int/2addr v5, v15

    add-int v5, v5, v24

    sub-int v16, v5, v22

    .line 1565
    .local v16, "k":I
    move/from16 v21, v24

    .local v21, "q":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1566
    aget-object v5, v12, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v5}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1567
    add-int/lit8 v16, v16, 0x1

    .line 1565
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1563
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1557
    .end local v16    # "k":I
    .end local v21    # "q":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1553
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v15    # "jWidth":I
    .end local v17    # "p":I
    .end local v22    # "q0":I
    .end local v23    # "qEnd":I
    .end local v24    # "qStart":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1572
    .end local v14    # "jBlock":I
    .end local v18    # "p0":I
    .end local v19    # "pEnd":I
    .end local v20    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    return-object v5
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1360
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1361
    const/4 v10, 0x0

    .local v10, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v10, v2, :cond_3

    .line 1362
    mul-int/lit8 v16, v10, 0x24

    .line 1363
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1364
    .local v15, "pEnd":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 1365
    const/4 v11, 0x0

    .local v11, "jBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v11, v2, :cond_1

    .line 1366
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v12

    .line 1367
    .local v12, "jWidth":I
    mul-int/lit8 v19, v11, 0x24

    .line 1368
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1369
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v3, v10

    add-int/2addr v3, v11

    aget-object v9, v2, v3

    .line 1370
    .local v9, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v2, v14, v16

    mul-int v13, v2, v12

    .line 1371
    .local v13, "k":I
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1372
    aget-object v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v9, v13

    .line 1373
    add-int/lit8 v13, v13, 0x1

    .line 1371
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1365
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1364
    .end local v9    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v12    # "jWidth":I
    .end local v13    # "k":I
    .end local v17    # "q":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1361
    .end local v11    # "jBlock":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1378
    .end local v14    # "p":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 25
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
    .line 1411
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1412
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1413
    div-int/lit8 v13, p2, 0x24

    .local v13, "iBlock":I
    :goto_0
    div-int/lit8 v5, p3, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v13, v5, :cond_3

    .line 1414
    mul-int/lit8 v18, v13, 0x24

    .line 1415
    .local v18, "p0":I
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v20

    .line 1416
    .local v20, "pStart":I
    add-int/lit8 v5, v13, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p3, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v19

    .line 1417
    .local v19, "pEnd":I
    move/from16 v17, v20

    .local v17, "p":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1418
    div-int/lit8 v14, p4, 0x24

    .local v14, "jBlock":I
    :goto_2
    div-int/lit8 v5, p5, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v14, v5, :cond_1

    .line 1419
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v15

    .line 1420
    .local v15, "jWidth":I
    mul-int/lit8 v22, v14, 0x24

    .line 1421
    .local v22, "q0":I
    move/from16 v0, p4

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v24

    .line 1422
    .local v24, "qStart":I
    add-int/lit8 v5, v14, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p5, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v23

    .line 1423
    .local v23, "qEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v6, v13

    add-int/2addr v6, v14

    aget-object v12, v5, v6

    .line 1424
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v5, v17, v18

    mul-int/2addr v5, v15

    add-int v5, v5, v24

    sub-int v16, v5, v22

    .line 1425
    .local v16, "k":I
    move/from16 v21, v24

    .local v21, "q":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1426
    aget-object v5, v12, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v5}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    aput-object v5, v12, v16

    .line 1427
    add-int/lit8 v16, v16, 0x1

    .line 1425
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1418
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1417
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v15    # "jWidth":I
    .end local v16    # "k":I
    .end local v21    # "q":I
    .end local v22    # "q0":I
    .end local v23    # "qEnd":I
    .end local v24    # "qStart":I
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1413
    .end local v14    # "jBlock":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1432
    .end local v17    # "p":I
    .end local v18    # "p0":I
    .end local v19    # "pEnd":I
    .end local v20    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    return-object v5
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1384
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1385
    const/4 v10, 0x0

    .local v10, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v10, v2, :cond_3

    .line 1386
    mul-int/lit8 v16, v10, 0x24

    .line 1387
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1388
    .local v15, "pEnd":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 1389
    const/4 v11, 0x0

    .local v11, "jBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v11, v2, :cond_1

    .line 1390
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v12

    .line 1391
    .local v12, "jWidth":I
    mul-int/lit8 v19, v11, 0x24

    .line 1392
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1393
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v3, v10

    add-int/2addr v3, v11

    aget-object v9, v2, v3

    .line 1394
    .local v9, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v2, v14, v16

    mul-int v13, v2, v12

    .line 1395
    .local v13, "k":I
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1396
    aget-object v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1397
    add-int/lit8 v13, v13, 0x1

    .line 1395
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1389
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1388
    .end local v9    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v12    # "jWidth":I
    .end local v13    # "k":I
    .end local v17    # "q":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1385
    .end local v11    # "jBlock":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1402
    .end local v14    # "p":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 25
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
    .line 1441
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1442
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1443
    div-int/lit8 v13, p2, 0x24

    .local v13, "iBlock":I
    :goto_0
    div-int/lit8 v5, p3, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v13, v5, :cond_3

    .line 1444
    mul-int/lit8 v18, v13, 0x24

    .line 1445
    .local v18, "p0":I
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v20

    .line 1446
    .local v20, "pStart":I
    add-int/lit8 v5, v13, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p3, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v19

    .line 1447
    .local v19, "pEnd":I
    move/from16 v17, v20

    .local v17, "p":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1448
    div-int/lit8 v14, p4, 0x24

    .local v14, "jBlock":I
    :goto_2
    div-int/lit8 v5, p5, 0x24

    add-int/lit8 v5, v5, 0x1

    if-ge v14, v5, :cond_1

    .line 1449
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v15

    .line 1450
    .local v15, "jWidth":I
    mul-int/lit8 v22, v14, 0x24

    .line 1451
    .local v22, "q0":I
    move/from16 v0, p4

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v24

    .line 1452
    .local v24, "qStart":I
    add-int/lit8 v5, v14, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v6, p5, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v23

    .line 1453
    .local v23, "qEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v6, v13

    add-int/2addr v6, v14

    aget-object v12, v5, v6

    .line 1454
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v5, v17, v18

    mul-int/2addr v5, v15

    add-int v5, v5, v24

    sub-int v16, v5, v22

    .line 1455
    .local v16, "k":I
    move/from16 v21, v24

    .local v21, "q":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1456
    aget-object v5, v12, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v5}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1457
    add-int/lit8 v16, v16, 0x1

    .line 1455
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1448
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1447
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v15    # "jWidth":I
    .end local v16    # "k":I
    .end local v21    # "q":I
    .end local v22    # "q0":I
    .end local v23    # "qEnd":I
    .end local v24    # "qStart":I
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1443
    .end local v14    # "jBlock":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1462
    .end local v17    # "p":I
    .end local v18    # "p0":I
    .end local v19    # "pEnd":I
    .end local v20    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    return-object v5
.end method
