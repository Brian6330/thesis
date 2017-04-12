.class public Lorg/apache/commons/math3/linear/QRDecomposition;
.super Ljava/lang/Object;
.source "QRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/QRDecomposition$1;,
        Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

.field private qrt:[[D

.field private rDiag:[D

.field private final threshold:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 4
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "threshold"    # D

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    .line 93
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 94
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 95
    .local v1, "n":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    .line 96
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    .line 97
    iput-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 98
    iput-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    iput-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    iput-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    .line 104
    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 3
    .param p1, "matrix"    # [[D

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, "minor":I
    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .prologue
    .line 274
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v5, :cond_2

    .line 276
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v4, v5

    .line 277
    .local v4, "n":I
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v3, v5

    .line 278
    .local v3, "m":I
    filled-new-array {v3, v4}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 279
    .local v0, "ha":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 280
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 281
    aget-object v5, v0, v1

    iget-object v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v1

    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v8, v8, v2

    neg-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "j":I
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 288
    .end local v0    # "ha":[[D
    .end local v1    # "i":I
    .end local v3    # "m":I
    .end local v4    # "n":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v5
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v11, :cond_5

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v7, v11

    .line 230
    .local v7, "n":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    const/4 v12, 0x0

    aget-object v11, v11, v12

    array-length v5, v11

    .line 231
    .local v5, "m":I
    filled-new-array {v5, v5}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 238
    .local v9, "qta":[[D
    add-int/lit8 v6, v5, -0x1

    .local v6, "minor":I
    :goto_0
    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    if-lt v6, v11, :cond_0

    .line 239
    aget-object v11, v9, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v11, v6

    .line 238
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    :goto_1
    if-ltz v6, :cond_4

    .line 243
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v8, v11, v6

    .line 244
    .local v8, "qrtMinor":[D
    aget-object v11, v9, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v11, v6

    .line 245
    aget-wide v12, v8, v6

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_3

    .line 246
    move v4, v6

    .local v4, "col":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 247
    const-wide/16 v2, 0x0

    .line 248
    .local v2, "alpha":D
    move v10, v6

    .local v10, "row":I
    :goto_3
    if-ge v10, v5, :cond_1

    .line 249
    aget-object v11, v9, v4

    aget-wide v12, v11, v10

    aget-wide v14, v8, v10

    mul-double/2addr v12, v14

    sub-double/2addr v2, v12

    .line 248
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v12, v11, v6

    aget-wide v14, v8, v6

    mul-double/2addr v12, v14

    div-double/2addr v2, v12

    .line 253
    move v10, v6

    :goto_4
    if-ge v10, v5, :cond_2

    .line 254
    aget-object v11, v9, v4

    aget-wide v12, v11, v10

    neg-double v14, v2

    aget-wide v16, v8, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v11, v10

    .line 253
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 246
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 242
    .end local v2    # "alpha":D
    .end local v4    # "col":I
    .end local v10    # "row":I
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 259
    .end local v8    # "qrtMinor":[D
    :cond_4
    invoke-static {v9}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 263
    .end local v5    # "m":I
    .end local v6    # "minor":I
    .end local v7    # "n":I
    .end local v9    # "qta":[[D
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v11
.end method

.method public getR()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .prologue
    .line 188
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v5, :cond_2

    .line 191
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v2, v5

    .line 192
    .local v2, "n":I
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v1, v5

    .line 193
    .local v1, "m":I
    filled-new-array {v1, v2}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 195
    .local v3, "ra":[[D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "row":I
    :goto_0
    if-ltz v4, :cond_1

    .line 196
    aget-object v5, v3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    .line 197
    add-int/lit8 v0, v4, 0x1

    .local v0, "col":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 198
    aget-object v5, v3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v6, v6, v0

    aget-wide v6, v6, v4

    aput-wide v6, v5, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 201
    .end local v0    # "col":I
    :cond_1
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 205
    .end local v1    # "m":I
    .end local v2    # "n":I
    .end local v3    # "ra":[[D
    .end local v4    # "row":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v5
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 7

    .prologue
    .line 304
    new-instance v1, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V

    return-object v1
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 18
    .param p1, "minor"    # I
    .param p2, "matrix"    # [[D

    .prologue
    .line 123
    aget-object v10, p2, p1

    .line 132
    .local v10, "qrtMinor":[D
    const-wide/16 v12, 0x0

    .line 133
    .local v12, "xNormSqr":D
    move/from16 v11, p1

    .local v11, "row":I
    :goto_0
    array-length v14, v10

    if-ge v11, v14, :cond_0

    .line 134
    aget-wide v6, v10, v11

    .line 135
    .local v6, "c":D
    mul-double v14, v6, v6

    add-double/2addr v12, v14

    .line 133
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 137
    .end local v6    # "c":D
    :cond_0
    aget-wide v14, v10, p1

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    neg-double v2, v14

    .line 138
    .local v2, "a":D
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aput-wide v2, v14, p1

    .line 140
    const-wide/16 v14, 0x0

    cmpl-double v14, v2, v14

    if-eqz v14, :cond_4

    .line 150
    aget-wide v14, v10, p1

    sub-double/2addr v14, v2

    aput-wide v14, v10, p1

    .line 164
    add-int/lit8 v8, p1, 0x1

    .local v8, "col":I
    :goto_2
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v8, v14, :cond_4

    .line 165
    aget-object v9, p2, v8

    .line 166
    .local v9, "qrtCol":[D
    const-wide/16 v4, 0x0

    .line 167
    .local v4, "alpha":D
    move/from16 v11, p1

    :goto_3
    array-length v14, v9

    if-ge v11, v14, :cond_2

    .line 168
    aget-wide v14, v9, v11

    aget-wide v16, v10, v11

    mul-double v14, v14, v16

    sub-double/2addr v4, v14

    .line 167
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 137
    .end local v2    # "a":D
    .end local v4    # "alpha":D
    .end local v8    # "col":I
    .end local v9    # "qrtCol":[D
    :cond_1
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    goto :goto_1

    .line 170
    .restart local v2    # "a":D
    .restart local v4    # "alpha":D
    .restart local v8    # "col":I
    .restart local v9    # "qrtCol":[D
    :cond_2
    aget-wide v14, v10, p1

    mul-double/2addr v14, v2

    div-double/2addr v4, v14

    .line 173
    move/from16 v11, p1

    :goto_4
    array-length v14, v9

    if-ge v11, v14, :cond_3

    .line 174
    aget-wide v14, v9, v11

    aget-wide v16, v10, v11

    mul-double v16, v16, v4

    sub-double v14, v14, v16

    aput-wide v14, v9, v11

    .line 173
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 164
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 178
    .end local v4    # "alpha":D
    .end local v8    # "col":I
    .end local v9    # "qrtCol":[D
    :cond_4
    return-void
.end method
