.class public Lorg/apache/commons/math3/linear/BlockRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "BlockRealMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCK_SIZE:I = 0x34

.field private static final serialVersionUID:J = 0x4546c684f3b7c9deL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[D

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 98
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 99
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    .line 102
    add-int/lit8 v0, p1, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    .line 103
    add-int/lit8 v0, p2, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    .line 106
    invoke-static {p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    .line 107
    return-void
.end method

.method public constructor <init>(II[[DZ)V
    .locals 7
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "blockData"    # [[D
    .param p4, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 149
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 150
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    .line 153
    add-int/lit8 v4, p1, 0x34

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x34

    iput v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    .line 154
    add-int/lit8 v4, p2, 0x34

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x34

    iput v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    .line 156
    if-eqz p4, :cond_0

    .line 158
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v5

    new-array v4, v4, [[D

    iput-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    .line 164
    :goto_0
    const/4 v2, 0x0

    .line 165
    .local v2, "index":I
    const/4 v0, 0x0

    .local v0, "iBlock":I
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v0, v4, :cond_4

    .line 166
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v1

    .line 167
    .local v1, "iHeight":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v4, :cond_3

    .line 168
    aget-object v4, p3, v2

    array-length v4, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    mul-int/2addr v5, v1

    if-eq v4, v5, :cond_1

    .line 169
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v5, p3, v2

    array-length v5, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    mul-int/2addr v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 161
    .end local v0    # "iBlock":I
    .end local v1    # "iHeight":I
    .end local v2    # "index":I
    .end local v3    # "jBlock":I
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    goto :goto_0

    .line 172
    .restart local v0    # "iBlock":I
    .restart local v1    # "iHeight":I
    .restart local v2    # "index":I
    .restart local v3    # "jBlock":I
    :cond_1
    if-eqz p4, :cond_2

    .line 173
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, p3, v2

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aput-object v4, v5, v2

    .line 167
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v1    # "iHeight":I
    .end local v3    # "jBlock":I
    :cond_4
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 4
    .param p1, "rawData"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    array-length v0, p1

    aget-object v1, p1, v3

    array-length v1, v1

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->toBlocksLayout([[D)[[D

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    .line 127
    return-void
.end method

.method private blockHeight(I)I
    .locals 2
    .param p1, "blockRow"    # I

    .prologue
    .line 1570
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    mul-int/lit8 v1, p1, 0x34

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x34

    goto :goto_0
.end method

.method private blockWidth(I)I
    .locals 2
    .param p1, "blockColumn"    # I

    .prologue
    .line 1579
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    mul-int/lit8 v1, p1, 0x34

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x34

    goto :goto_0
.end method

.method private copyBlockPart([DIIIII[DIII)V
    .locals 5
    .param p1, "srcBlock"    # [D
    .param p2, "srcWidth"    # I
    .param p3, "srcStartRow"    # I
    .param p4, "srcEndRow"    # I
    .param p5, "srcStartColumn"    # I
    .param p6, "srcEndColumn"    # I
    .param p7, "dstBlock"    # [D
    .param p8, "dstWidth"    # I
    .param p9, "dstStartRow"    # I
    .param p10, "dstStartColumn"    # I

    .prologue
    .line 776
    sub-int v1, p6, p5

    .line 777
    .local v1, "length":I
    mul-int v4, p3, p2

    add-int v2, v4, p5

    .line 778
    .local v2, "srcPos":I
    mul-int v4, p9, p8

    add-int v0, v4, p10

    .line 779
    .local v0, "dstPos":I
    move v3, p3

    .local v3, "srcRow":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 780
    invoke-static {p1, v2, p7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    add-int/2addr v2, p2

    .line 782
    add-int/2addr v0, p8

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    :cond_0
    return-void
.end method

.method public static createBlocksLayout(II)[[D
    .locals 13
    .param p0, "rows"    # I
    .param p1, "columns"    # I

    .prologue
    .line 257
    add-int/lit8 v12, p0, 0x34

    add-int/lit8 v12, v12, -0x1

    div-int/lit8 v2, v12, 0x34

    .line 258
    .local v2, "blockRows":I
    add-int/lit8 v12, p1, 0x34

    add-int/lit8 v12, v12, -0x1

    div-int/lit8 v0, v12, 0x34

    .line 260
    .local v0, "blockColumns":I
    mul-int v12, v2, v0

    new-array v3, v12, [[D

    .line 261
    .local v3, "blocks":[[D
    const/4 v1, 0x0

    .line 262
    .local v1, "blockIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 263
    mul-int/lit8 v9, v4, 0x34

    .line 264
    .local v9, "pStart":I
    add-int/lit8 v12, v9, 0x34

    invoke-static {v12, p0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 265
    .local v8, "pEnd":I
    sub-int v5, v8, v9

    .line 266
    .local v5, "iHeight":I
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 267
    mul-int/lit8 v11, v6, 0x34

    .line 268
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x34

    invoke-static {v12, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 269
    .local v10, "qEnd":I
    sub-int v7, v10, v11

    .line 270
    .local v7, "jWidth":I
    mul-int v12, v5, v7

    new-array v12, v12, [D

    aput-object v12, v3, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 262
    .end local v7    # "jWidth":I
    .end local v10    # "qEnd":I
    .end local v11    # "qStart":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    .end local v5    # "iHeight":I
    .end local v6    # "jBlock":I
    .end local v8    # "pEnd":I
    .end local v9    # "pStart":I
    :cond_1
    return-object v3
.end method

.method public static toBlocksLayout([[D)[[D
    .locals 22
    .param p0, "rawData"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    .line 203
    .local v20, "rows":I
    const/16 v21, 0x0

    aget-object v21, p0, v21

    move-object/from16 v0, v21

    array-length v7, v0

    .line 204
    .local v7, "columns":I
    add-int/lit8 v21, v20, 0x34

    add-int/lit8 v21, v21, -0x1

    div-int/lit8 v5, v21, 0x34

    .line 205
    .local v5, "blockRows":I
    add-int/lit8 v21, v7, 0x34

    add-int/lit8 v21, v21, -0x1

    div-int/lit8 v3, v21, 0x34

    .line 208
    .local v3, "blockColumns":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1

    .line 209
    aget-object v21, p0, v8

    move-object/from16 v0, v21

    array-length v14, v0

    .line 210
    .local v14, "length":I
    if-eq v14, v7, :cond_0

    .line 211
    new-instance v21, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v21

    .line 208
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 216
    .end local v14    # "length":I
    :cond_1
    mul-int v21, v5, v3

    move/from16 v0, v21

    new-array v6, v0, [[D

    .line 217
    .local v6, "blocks":[[D
    const/4 v4, 0x0

    .line 218
    .local v4, "blockIndex":I
    const/4 v9, 0x0

    .local v9, "iBlock":I
    :goto_1
    if-ge v9, v5, :cond_4

    .line 219
    mul-int/lit8 v17, v9, 0x34

    .line 220
    .local v17, "pStart":I
    add-int/lit8 v21, v17, 0x34

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v16

    .line 221
    .local v16, "pEnd":I
    sub-int v10, v16, v17

    .line 222
    .local v10, "iHeight":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_2
    if-ge v12, v3, :cond_3

    .line 223
    mul-int/lit8 v19, v12, 0x34

    .line 224
    .local v19, "qStart":I
    add-int/lit8 v21, v19, 0x34

    move/from16 v0, v21

    invoke-static {v0, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 225
    .local v18, "qEnd":I
    sub-int v13, v18, v19

    .line 228
    .local v13, "jWidth":I
    mul-int v21, v10, v13

    move/from16 v0, v21

    new-array v2, v0, [D

    .line 229
    .local v2, "block":[D
    aput-object v2, v6, v4

    .line 232
    const/4 v11, 0x0

    .line 233
    .local v11, "index":I
    move/from16 v15, v17

    .local v15, "p":I
    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 234
    aget-object v21, p0, v15

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1, v2, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/2addr v11, v13

    .line 233
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 237
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 222
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 218
    .end local v2    # "block":[D
    .end local v11    # "index":I
    .end local v13    # "jWidth":I
    .end local v15    # "p":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 241
    .end local v10    # "iHeight":I
    .end local v12    # "jBlock":I
    .end local v16    # "pEnd":I
    .end local v17    # "pStart":I
    :cond_4
    return-object v6
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 10
    .param p1, "m"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 353
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 356
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 357
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v6, v0

    .line 358
    .local v4, "outBlock":[D
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v6, v0

    .line 359
    .local v5, "tBlock":[D
    iget-object v6, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v6, v0

    .line 360
    .local v2, "mBlock":[D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 361
    aget-wide v6, v5, v1

    aget-wide v8, v2, v1

    add-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "k":I
    .end local v2    # "mBlock":[D
    .end local v4    # "outBlock":[D
    .end local v5    # "tBlock":[D
    :cond_1
    return-object v3
.end method

.method public add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 20
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 336
    :cond_0
    return-object v7

    .line 306
    :catch_0
    move-exception v3

    .line 308
    .local v3, "cce":Ljava/lang/ClassCastException;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 310
    new-instance v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 313
    .local v7, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v2, 0x0

    .line 314
    .local v2, "blockIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    iget v0, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_0

    .line 315
    const/4 v5, 0x0

    .local v5, "jBlock":I
    :goto_1
    iget v0, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 318
    iget-object v0, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v0

    aget-object v8, v16, v2

    .line 319
    .local v8, "outBlock":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v0

    aget-object v15, v16, v2

    .line 320
    .local v15, "tBlock":[D
    mul-int/lit8 v11, v4, 0x34

    .line 321
    .local v11, "pStart":I
    add-int/lit8 v16, v11, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 322
    .local v10, "pEnd":I
    mul-int/lit8 v14, v5, 0x34

    .line 323
    .local v14, "qStart":I
    add-int/lit8 v16, v14, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 324
    .local v13, "qEnd":I
    const/4 v6, 0x0

    .line 325
    .local v6, "k":I
    move v9, v11

    .local v9, "p":I
    :goto_2
    if-ge v9, v10, :cond_2

    .line 326
    move v12, v14

    .local v12, "q":I
    :goto_3
    if-ge v12, v13, :cond_1

    .line 327
    aget-wide v16, v15, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    add-double v16, v16, v18

    aput-wide v16, v8, v6

    .line 328
    add-int/lit8 v6, v6, 0x1

    .line 326
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 325
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 332
    .end local v12    # "q":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 314
    .end local v6    # "k":I
    .end local v8    # "outBlock":[D
    .end local v9    # "p":I
    .end local v10    # "pEnd":I
    .end local v11    # "pStart":I
    .end local v13    # "qEnd":I
    .end local v14    # "qStart":I
    .end local v15    # "tBlock":[D
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
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
    .line 1190
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1191
    div-int/lit8 v0, p1, 0x34

    .line 1192
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1193
    .local v1, "jBlock":I
    mul-int/lit8 v3, v0, 0x34

    sub-int v3, p1, v3

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x34

    sub-int v4, p2, v4

    add-int v2, v3, v4

    .line 1195
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    add-double/2addr v4, p3

    aput-wide v4, v3, v2

    .line 1196
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 290
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 293
    .local v0, "copied":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 294
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v1

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

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
    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getColumn(I)[D
    .locals 12
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1119
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v7, v10, [D

    .line 1122
    .local v7, "out":[D
    div-int/lit8 v4, p1, 0x34

    .line 1123
    .local v4, "jBlock":I
    mul-int/lit8 v10, v4, 0x34

    sub-int v5, p1, v10

    .line 1124
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    .line 1125
    .local v6, "jWidth":I
    const/4 v8, 0x0

    .line 1126
    .local v8, "outIndex":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v2, v10, :cond_1

    .line 1127
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v3

    .line 1128
    .local v3, "iHeight":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v0, v10, v11

    .line 1129
    .local v0, "block":[D
    const/4 v1, 0x0

    .local v1, "i":I
    move v9, v8

    .end local v8    # "outIndex":I
    .local v9, "outIndex":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1130
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    mul-int v10, v1, v6

    add-int/2addr v10, v5

    aget-wide v10, v0, v10

    aput-wide v10, v7, v9

    .line 1129
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "outIndex":I
    .restart local v9    # "outIndex":I
    goto :goto_1

    .line 1126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v8, v9

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    goto :goto_0

    .line 1134
    .end local v0    # "block":[D
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_1
    return-object v7
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 14
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 930
    new-instance v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v12, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    const/4 v13, 0x1

    invoke-direct {v7, v12, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 933
    .local v7, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    div-int/lit8 v4, p1, 0x34

    .line 934
    .local v4, "jBlock":I
    mul-int/lit8 v12, v4, 0x34

    sub-int v5, p1, v12

    .line 935
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    .line 936
    .local v6, "jWidth":I
    const/4 v9, 0x0

    .line 937
    .local v9, "outBlockIndex":I
    const/4 v10, 0x0

    .line 938
    .local v10, "outIndex":I
    iget-object v12, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v12, v9

    .line 939
    .local v8, "outBlock":[D
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v12, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v2, v12, :cond_2

    .line 940
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v3

    .line 941
    .local v3, "iHeight":I
    iget-object v12, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v13, v2

    add-int/2addr v13, v4

    aget-object v0, v12, v13

    .line 942
    .local v0, "block":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 943
    array-length v12, v8

    if-lt v10, v12, :cond_0

    .line 944
    iget-object v12, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v12, v9

    .line 945
    const/4 v10, 0x0

    .line 947
    :cond_0
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "outIndex":I
    .local v11, "outIndex":I
    mul-int v12, v1, v6

    add-int/2addr v12, v5

    aget-wide v12, v0, v12

    aput-wide v12, v8, v10

    .line 942
    add-int/lit8 v1, v1, 0x1

    move v10, v11

    .end local v11    # "outIndex":I
    .restart local v10    # "outIndex":I
    goto :goto_1

    .line 939
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v0    # "block":[D
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_2
    return-object v7
.end method

.method public bridge synthetic getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1044
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v7, v10, [D

    .line 1047
    .local v7, "outData":[D
    div-int/lit8 v4, p1, 0x34

    .line 1048
    .local v4, "jBlock":I
    mul-int/lit8 v10, v4, 0x34

    sub-int v5, p1, v10

    .line 1049
    .local v5, "jColumn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    .line 1050
    .local v6, "jWidth":I
    const/4 v8, 0x0

    .line 1051
    .local v8, "outIndex":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v2, v10, :cond_1

    .line 1052
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v3

    .line 1053
    .local v3, "iHeight":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v0, v10, v11

    .line 1054
    .local v0, "block":[D
    const/4 v1, 0x0

    .local v1, "i":I
    move v9, v8

    .end local v8    # "outIndex":I
    .local v9, "outIndex":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1055
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    mul-int v10, v1, v6

    add-int/2addr v10, v5

    aget-wide v10, v0, v10

    aput-wide v10, v7, v9

    .line 1054
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "outIndex":I
    .restart local v9    # "outIndex":I
    goto :goto_1

    .line 1051
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v8, v9

    .end local v9    # "outIndex":I
    .restart local v8    # "outIndex":I
    goto :goto_0

    .line 1059
    .end local v0    # "block":[D
    .end local v1    # "i":I
    .end local v3    # "iHeight":I
    :cond_1
    new-instance v10, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v10
.end method

.method public getData()[[D
    .locals 15

    .prologue
    .line 597
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v13

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v14

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 598
    .local v2, "data":[[D
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v14, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int/lit8 v14, v14, -0x1

    mul-int/lit8 v14, v14, 0x34

    sub-int v7, v13, v14

    .line 600
    .local v7, "lastColumns":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v13, :cond_2

    .line 601
    mul-int/lit8 v11, v5, 0x34

    .line 602
    .local v11, "pStart":I
    add-int/lit8 v13, v11, 0x34

    iget v14, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 603
    .local v10, "pEnd":I
    const/4 v12, 0x0

    .line 604
    .local v12, "regularPos":I
    const/4 v8, 0x0

    .line 605
    .local v8, "lastPos":I
    move v9, v11

    .local v9, "p":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 606
    aget-object v3, v2, v9

    .line 607
    .local v3, "dataP":[D
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v5, v13

    .line 608
    .local v0, "blockIndex":I
    const/4 v4, 0x0

    .line 609
    .local v4, "dataPos":I
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_2
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_0

    .line 610
    iget-object v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "blockIndex":I
    .local v1, "blockIndex":I
    aget-object v13, v13, v0

    const/16 v14, 0x34

    invoke-static {v13, v12, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    add-int/lit8 v4, v4, 0x34

    .line 609
    add-int/lit8 v6, v6, 0x1

    move v0, v1

    .end local v1    # "blockIndex":I
    .restart local v0    # "blockIndex":I
    goto :goto_2

    .line 613
    :cond_0
    iget-object v13, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v13, v13, v0

    invoke-static {v13, v8, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    add-int/lit8 v12, v12, 0x34

    .line 615
    add-int/2addr v8, v7

    .line 605
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 600
    .end local v0    # "blockIndex":I
    .end local v3    # "dataP":[D
    .end local v4    # "dataPos":I
    .end local v6    # "jBlock":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 619
    .end local v8    # "lastPos":I
    .end local v9    # "p":I
    .end local v10    # "pEnd":I
    .end local v11    # "pStart":I
    .end local v12    # "regularPos":I
    :cond_2
    return-object v2
.end method

.method public getEntry(II)D
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1166
    div-int/lit8 v0, p1, 0x34

    .line 1167
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1168
    .local v1, "jBlock":I
    mul-int/lit8 v3, v0, 0x34

    sub-int v3, p1, v3

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x34

    sub-int v4, p2, v4

    add-int v2, v3, v4

    .line 1170
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    return-wide v4
.end method

.method public getFrobeniusNorm()D
    .locals 10

    .prologue
    .line 651
    const-wide/16 v6, 0x0

    .line 652
    .local v6, "sum2":D
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 653
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v0, v8, v1

    .local v0, "arr$":[D
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-wide v2, v0, v4

    .line 654
    .local v2, "entry":D
    mul-double v8, v2, v2

    add-double/2addr v6, v8

    .line 653
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 652
    .end local v2    # "entry":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "arr$":[D
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    return-wide v8
.end method

.method public getNorm()D
    .locals 18

    .prologue
    .line 625
    const/16 v14, 0x34

    new-array v3, v14, [D

    .line 626
    .local v3, "colSums":[D
    const-wide/16 v10, 0x0

    .line 627
    .local v10, "maxColSum":D
    const/4 v8, 0x0

    .local v8, "jBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v8, v14, :cond_4

    .line 628
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    .line 629
    .local v9, "jWidth":I
    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v3, v14, v9, v0, v1}, Ljava/util/Arrays;->fill([DIID)V

    .line 630
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v14, :cond_2

    .line 631
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 632
    .local v6, "iHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v15, v5

    add-int/2addr v15, v8

    aget-object v2, v14, v15

    .line 633
    .local v2, "block":[D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v9, :cond_1

    .line 634
    const-wide/16 v12, 0x0

    .line 635
    .local v12, "sum":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_0

    .line 636
    mul-int v14, v4, v9

    add-int/2addr v14, v7

    aget-wide v14, v2, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    .line 635
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 638
    :cond_0
    aget-wide v14, v3, v7

    add-double/2addr v14, v12

    aput-wide v14, v3, v7

    .line 633
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 630
    .end local v4    # "i":I
    .end local v12    # "sum":D
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 641
    .end local v2    # "block":[D
    .end local v6    # "iHeight":I
    .end local v7    # "j":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4
    if-ge v7, v9, :cond_3

    .line 642
    aget-wide v14, v3, v7

    invoke-static {v10, v11, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    .line 641
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 627
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 645
    .end local v5    # "iBlock":I
    .end local v7    # "j":I
    .end local v9    # "jWidth":I
    :cond_4
    return-wide v10
.end method

.method public getRow(I)[D
    .locals 9
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1077
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v5, v7, [D

    .line 1080
    .local v5, "out":[D
    div-int/lit8 v1, p1, 0x34

    .line 1081
    .local v1, "iBlock":I
    mul-int/lit8 v7, v1, 0x34

    sub-int v2, p1, v7

    .line 1082
    .local v2, "iRow":I
    const/4 v6, 0x0

    .line 1083
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v7, :cond_0

    .line 1084
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 1085
    .local v4, "jWidth":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    aget-object v0, v7, v8

    .line 1086
    .local v0, "block":[D
    mul-int v7, v2, v4

    invoke-static {v0, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    add-int/2addr v6, v4

    .line 1083
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1090
    .end local v0    # "block":[D
    .end local v4    # "jWidth":I
    :cond_0
    return-object v5
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 1250
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 13
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 844
    new-instance v6, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v10, 0x1

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v6, v10, v11}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 847
    .local v6, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    div-int/lit8 v2, p1, 0x34

    .line 848
    .local v2, "iBlock":I
    mul-int/lit8 v10, v2, 0x34

    sub-int v3, p1, v10

    .line 849
    .local v3, "iRow":I
    const/4 v8, 0x0

    .line 850
    .local v8, "outBlockIndex":I
    const/4 v9, 0x0

    .line 851
    .local v9, "outIndex":I
    iget-object v10, v6, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v10, v8

    .line 852
    .local v7, "outBlock":[D
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v10, :cond_1

    .line 853
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 854
    .local v5, "jWidth":I
    iget-object v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v11, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v4

    aget-object v1, v10, v11

    .line 855
    .local v1, "block":[D
    array-length v10, v7

    sub-int v0, v10, v9

    .line 856
    .local v0, "available":I
    if-le v5, v0, :cond_0

    .line 857
    mul-int v10, v3, v5

    invoke-static {v1, v10, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v10, v6, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v10, v8

    .line 859
    mul-int v10, v3, v5

    const/4 v11, 0x0

    sub-int v12, v5, v0

    invoke-static {v1, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    sub-int v9, v5, v0

    .line 852
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 862
    :cond_0
    mul-int v10, v3, v5

    invoke-static {v1, v10, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    add-int/2addr v9, v5

    goto :goto_1

    .line 867
    .end local v0    # "available":I
    .end local v1    # "block":[D
    .end local v5    # "jWidth":I
    :cond_1
    return-object v6
.end method

.method public bridge synthetic getRowMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 9
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1011
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1012
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v5, v7, [D

    .line 1015
    .local v5, "outData":[D
    div-int/lit8 v1, p1, 0x34

    .line 1016
    .local v1, "iBlock":I
    mul-int/lit8 v7, v1, 0x34

    sub-int v2, p1, v7

    .line 1017
    .local v2, "iRow":I
    const/4 v6, 0x0

    .line 1018
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v7, :cond_0

    .line 1019
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 1020
    .local v4, "jWidth":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    aget-object v0, v7, v8

    .line 1021
    .local v0, "block":[D
    mul-int v7, v2, v4

    invoke-static {v0, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    add-int/2addr v6, v4

    .line 1018
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "block":[D
    .end local v4    # "jWidth":I
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v7
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 39
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static/range {p0 .. p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 670
    new-instance v35, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p4, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v35

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 674
    .local v35, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    div-int/lit8 v30, p1, 0x34

    .line 675
    .local v30, "blockStartRow":I
    rem-int/lit8 v5, p1, 0x34

    .line 676
    .local v5, "rowsShift":I
    div-int/lit8 v29, p3, 0x34

    .line 677
    .local v29, "blockStartColumn":I
    rem-int/lit8 v7, p3, 0x34

    .line 680
    .local v7, "columnsShift":I
    move/from16 v37, v30

    .line 681
    .local v37, "pBlock":I
    const/16 v31, 0x0

    .local v31, "iBlock":I
    :goto_0
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v0, v31

    if-ge v0, v2, :cond_4

    .line 682
    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v32

    .line 683
    .local v32, "iHeight":I
    move/from16 v38, v29

    .line 684
    .local v38, "qBlock":I
    const/16 v34, 0x0

    .local v34, "jBlock":I
    :goto_1
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v0, v34

    if-ge v0, v2, :cond_3

    .line 685
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v10

    .line 688
    .local v10, "jWidth":I
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v2, v2, v31

    add-int v36, v2, v34

    .line 689
    .local v36, "outIndex":I
    move-object/from16 v0, v35

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v9, v2, v36

    .line 690
    .local v9, "outBlock":[D
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v2, v2, v37

    add-int v33, v2, v38

    .line 691
    .local v33, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 693
    .local v4, "width":I
    add-int v2, v32, v5

    add-int/lit8 v22, v2, -0x34

    .line 694
    .local v22, "heightExcess":I
    add-int v2, v10, v7

    add-int/lit8 v17, v2, -0x34

    .line 695
    .local v17, "widthExcess":I
    if-lez v22, :cond_1

    .line 697
    if-lez v17, :cond_0

    .line 699
    add-int/lit8 v2, v38, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v13

    .line 700
    .local v13, "width2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v2, v33

    const/16 v6, 0x34

    const/16 v8, 0x34

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v3, v33, 0x1

    aget-object v12, v2, v3

    const/16 v15, 0x34

    const/16 v16, 0x0

    const/16 v20, 0x0

    sub-int v21, v10, v17

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v3, v3, v33

    aget-object v19, v2, v3

    const/16 v21, 0x0

    const/16 v24, 0x34

    sub-int v27, v32, v22

    const/16 v28, 0x0

    move-object/from16 v18, p0

    move/from16 v20, v4

    move/from16 v23, v7

    move-object/from16 v25, v9

    move/from16 v26, v10

    invoke-direct/range {v18 .. v28}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

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

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 748
    .end local v13    # "width2":I
    :goto_2
    add-int/lit8 v38, v38, 0x1

    .line 684
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 718
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v2, v33

    const/16 v6, 0x34

    add-int v8, v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

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

    invoke-direct/range {v18 .. v28}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    goto :goto_2

    .line 729
    :cond_1
    if-lez v17, :cond_2

    .line 731
    add-int/lit8 v2, v38, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v13

    .line 732
    .restart local v13    # "width2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v2, v33

    add-int v6, v32, v5

    const/16 v8, 0x34

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

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

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    goto :goto_2

    .line 742
    .end local v13    # "width2":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v2, v33

    add-int v6, v32, v5

    add-int v8, v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    goto :goto_2

    .line 750
    .end local v4    # "width":I
    .end local v9    # "outBlock":[D
    .end local v10    # "jWidth":I
    .end local v17    # "widthExcess":I
    .end local v22    # "heightExcess":I
    .end local v33    # "index":I
    .end local v36    # "outIndex":I
    :cond_3
    add-int/lit8 v37, v37, 0x1

    .line 681
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    .line 753
    .end local v32    # "iHeight":I
    .end local v34    # "jBlock":I
    .end local v38    # "qBlock":I
    :cond_4
    return-object v35
.end method

.method public bridge synthetic getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 36
    .param p1, "m"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 538
    new-instance v21, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 541
    .local v21, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v4, 0x0

    .line 542
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v5, v0, :cond_5

    .line 544
    mul-int/lit8 v25, v5, 0x34

    .line 545
    .local v25, "pStart":I
    add-int/lit8 v29, v25, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v24

    .line 547
    .local v24, "pEnd":I
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v6, v0, :cond_4

    .line 548
    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    .line 549
    .local v7, "jWidth":I
    add-int v8, v7, v7

    .line 550
    .local v8, "jWidth2":I
    add-int v9, v8, v7

    .line 551
    .local v9, "jWidth3":I
    add-int v10, v9, v7

    .line 554
    .local v10, "jWidth4":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v29, v0

    aget-object v22, v29, v4

    .line 557
    .local v22, "outBlock":[D
    const/4 v12, 0x0

    .local v12, "kBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v12, v0, :cond_3

    .line 558
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v13

    .line 559
    .local v13, "kWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v30, v0

    mul-int v30, v30, v5

    add-int v30, v30, v12

    aget-object v28, v29, v30

    .line 560
    .local v28, "tBlock":[D
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v30, v0

    mul-int v30, v30, v12

    add-int v30, v30, v6

    aget-object v18, v29, v30

    .line 561
    .local v18, "mBlock":[D
    const/4 v11, 0x0

    .line 562
    .local v11, "k":I
    move/from16 v23, v25

    .local v23, "p":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 563
    sub-int v29, v23, v25

    mul-int v17, v29, v13

    .line 564
    .local v17, "lStart":I
    add-int v16, v17, v13

    .line 565
    .local v16, "lEnd":I
    const/16 v20, 0x0

    .local v20, "nStart":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v7, :cond_1

    .line 566
    const-wide/16 v26, 0x0

    .line 567
    .local v26, "sum":D
    move/from16 v14, v17

    .line 568
    .local v14, "l":I
    move/from16 v19, v20

    .line 569
    .local v19, "n":I
    :goto_5
    add-int/lit8 v29, v16, -0x3

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 570
    aget-wide v30, v28, v14

    aget-wide v32, v18, v19

    mul-double v30, v30, v32

    add-int/lit8 v29, v14, 0x1

    aget-wide v32, v28, v29

    add-int v29, v19, v7

    aget-wide v34, v18, v29

    mul-double v32, v32, v34

    add-double v30, v30, v32

    add-int/lit8 v29, v14, 0x2

    aget-wide v32, v28, v29

    add-int v29, v19, v8

    aget-wide v34, v18, v29

    mul-double v32, v32, v34

    add-double v30, v30, v32

    add-int/lit8 v29, v14, 0x3

    aget-wide v32, v28, v29

    add-int v29, v19, v9

    aget-wide v34, v18, v29

    mul-double v32, v32, v34

    add-double v30, v30, v32

    add-double v26, v26, v30

    .line 574
    add-int/lit8 v14, v14, 0x4

    .line 575
    add-int v19, v19, v10

    goto :goto_5

    .line 577
    .end local v14    # "l":I
    .local v15, "l":I
    :goto_6
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 578
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "l":I
    .restart local v14    # "l":I
    aget-wide v30, v28, v15

    aget-wide v32, v18, v19

    mul-double v30, v30, v32

    add-double v26, v26, v30

    .line 579
    add-int v19, v19, v7

    move v15, v14

    .end local v14    # "l":I
    .restart local v15    # "l":I
    goto :goto_6

    .line 581
    :cond_0
    aget-wide v30, v22, v11

    add-double v30, v30, v26

    aput-wide v30, v22, v11

    .line 582
    add-int/lit8 v11, v11, 0x1

    .line 565
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 562
    .end local v15    # "l":I
    .end local v19    # "n":I
    .end local v26    # "sum":D
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 557
    .end local v16    # "lEnd":I
    .end local v17    # "lStart":I
    .end local v20    # "nStart":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 587
    .end local v11    # "k":I
    .end local v13    # "kWidth":I
    .end local v18    # "mBlock":[D
    .end local v23    # "p":I
    .end local v28    # "tBlock":[D
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 542
    .end local v7    # "jWidth":I
    .end local v8    # "jWidth2":I
    .end local v9    # "jWidth3":I
    .end local v10    # "jWidth4":I
    .end local v12    # "kBlock":I
    .end local v22    # "outBlock":[D
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 591
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
    .restart local v18    # "mBlock":[D
    .restart local v19    # "n":I
    .restart local v20    # "nStart":I
    .restart local v22    # "outBlock":[D
    .restart local v23    # "p":I
    .restart local v24    # "pEnd":I
    .restart local v25    # "pStart":I
    .restart local v26    # "sum":D
    .restart local v28    # "tBlock":[D
    :cond_6
    move v15, v14

    .end local v14    # "l":I
    .restart local v15    # "l":I
    goto :goto_6
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 32
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 476
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 522
    :cond_0
    return-object v14

    .line 477
    :catch_0
    move-exception v5

    .line 479
    .local v5, "cce":Ljava/lang/ClassCastException;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 481
    new-instance v14, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v27, v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v14, v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 484
    .local v14, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v4, 0x0

    .line 485
    .local v4, "blockIndex":I
    const/4 v6, 0x0

    .local v6, "iBlock":I
    :goto_0
    iget v0, v14, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    .line 486
    mul-int/lit8 v18, v6, 0x34

    .line 487
    .local v18, "pStart":I
    add-int/lit8 v27, v18, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v17

    .line 489
    .local v17, "pEnd":I
    const/4 v7, 0x0

    .local v7, "jBlock":I
    :goto_1
    iget v0, v14, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v7, v0, :cond_5

    .line 490
    mul-int/lit8 v21, v7, 0x34

    .line 491
    .local v21, "qStart":I
    add-int/lit8 v27, v21, 0x34

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v28

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v20

    .line 494
    .local v20, "qEnd":I
    iget-object v0, v14, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v27, v0

    aget-object v15, v27, v4

    .line 497
    .local v15, "outBlock":[D
    const/4 v9, 0x0

    .local v9, "kBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_4

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v10

    .line 499
    .local v10, "kWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v28, v0

    mul-int v28, v28, v6

    add-int v28, v28, v9

    aget-object v26, v27, v28

    .line 500
    .local v26, "tBlock":[D
    mul-int/lit8 v23, v9, 0x34

    .line 501
    .local v23, "rStart":I
    const/4 v8, 0x0

    .line 502
    .local v8, "k":I
    move/from16 v16, v18

    .local v16, "p":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 503
    sub-int v27, v16, v18

    mul-int v13, v27, v10

    .line 504
    .local v13, "lStart":I
    add-int v12, v13, v10

    .line 505
    .local v12, "lEnd":I
    move/from16 v19, v21

    .local v19, "q":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 506
    const-wide/16 v24, 0x0

    .line 507
    .local v24, "sum":D
    move/from16 v22, v23

    .line 508
    .local v22, "r":I
    move v11, v13

    .local v11, "l":I
    :goto_5
    if-ge v11, v12, :cond_1

    .line 509
    aget-wide v28, v26, v11

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v24, v24, v28

    .line 510
    add-int/lit8 v22, v22, 0x1

    .line 508
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 512
    :cond_1
    aget-wide v28, v15, v8

    add-double v28, v28, v24

    aput-wide v28, v15, v8

    .line 513
    add-int/lit8 v8, v8, 0x1

    .line 505
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 502
    .end local v11    # "l":I
    .end local v22    # "r":I
    .end local v24    # "sum":D
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 497
    .end local v12    # "lEnd":I
    .end local v13    # "lStart":I
    .end local v19    # "q":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 518
    .end local v8    # "k":I
    .end local v10    # "kWidth":I
    .end local v16    # "p":I
    .end local v23    # "rStart":I
    .end local v26    # "tBlock":[D
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 489
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 485
    .end local v9    # "kBlock":I
    .end local v15    # "outBlock":[D
    .end local v20    # "qEnd":I
    .end local v21    # "qStart":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public bridge synthetic multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
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
    .line 1203
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1204
    div-int/lit8 v0, p1, 0x34

    .line 1205
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1206
    .local v1, "jBlock":I
    mul-int/lit8 v3, v0, 0x34

    sub-int v3, p1, v3

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x34

    sub-int v4, p2, v4

    add-int v2, v3, v4

    .line 1208
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    mul-double/2addr v4, p3

    aput-wide v4, v3, v2

    .line 1209
    return-void
.end method

.method public operate([D)[D
    .locals 24
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1263
    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v15, v0, :cond_0

    .line 1264
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 1266
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v7, v15, [D

    .line 1269
    .local v7, "out":[D
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v3, v15, :cond_4

    .line 1270
    mul-int/lit8 v10, v3, 0x34

    .line 1271
    .local v10, "pStart":I
    add-int/lit8 v15, v10, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 1272
    .local v9, "pEnd":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v15, :cond_3

    .line 1273
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v18, v0

    mul-int v18, v18, v3

    add-int v18, v18, v4

    aget-object v2, v15, v18

    .line 1274
    .local v2, "block":[D
    mul-int/lit8 v14, v4, 0x34

    .line 1275
    .local v14, "qStart":I
    add-int/lit8 v15, v14, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1276
    .local v13, "qEnd":I
    const/4 v5, 0x0

    .line 1277
    .local v5, "k":I
    move v8, v10

    .local v8, "p":I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 1278
    const-wide/16 v16, 0x0

    .line 1279
    .local v16, "sum":D
    move v11, v14

    .line 1280
    .local v11, "q":I
    :goto_3
    add-int/lit8 v15, v13, -0x3

    if-ge v11, v15, :cond_5

    .line 1281
    aget-wide v18, v2, v5

    aget-wide v20, p1, v11

    mul-double v18, v18, v20

    add-int/lit8 v15, v5, 0x1

    aget-wide v20, v2, v15

    add-int/lit8 v15, v11, 0x1

    aget-wide v22, p1, v15

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-int/lit8 v15, v5, 0x2

    aget-wide v20, v2, v15

    add-int/lit8 v15, v11, 0x2

    aget-wide v22, p1, v15

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-int/lit8 v15, v5, 0x3

    aget-wide v20, v2, v15

    add-int/lit8 v15, v11, 0x3

    aget-wide v22, p1, v15

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v16, v16, v18

    .line 1285
    add-int/lit8 v5, v5, 0x4

    .line 1286
    add-int/lit8 v11, v11, 0x4

    goto :goto_3

    .line 1288
    .end local v5    # "k":I
    .end local v11    # "q":I
    .local v6, "k":I
    .local v12, "q":I
    :goto_4
    if-ge v12, v13, :cond_1

    .line 1289
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    aget-wide v18, v2, v6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "q":I
    .restart local v11    # "q":I
    aget-wide v20, p1, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move v12, v11

    .end local v11    # "q":I
    .restart local v12    # "q":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    goto :goto_4

    .line 1291
    :cond_1
    aget-wide v18, v7, v8

    add-double v18, v18, v16

    aput-wide v18, v7, v8

    .line 1277
    add-int/lit8 v8, v8, 0x1

    move v5, v6

    .end local v6    # "k":I
    .restart local v5    # "k":I
    goto :goto_2

    .line 1272
    .end local v12    # "q":I
    .end local v16    # "sum":D
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1269
    .end local v2    # "block":[D
    .end local v5    # "k":I
    .end local v8    # "p":I
    .end local v13    # "qEnd":I
    .end local v14    # "qStart":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1296
    .end local v4    # "jBlock":I
    .end local v9    # "pEnd":I
    .end local v10    # "pStart":I
    :cond_4
    return-object v7

    .restart local v2    # "block":[D
    .restart local v4    # "jBlock":I
    .restart local v5    # "k":I
    .restart local v8    # "p":I
    .restart local v9    # "pEnd":I
    .restart local v10    # "pStart":I
    .restart local v11    # "q":I
    .restart local v13    # "qEnd":I
    .restart local v14    # "qStart":I
    .restart local v16    # "sum":D
    :cond_5
    move v12, v11

    .end local v11    # "q":I
    .restart local v12    # "q":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    goto :goto_4
.end method

.method public preMultiply([D)[D
    .locals 26
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1303
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1304
    new-instance v20, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v20

    .line 1306
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v10, v0, [D

    .line 1309
    .local v10, "out":[D
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    .line 1310
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1311
    .local v5, "jWidth":I
    add-int v6, v5, v5

    .line 1312
    .local v6, "jWidth2":I
    add-int v7, v6, v5

    .line 1313
    .local v7, "jWidth3":I
    add-int v8, v7, v5

    .line 1314
    .local v8, "jWidth4":I
    mul-int/lit8 v17, v4, 0x34

    .line 1315
    .local v17, "qStart":I
    add-int/lit8 v20, v17, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v16

    .line 1316
    .local v16, "qEnd":I
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v3, v0, :cond_3

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v21, v0

    mul-int v21, v21, v3

    add-int v21, v21, v4

    aget-object v2, v20, v21

    .line 1318
    .local v2, "block":[D
    mul-int/lit8 v14, v3, 0x34

    .line 1319
    .local v14, "pStart":I
    add-int/lit8 v20, v14, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1320
    .local v13, "pEnd":I
    move/from16 v15, v17

    .local v15, "q":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 1321
    sub-int v9, v15, v17

    .line 1322
    .local v9, "k":I
    const-wide/16 v18, 0x0

    .line 1323
    .local v18, "sum":D
    move v11, v14

    .line 1324
    .local v11, "p":I
    :goto_3
    add-int/lit8 v20, v13, -0x3

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 1325
    aget-wide v20, v2, v9

    aget-wide v22, p1, v11

    mul-double v20, v20, v22

    add-int v22, v9, v5

    aget-wide v22, v2, v22

    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p1, v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v22, v9, v6

    aget-wide v22, v2, v22

    add-int/lit8 v24, v11, 0x2

    aget-wide v24, p1, v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v22, v9, v7

    aget-wide v22, v2, v22

    add-int/lit8 v24, v11, 0x3

    aget-wide v24, p1, v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-double v18, v18, v20

    .line 1329
    add-int/2addr v9, v8

    .line 1330
    add-int/lit8 v11, v11, 0x4

    goto :goto_3

    .line 1332
    .end local v11    # "p":I
    .local v12, "p":I
    :goto_4
    if-ge v12, v13, :cond_1

    .line 1333
    aget-wide v20, v2, v9

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "p":I
    .restart local v11    # "p":I
    aget-wide v22, p1, v12

    mul-double v20, v20, v22

    add-double v18, v18, v20

    .line 1334
    add-int/2addr v9, v5

    move v12, v11

    .end local v11    # "p":I
    .restart local v12    # "p":I
    goto :goto_4

    .line 1336
    :cond_1
    aget-wide v20, v10, v15

    add-double v20, v20, v18

    aput-wide v20, v10, v15

    .line 1320
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1316
    .end local v9    # "k":I
    .end local v12    # "p":I
    .end local v18    # "sum":D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1309
    .end local v2    # "block":[D
    .end local v13    # "pEnd":I
    .end local v14    # "pStart":I
    .end local v15    # "q":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1341
    .end local v3    # "iBlock":I
    .end local v5    # "jWidth":I
    .end local v6    # "jWidth2":I
    .end local v7    # "jWidth3":I
    .end local v8    # "jWidth4":I
    .end local v16    # "qEnd":I
    .end local v17    # "qStart":I
    :cond_4
    return-object v10

    .restart local v2    # "block":[D
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
    .restart local v18    # "sum":D
    :cond_5
    move v12, v11

    .end local v11    # "p":I
    .restart local v12    # "p":I
    goto :goto_4
.end method

.method public scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 9
    .param p1, "d"    # D

    .prologue
    .line 440
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 443
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 444
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v5, v0

    .line 445
    .local v3, "outBlock":[D
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v5, v0

    .line 446
    .local v4, "tBlock":[D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 447
    aget-wide v6, v4, v1

    add-double/2addr v6, p1

    aput-wide v6, v3, v1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "k":I
    .end local v3    # "outBlock":[D
    .end local v4    # "tBlock":[D
    :cond_1
    return-object v2
.end method

.method public bridge synthetic scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p1, "d"    # D

    .prologue
    .line 457
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 460
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 461
    iget-object v5, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v5, v0

    .line 462
    .local v3, "outBlock":[D
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v5, v0

    .line 463
    .local v4, "tBlock":[D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 464
    aget-wide v6, v4, v1

    mul-double/2addr v6, p1

    aput-wide v6, v3, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "k":I
    .end local v3    # "outBlock":[D
    .end local v4    # "tBlock":[D
    :cond_1
    return-object v2
.end method

.method public setColumn(I[D)V
    .locals 16
    .param p1, "column"    # I
    .param p2, "array"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v9

    .line 1143
    .local v9, "nRows":I
    move-object/from16 v0, p2

    array-length v12, v0

    if-eq v12, v9, :cond_0

    .line 1144
    new-instance v12, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    move-object/from16 v0, p2

    array-length v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-direct {v12, v13, v14, v9, v15}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v12

    .line 1148
    :cond_0
    div-int/lit8 v6, p1, 0x34

    .line 1149
    .local v6, "jBlock":I
    mul-int/lit8 v12, v6, 0x34

    sub-int v7, p1, v12

    .line 1150
    .local v7, "jColumn":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 1151
    .local v8, "jWidth":I
    const/4 v10, 0x0

    .line 1152
    .local v10, "outIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v12, :cond_2

    .line 1153
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v5

    .line 1154
    .local v5, "iHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v13, v4

    add-int/2addr v13, v6

    aget-object v2, v12, v13

    .line 1155
    .local v2, "block":[D
    const/4 v3, 0x0

    .local v3, "i":I
    move v11, v10

    .end local v10    # "outIndex":I
    .local v11, "outIndex":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 1156
    mul-int v12, v3, v8

    add-int/2addr v12, v7

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "outIndex":I
    .restart local v10    # "outIndex":I
    aget-wide v14, p2, v11

    aput-wide v14, v2, v12

    .line 1155
    add-int/lit8 v3, v3, 0x1

    move v11, v10

    .end local v10    # "outIndex":I
    .restart local v11    # "outIndex":I
    goto :goto_1

    .line 1152
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v10, v11

    .end local v11    # "outIndex":I
    .restart local v10    # "outIndex":I
    goto :goto_0

    .line 1159
    .end local v2    # "block":[D
    .end local v3    # "i":I
    .end local v5    # "iHeight":I
    :cond_2
    return-void
.end method

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 18
    .param p1, "column"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 979
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v13

    .line 980
    .local v13, "nRows":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v14

    if-ne v14, v13, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 982
    :cond_0
    new-instance v14, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v13, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v14

    .line 988
    :cond_1
    div-int/lit8 v6, p1, 0x34

    .line 989
    .local v6, "jBlock":I
    mul-int/lit8 v14, v6, 0x34

    sub-int v7, p1, v14

    .line 990
    .local v7, "jColumn":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 991
    .local v8, "jWidth":I
    const/4 v10, 0x0

    .line 992
    .local v10, "mBlockIndex":I
    const/4 v11, 0x0

    .line 993
    .local v11, "mIndex":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v9, v14, v10

    .line 994
    .local v9, "mBlock":[D
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v14, :cond_4

    .line 995
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v5

    .line 996
    .local v5, "iHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v15, v4

    add-int/2addr v15, v6

    aget-object v2, v14, v15

    .line 997
    .local v2, "block":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 998
    array-length v14, v9

    if-lt v11, v14, :cond_2

    .line 999
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v14, v10

    .line 1000
    const/4 v11, 0x0

    .line 1002
    :cond_2
    mul-int v14, v3, v8

    add-int/2addr v14, v7

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "mIndex":I
    .local v12, "mIndex":I
    aget-wide v16, v9, v11

    aput-wide v16, v2, v14

    .line 997
    add-int/lit8 v3, v3, 0x1

    move v11, v12

    .end local v12    # "mIndex":I
    .restart local v11    # "mIndex":I
    goto :goto_1

    .line 994
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1005
    .end local v2    # "block":[D
    .end local v3    # "i":I
    .end local v5    # "iHeight":I
    :cond_4
    return-void
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "column"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 959
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v1

    .line 961
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_0
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p1, "column"    # I
    .param p2, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1067
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumn(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    goto :goto_0
.end method

.method public setEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1177
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1178
    div-int/lit8 v0, p1, 0x34

    .line 1179
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1180
    .local v1, "jBlock":I
    mul-int/lit8 v3, v0, 0x34

    sub-int v3, p1, v3

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x34

    sub-int v4, p2, v4

    add-int v2, v3, v4

    .line 1182
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aput-wide p3, v3, v2

    .line 1183
    return-void
.end method

.method public setRow(I[D)V
    .locals 10
    .param p1, "row"    # I
    .param p2, "array"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1097
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1098
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v5

    .line 1099
    .local v5, "nCols":I
    array-length v7, p2

    if-eq v7, v5, :cond_0

    .line 1100
    new-instance v7, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v8, p2

    invoke-direct {v7, v9, v8, v9, v5}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v7

    .line 1104
    :cond_0
    div-int/lit8 v1, p1, 0x34

    .line 1105
    .local v1, "iBlock":I
    mul-int/lit8 v7, v1, 0x34

    sub-int v2, p1, v7

    .line 1106
    .local v2, "iRow":I
    const/4 v6, 0x0

    .line 1107
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v7, :cond_1

    .line 1108
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 1109
    .local v4, "jWidth":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    aget-object v0, v7, v8

    .line 1110
    .local v0, "block":[D
    mul-int v7, v2, v4

    invoke-static {p2, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    add-int/2addr v6, v4

    .line 1107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1113
    .end local v0    # "block":[D
    .end local v4    # "jWidth":I
    :cond_1
    return-void
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 15
    .param p1, "row"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v10

    .line 896
    .local v10, "nCols":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v11

    if-eq v11, v10, :cond_1

    .line 898
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14, v10}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v11

    .line 904
    :cond_1
    div-int/lit8 v3, p1, 0x34

    .line 905
    .local v3, "iBlock":I
    mul-int/lit8 v11, v3, 0x34

    sub-int v4, p1, v11

    .line 906
    .local v4, "iRow":I
    const/4 v8, 0x0

    .line 907
    .local v8, "mBlockIndex":I
    const/4 v9, 0x0

    .line 908
    .local v9, "mIndex":I
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v11, v8

    .line 909
    .local v7, "mBlock":[D
    const/4 v5, 0x0

    .local v5, "jBlock":I
    :goto_0
    iget v11, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v11, :cond_3

    .line 910
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    .line 911
    .local v6, "jWidth":I
    iget-object v11, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v3

    add-int/2addr v12, v5

    aget-object v2, v11, v12

    .line 912
    .local v2, "block":[D
    array-length v11, v7

    sub-int v1, v11, v9

    .line 913
    .local v1, "available":I
    if-le v6, v1, :cond_2

    .line 914
    mul-int v11, v4, v6

    invoke-static {v7, v9, v2, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v11, v8

    .line 916
    const/4 v11, 0x0

    mul-int v12, v4, v6

    sub-int v13, v6, v1

    invoke-static {v7, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    sub-int v9, v6, v1

    .line 909
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 919
    :cond_2
    mul-int v11, v4, v6

    invoke-static {v7, v9, v2, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    add-int/2addr v9, v6

    goto :goto_1

    .line 923
    .end local v1    # "available":I
    .end local v2    # "block":[D
    .end local v6    # "jWidth":I
    :cond_3
    return-void
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 875
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_0
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1033
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRow(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v1

    .line 1035
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    goto :goto_0
.end method

.method public setSubMatrix([[DII)V
    .locals 32
    .param p1, "subMatrix"    # [[D
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 794
    const/16 v28, 0x0

    aget-object v28, p1, v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v26, v0

    .line 795
    .local v26, "refLength":I
    if-nez v26, :cond_0

    .line 796
    new-instance v28, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v29, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct/range {v28 .. v29}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v28

    .line 798
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    add-int v28, v28, p2

    add-int/lit8 v11, v28, -0x1

    .line 799
    .local v11, "endRow":I
    add-int v28, p3, v26

    add-int/lit8 v10, v28, -0x1

    .line 800
    .local v10, "endColumn":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v11, v2, v10}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 801
    move-object/from16 v4, p1

    .local v4, "arr$":[[D
    array-length v0, v4

    move/from16 v25, v0

    .local v25, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v25

    if-ge v15, v0, :cond_2

    aget-object v27, v4, v15

    .line 802
    .local v27, "subRow":[D
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 803
    new-instance v28, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v28

    .line 801
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 808
    .end local v27    # "subRow":[D
    :cond_2
    div-int/lit8 v9, p2, 0x34

    .line 809
    .local v9, "blockStartRow":I
    add-int/lit8 v28, v11, 0x34

    div-int/lit8 v7, v28, 0x34

    .line 810
    .local v7, "blockEndRow":I
    div-int/lit8 v8, p3, 0x34

    .line 811
    .local v8, "blockStartColumn":I
    add-int/lit8 v28, v10, 0x34

    div-int/lit8 v6, v28, 0x34

    .line 814
    .local v6, "blockEndColumn":I
    move/from16 v16, v9

    .local v16, "iBlock":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v7, :cond_5

    .line 815
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v18

    .line 816
    .local v18, "iHeight":I
    mul-int/lit8 v13, v16, 0x34

    .line 817
    .local v13, "firstRow":I
    move/from16 v0, p2

    invoke-static {v0, v13}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v19

    .line 818
    .local v19, "iStart":I
    add-int/lit8 v28, v11, 0x1

    add-int v29, v13, v18

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v17

    .line 820
    .local v17, "iEnd":I
    move/from16 v20, v8

    .local v20, "jBlock":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v6, :cond_4

    .line 821
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v24

    .line 822
    .local v24, "jWidth":I
    mul-int/lit8 v12, v20, 0x34

    .line 823
    .local v12, "firstColumn":I
    move/from16 v0, p3

    invoke-static {v0, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v23

    .line 824
    .local v23, "jStart":I
    add-int/lit8 v28, v10, 0x1

    add-int v29, v12, v24

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v21

    .line 825
    .local v21, "jEnd":I
    sub-int v22, v21, v23

    .line 828
    .local v22, "jLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v29, v0

    mul-int v29, v29, v16

    add-int v29, v29, v20

    aget-object v5, v28, v29

    .line 829
    .local v5, "block":[D
    move/from16 v14, v19

    .local v14, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 830
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

    .line 829
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 820
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 814
    .end local v5    # "block":[D
    .end local v12    # "firstColumn":I
    .end local v14    # "i":I
    .end local v21    # "jEnd":I
    .end local v22    # "jLength":I
    .end local v23    # "jStart":I
    .end local v24    # "jWidth":I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 837
    .end local v13    # "firstRow":I
    .end local v17    # "iEnd":I
    .end local v18    # "iHeight":I
    .end local v19    # "iStart":I
    .end local v20    # "jBlock":I
    :cond_5
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 10
    .param p1, "m"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 421
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 424
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 425
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v6, v0

    .line 426
    .local v4, "outBlock":[D
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v6, v0

    .line 427
    .local v5, "tBlock":[D
    iget-object v6, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v6, v0

    .line 428
    .local v2, "mBlock":[D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 429
    aget-wide v6, v5, v1

    aget-wide v8, v2, v1

    sub-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "k":I
    .end local v2    # "mBlock":[D
    .end local v4    # "outBlock":[D
    .end local v5    # "tBlock":[D
    :cond_1
    return-object v3
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 20
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 373
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 404
    :cond_0
    return-object v7

    .line 374
    :catch_0
    move-exception v3

    .line 376
    .local v3, "cce":Ljava/lang/ClassCastException;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 378
    new-instance v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 381
    .local v7, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v2, 0x0

    .line 382
    .local v2, "blockIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    iget v0, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_0

    .line 383
    const/4 v5, 0x0

    .local v5, "jBlock":I
    :goto_1
    iget v0, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 386
    iget-object v0, v7, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v0

    aget-object v8, v16, v2

    .line 387
    .local v8, "outBlock":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v0

    aget-object v15, v16, v2

    .line 388
    .local v15, "tBlock":[D
    mul-int/lit8 v11, v4, 0x34

    .line 389
    .local v11, "pStart":I
    add-int/lit8 v16, v11, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 390
    .local v10, "pEnd":I
    mul-int/lit8 v14, v5, 0x34

    .line 391
    .local v14, "qStart":I
    add-int/lit8 v16, v14, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 392
    .local v13, "qEnd":I
    const/4 v6, 0x0

    .line 393
    .local v6, "k":I
    move v9, v11

    .local v9, "p":I
    :goto_2
    if-ge v9, v10, :cond_2

    .line 394
    move v12, v14

    .local v12, "q":I
    :goto_3
    if-ge v12, v13, :cond_1

    .line 395
    aget-wide v16, v15, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    sub-double v16, v16, v18

    aput-wide v16, v8, v6

    .line 396
    add-int/lit8 v6, v6, 0x1

    .line 394
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 393
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 400
    .end local v12    # "q":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 383
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 382
    .end local v6    # "k":I
    .end local v8    # "outBlock":[D
    .end local v9    # "p":I
    .end local v10    # "pEnd":I
    .end local v11    # "pStart":I
    .end local v13    # "qEnd":I
    .end local v14    # "qStart":I
    .end local v15    # "tBlock":[D
    :cond_3
    add-int/lit8 v4, v4, 0x1

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
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 22

    .prologue
    .line 1214
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v9

    .line 1215
    .local v9, "nRows":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v8

    .line 1216
    .local v8, "nCols":I
    new-instance v10, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v10, v8, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 1219
    .local v10, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v2, 0x0

    .line 1220
    .local v2, "blockIndex":I
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_3

    .line 1221
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_2

    .line 1223
    iget-object v0, v10, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v19, v0

    aget-object v11, v19, v2

    .line 1224
    .local v11, "outBlock":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    move/from16 v20, v0

    mul-int v20, v20, v4

    add-int v20, v20, v3

    aget-object v18, v19, v20

    .line 1225
    .local v18, "tBlock":[D
    mul-int/lit8 v14, v3, 0x34

    .line 1226
    .local v14, "pStart":I
    add-int/lit8 v19, v14, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1227
    .local v13, "pEnd":I
    mul-int/lit8 v17, v4, 0x34

    .line 1228
    .local v17, "qStart":I
    add-int/lit8 v19, v17, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v16

    .line 1229
    .local v16, "qEnd":I
    const/4 v5, 0x0

    .line 1230
    .local v5, "k":I
    move v12, v14

    .local v12, "p":I
    :goto_2
    if-ge v12, v13, :cond_1

    .line 1231
    sub-int v7, v13, v14

    .line 1232
    .local v7, "lInc":I
    sub-int v6, v12, v14

    .line 1233
    .local v6, "l":I
    move/from16 v15, v17

    .local v15, "q":I
    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 1234
    aget-wide v20, v18, v6

    aput-wide v20, v11, v5

    .line 1235
    add-int/lit8 v5, v5, 0x1

    .line 1236
    add-int/2addr v6, v7

    .line 1233
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1230
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1240
    .end local v6    # "l":I
    .end local v7    # "lInc":I
    .end local v15    # "q":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1220
    .end local v5    # "k":I
    .end local v11    # "outBlock":[D
    .end local v12    # "p":I
    .end local v13    # "pEnd":I
    .end local v14    # "pStart":I
    .end local v16    # "qEnd":I
    .end local v17    # "qStart":I
    .end local v18    # "tBlock":[D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1244
    .end local v4    # "jBlock":I
    :cond_3
    return-object v10
.end method

.method public bridge synthetic transpose()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 20
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .prologue
    .line 1455
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1456
    const/4 v10, 0x0

    .line 1457
    .local v10, "blockIndex":I
    const/4 v11, 0x0

    .local v11, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v11, v2, :cond_3

    .line 1458
    mul-int/lit8 v16, v11, 0x34

    .line 1459
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1460
    .local v15, "pEnd":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v12, v2, :cond_2

    .line 1461
    mul-int/lit8 v19, v12, 0x34

    .line 1462
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1463
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v9, v2, v10

    .line 1464
    .local v9, "block":[D
    const/4 v13, 0x0

    .line 1465
    .local v13, "k":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 1466
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1467
    aget-wide v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v2

    aput-wide v2, v9, v13

    .line 1468
    add-int/lit8 v13, v13, 0x1

    .line 1466
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1465
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1471
    .end local v17    # "q":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1460
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1457
    .end local v9    # "block":[D
    .end local v13    # "k":I
    .end local v14    # "p":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1474
    .end local v12    # "jBlock":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 26
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
    .line 1509
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1510
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v6 .. v12}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1511
    div-int/lit8 v14, p2, 0x34

    .local v14, "iBlock":I
    :goto_0
    div-int/lit8 v6, p3, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v14, v6, :cond_3

    .line 1512
    mul-int/lit8 v19, v14, 0x34

    .line 1513
    .local v19, "p0":I
    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v21

    .line 1514
    .local v21, "pStart":I
    add-int/lit8 v6, v14, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v20

    .line 1515
    .local v20, "pEnd":I
    div-int/lit8 v15, p4, 0x34

    .local v15, "jBlock":I
    :goto_1
    div-int/lit8 v6, p5, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v15, v6, :cond_2

    .line 1516
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v16

    .line 1517
    .local v16, "jWidth":I
    mul-int/lit8 v23, v15, 0x34

    .line 1518
    .local v23, "q0":I
    move/from16 v0, p4

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v25

    .line 1519
    .local v25, "qStart":I
    add-int/lit8 v6, v15, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p5, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v24

    .line 1520
    .local v24, "qEnd":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v14

    add-int/2addr v7, v15

    aget-object v13, v6, v7

    .line 1521
    .local v13, "block":[D
    move/from16 v18, v21

    .local v18, "p":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 1522
    sub-int v6, v18, v19

    mul-int v6, v6, v16

    add-int v6, v6, v25

    sub-int v17, v6, v23

    .line 1523
    .local v17, "k":I
    move/from16 v22, v25

    .local v22, "q":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 1524
    aget-wide v6, v13, v17

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v6

    aput-wide v6, v13, v17

    .line 1525
    add-int/lit8 v17, v17, 0x1

    .line 1523
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1521
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1515
    .end local v17    # "k":I
    .end local v22    # "q":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1511
    .end local v13    # "block":[D
    .end local v16    # "jWidth":I
    .end local v18    # "p":I
    .end local v23    # "q0":I
    .end local v24    # "qEnd":I
    .end local v25    # "qStart":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1530
    .end local v15    # "jBlock":I
    .end local v19    # "p0":I
    .end local v20    # "pEnd":I
    .end local v21    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v6

    return-wide v6
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 20
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .prologue
    .line 1480
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1481
    const/4 v10, 0x0

    .line 1482
    .local v10, "blockIndex":I
    const/4 v11, 0x0

    .local v11, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v11, v2, :cond_3

    .line 1483
    mul-int/lit8 v16, v11, 0x34

    .line 1484
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1485
    .local v15, "pEnd":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v12, v2, :cond_2

    .line 1486
    mul-int/lit8 v19, v12, 0x34

    .line 1487
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1488
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v9, v2, v10

    .line 1489
    .local v9, "block":[D
    const/4 v13, 0x0

    .line 1490
    .local v13, "k":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 1491
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1492
    aget-wide v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1493
    add-int/lit8 v13, v13, 0x1

    .line 1491
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1490
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1496
    .end local v17    # "q":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1485
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1482
    .end local v9    # "block":[D
    .end local v13    # "k":I
    .end local v14    # "p":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1499
    .end local v12    # "jBlock":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 26
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
    .line 1540
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1541
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v6 .. v12}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1542
    div-int/lit8 v14, p2, 0x34

    .local v14, "iBlock":I
    :goto_0
    div-int/lit8 v6, p3, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v14, v6, :cond_3

    .line 1543
    mul-int/lit8 v19, v14, 0x34

    .line 1544
    .local v19, "p0":I
    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v21

    .line 1545
    .local v21, "pStart":I
    add-int/lit8 v6, v14, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v20

    .line 1546
    .local v20, "pEnd":I
    div-int/lit8 v15, p4, 0x34

    .local v15, "jBlock":I
    :goto_1
    div-int/lit8 v6, p5, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v15, v6, :cond_2

    .line 1547
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v16

    .line 1548
    .local v16, "jWidth":I
    mul-int/lit8 v23, v15, 0x34

    .line 1549
    .local v23, "q0":I
    move/from16 v0, p4

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v25

    .line 1550
    .local v25, "qStart":I
    add-int/lit8 v6, v15, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p5, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v24

    .line 1551
    .local v24, "qEnd":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v14

    add-int/2addr v7, v15

    aget-object v13, v6, v7

    .line 1552
    .local v13, "block":[D
    move/from16 v18, v21

    .local v18, "p":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 1553
    sub-int v6, v18, v19

    mul-int v6, v6, v16

    add-int v6, v6, v25

    sub-int v17, v6, v23

    .line 1554
    .local v17, "k":I
    move/from16 v22, v25

    .local v22, "q":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 1555
    aget-wide v6, v13, v17

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1556
    add-int/lit8 v17, v17, 0x1

    .line 1554
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1552
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1546
    .end local v17    # "k":I
    .end local v22    # "q":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1542
    .end local v13    # "block":[D
    .end local v16    # "jWidth":I
    .end local v18    # "p":I
    .end local v23    # "q0":I
    .end local v24    # "qEnd":I
    .end local v25    # "qStart":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1561
    .end local v15    # "jBlock":I
    .end local v19    # "p0":I
    .end local v20    # "pEnd":I
    .end local v21    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v6

    return-wide v6
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 20
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .prologue
    .line 1347
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1348
    const/4 v10, 0x0

    .local v10, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v10, v2, :cond_3

    .line 1349
    mul-int/lit8 v16, v10, 0x34

    .line 1350
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1351
    .local v15, "pEnd":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 1352
    const/4 v11, 0x0

    .local v11, "jBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v11, v2, :cond_1

    .line 1353
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v12

    .line 1354
    .local v12, "jWidth":I
    mul-int/lit8 v19, v11, 0x34

    .line 1355
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1356
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v3, v10

    add-int/2addr v3, v11

    aget-object v9, v2, v3

    .line 1357
    .local v9, "block":[D
    sub-int v2, v14, v16

    mul-int v13, v2, v12

    .line 1358
    .local v13, "k":I
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1359
    aget-wide v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v2

    aput-wide v2, v9, v13

    .line 1360
    add-int/lit8 v13, v13, 0x1

    .line 1358
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1352
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1351
    .end local v9    # "block":[D
    .end local v12    # "jWidth":I
    .end local v13    # "k":I
    .end local v17    # "q":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1348
    .end local v11    # "jBlock":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1365
    .end local v14    # "p":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 26
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
    .line 1398
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1399
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v6 .. v12}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1400
    div-int/lit8 v14, p2, 0x34

    .local v14, "iBlock":I
    :goto_0
    div-int/lit8 v6, p3, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v14, v6, :cond_3

    .line 1401
    mul-int/lit8 v19, v14, 0x34

    .line 1402
    .local v19, "p0":I
    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v21

    .line 1403
    .local v21, "pStart":I
    add-int/lit8 v6, v14, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v20

    .line 1404
    .local v20, "pEnd":I
    move/from16 v18, v21

    .local v18, "p":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 1405
    div-int/lit8 v15, p4, 0x34

    .local v15, "jBlock":I
    :goto_2
    div-int/lit8 v6, p5, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v15, v6, :cond_1

    .line 1406
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v16

    .line 1407
    .local v16, "jWidth":I
    mul-int/lit8 v23, v15, 0x34

    .line 1408
    .local v23, "q0":I
    move/from16 v0, p4

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v25

    .line 1409
    .local v25, "qStart":I
    add-int/lit8 v6, v15, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p5, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v24

    .line 1410
    .local v24, "qEnd":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v14

    add-int/2addr v7, v15

    aget-object v13, v6, v7

    .line 1411
    .local v13, "block":[D
    sub-int v6, v18, v19

    mul-int v6, v6, v16

    add-int v6, v6, v25

    sub-int v17, v6, v23

    .line 1412
    .local v17, "k":I
    move/from16 v22, v25

    .local v22, "q":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 1413
    aget-wide v6, v13, v17

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v6

    aput-wide v6, v13, v17

    .line 1414
    add-int/lit8 v17, v17, 0x1

    .line 1412
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1405
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1404
    .end local v13    # "block":[D
    .end local v16    # "jWidth":I
    .end local v17    # "k":I
    .end local v22    # "q":I
    .end local v23    # "q0":I
    .end local v24    # "qEnd":I
    .end local v25    # "qStart":I
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1400
    .end local v15    # "jBlock":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1419
    .end local v18    # "p":I
    .end local v19    # "p0":I
    .end local v20    # "pEnd":I
    .end local v21    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v6

    return-wide v6
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 20
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .prologue
    .line 1371
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1372
    const/4 v10, 0x0

    .local v10, "iBlock":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v10, v2, :cond_3

    .line 1373
    mul-int/lit8 v16, v10, 0x34

    .line 1374
    .local v16, "pStart":I
    add-int/lit8 v2, v16, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 1375
    .local v15, "pEnd":I
    move/from16 v14, v16

    .local v14, "p":I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 1376
    const/4 v11, 0x0

    .local v11, "jBlock":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v11, v2, :cond_1

    .line 1377
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v12

    .line 1378
    .local v12, "jWidth":I
    mul-int/lit8 v19, v11, 0x34

    .line 1379
    .local v19, "qStart":I
    add-int/lit8 v2, v19, 0x34

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v18

    .line 1380
    .local v18, "qEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v3, v10

    add-int/2addr v3, v11

    aget-object v9, v2, v3

    .line 1381
    .local v9, "block":[D
    sub-int v2, v14, v16

    mul-int v13, v2, v12

    .line 1382
    .local v13, "k":I
    move/from16 v17, v19

    .local v17, "q":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1383
    aget-wide v2, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v14, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1384
    add-int/lit8 v13, v13, 0x1

    .line 1382
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1376
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1375
    .end local v9    # "block":[D
    .end local v12    # "jWidth":I
    .end local v13    # "k":I
    .end local v17    # "q":I
    .end local v18    # "qEnd":I
    .end local v19    # "qStart":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1372
    .end local v11    # "jBlock":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1389
    .end local v14    # "p":I
    .end local v15    # "pEnd":I
    .end local v16    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 26
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
    .line 1428
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1429
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v6 .. v12}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1430
    div-int/lit8 v14, p2, 0x34

    .local v14, "iBlock":I
    :goto_0
    div-int/lit8 v6, p3, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v14, v6, :cond_3

    .line 1431
    mul-int/lit8 v19, v14, 0x34

    .line 1432
    .local v19, "p0":I
    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v21

    .line 1433
    .local v21, "pStart":I
    add-int/lit8 v6, v14, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v20

    .line 1434
    .local v20, "pEnd":I
    move/from16 v18, v21

    .local v18, "p":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 1435
    div-int/lit8 v15, p4, 0x34

    .local v15, "jBlock":I
    :goto_2
    div-int/lit8 v6, p5, 0x34

    add-int/lit8 v6, v6, 0x1

    if-ge v15, v6, :cond_1

    .line 1436
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v16

    .line 1437
    .local v16, "jWidth":I
    mul-int/lit8 v23, v15, 0x34

    .line 1438
    .local v23, "q0":I
    move/from16 v0, p4

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v25

    .line 1439
    .local v25, "qStart":I
    add-int/lit8 v6, v15, 0x1

    mul-int/lit8 v6, v6, 0x34

    add-int/lit8 v7, p5, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v24

    .line 1440
    .local v24, "qEnd":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v14

    add-int/2addr v7, v15

    aget-object v13, v6, v7

    .line 1441
    .local v13, "block":[D
    sub-int v6, v18, v19

    mul-int v6, v6, v16

    add-int v6, v6, v25

    sub-int v17, v6, v23

    .line 1442
    .local v17, "k":I
    move/from16 v22, v25

    .local v22, "q":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 1443
    aget-wide v6, v13, v17

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1444
    add-int/lit8 v17, v17, 0x1

    .line 1442
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1435
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1434
    .end local v13    # "block":[D
    .end local v16    # "jWidth":I
    .end local v17    # "k":I
    .end local v22    # "q":I
    .end local v23    # "q0":I
    .end local v24    # "qEnd":I
    .end local v25    # "qStart":I
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1430
    .end local v15    # "jBlock":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1449
    .end local v18    # "p":I
    .end local v19    # "p0":I
    .end local v20    # "pEnd":I
    .end local v21    # "pStart":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v6

    return-wide v6
.end method
