.class Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final lTData:[[D


# direct methods
.method private constructor <init>([[D)V
    .locals 0
    .param p1, "lTData"    # [[D

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    .line 216
    return-void
.end method

.method synthetic constructor <init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [[D
    .param p2, "x1"    # Lorg/apache/commons/math3/linear/CholeskyDecomposition$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;-><init>([[D)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 22
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v12, v0

    .line 258
    .local v12, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_0

    .line 259
    new-instance v17, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v17

    .line 262
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v13

    .line 263
    .local v13, "nColB":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v14

    .line 266
    .local v14, "x":[[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v12, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    move-object/from16 v17, v0

    aget-object v5, v17, v3

    .line 268
    .local v5, "lJ":[D
    aget-wide v10, v5, v3

    .line 269
    .local v10, "lJJ":D
    aget-object v16, v14, v3

    .line 270
    .local v16, "xJ":[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v13, :cond_1

    .line 271
    aget-wide v18, v16, v4

    div-double v18, v18, v10

    aput-wide v18, v16, v4

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 273
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v12, :cond_3

    .line 274
    aget-object v15, v14, v2

    .line 275
    .local v15, "xI":[D
    aget-wide v8, v5, v2

    .line 276
    .local v8, "lJI":D
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v13, :cond_2

    .line 277
    aget-wide v18, v15, v4

    aget-wide v20, v16, v4

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    aput-wide v18, v15, v4

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 273
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 266
    .end local v8    # "lJI":D
    .end local v15    # "xI":[D
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v5    # "lJ":[D
    .end local v10    # "lJJ":D
    .end local v16    # "xJ":[D
    :cond_4
    add-int/lit8 v3, v12, -0x1

    :goto_4
    if-ltz v3, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    aget-wide v10, v17, v3

    .line 285
    .restart local v10    # "lJJ":D
    aget-object v16, v14, v3

    .line 286
    .restart local v16    # "xJ":[D
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_5
    if-ge v4, v13, :cond_5

    .line 287
    aget-wide v18, v16, v4

    div-double v18, v18, v10

    aput-wide v18, v16, v4

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 289
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v3, :cond_7

    .line 290
    aget-object v15, v14, v2

    .line 291
    .restart local v15    # "xI":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v2

    aget-wide v6, v17, v3

    .line 292
    .local v6, "lIJ":D
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v13, :cond_6

    .line 293
    aget-wide v18, v15, v4

    aget-wide v20, v16, v4

    mul-double v20, v20, v6

    sub-double v18, v18, v20

    aput-wide v18, v15, v4

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 289
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 283
    .end local v6    # "lIJ":D
    .end local v15    # "xI":[D
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 298
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v10    # "lJJ":D
    .end local v16    # "xJ":[D
    :cond_8
    new-instance v17, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    return-object v17
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 226
    iget-object v5, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v3, v5

    .line 227
    .local v3, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 228
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v8

    invoke-direct {v5, v8, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 231
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v4

    .line 234
    .local v4, "x":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 235
    iget-object v5, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v2, v5, v1

    .line 236
    .local v2, "lJ":[D
    aget-wide v8, v4, v1

    aget-wide v10, v2, v1

    div-double/2addr v8, v10

    aput-wide v8, v4, v1

    .line 237
    aget-wide v6, v4, v1

    .line 238
    .local v6, "xJ":D
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 239
    aget-wide v8, v4, v0

    aget-wide v10, v2, v0

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    aput-wide v8, v4, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    .end local v2    # "lJ":[D
    .end local v6    # "xJ":D
    :cond_2
    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 245
    aget-wide v8, v4, v1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v5, v5, v1

    aget-wide v10, v5, v1

    div-double/2addr v8, v10

    aput-wide v8, v4, v1

    .line 246
    aget-wide v6, v4, v1

    .line 247
    .restart local v6    # "xJ":D
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 248
    aget-wide v8, v4, v0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v5, v5, v0

    aget-wide v10, v5, v1

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    aput-wide v8, v4, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 244
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 252
    .end local v0    # "i":I
    .end local v6    # "xJ":D
    :cond_4
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v5
.end method
