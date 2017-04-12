.class public Lorg/apache/commons/math3/linear/LUDecomposition;
.super Ljava/lang/Object;
.source "LUDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/LUDecomposition$1;,
        Lorg/apache/commons/math3/linear/LUDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOO_SMALL:D = 1.0E-11


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private even:Z

.field private final lu:[[D

.field private final pivot:[I

.field private singular:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 75
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 26
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "singularityThreshold"    # D

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v19

    if-nez v19, :cond_0

    .line 87
    new-instance v19, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v22

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v19

    .line 91
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v13

    .line 92
    .local v13, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    .line 93
    new-array v0, v13, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    .line 94
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 95
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 96
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_0
    if-ge v15, v13, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    move-object/from16 v19, v0

    aput v15, v19, v15

    .line 99
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    .line 103
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    .line 106
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v13, :cond_7

    .line 109
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v4, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v12, v19, v15

    .line 111
    .local v12, "luRow":[D
    aget-wide v16, v12, v4

    .line 112
    .local v16, "sum":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v15, :cond_2

    .line 113
    aget-wide v22, v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    aget-wide v24, v19, v4

    mul-double v22, v22, v24

    sub-double v16, v16, v22

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 115
    :cond_2
    aput-wide v16, v12, v4

    .line 109
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 119
    .end local v5    # "i":I
    .end local v12    # "luRow":[D
    .end local v16    # "sum":D
    :cond_3
    move v14, v4

    .line 120
    .local v14, "max":I
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 121
    .local v6, "largest":D
    move v15, v4

    :goto_4
    if-ge v15, v13, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v12, v19, v15

    .line 123
    .restart local v12    # "luRow":[D
    aget-wide v16, v12, v4

    .line 124
    .restart local v16    # "sum":D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v4, :cond_4

    .line 125
    aget-wide v22, v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    aget-wide v24, v19, v4

    mul-double v22, v22, v24

    sub-double v16, v16, v22

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 127
    :cond_4
    aput-wide v16, v12, v4

    .line 130
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpl-double v19, v22, v6

    if-lez v19, :cond_5

    .line 131
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 132
    move v14, v15

    .line 121
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 137
    .end local v5    # "i":I
    .end local v12    # "luRow":[D
    .end local v16    # "sum":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v14

    aget-wide v22, v19, v4

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpg-double v19, v22, p2

    if-gez v19, :cond_8

    .line 138
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    .line 164
    .end local v6    # "largest":D
    .end local v14    # "max":I
    :cond_7
    return-void

    .line 143
    .restart local v6    # "largest":D
    .restart local v14    # "max":I
    :cond_8
    if-eq v14, v4, :cond_a

    .line 144
    const-wide/16 v20, 0x0

    .line 145
    .local v20, "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v9, v19, v14

    .line 146
    .local v9, "luMax":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v8, v19, v4

    .line 147
    .local v8, "luCol":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v13, :cond_9

    .line 148
    aget-wide v20, v9, v5

    .line 149
    aget-wide v22, v8, v5

    aput-wide v22, v9, v5

    .line 150
    aput-wide v20, v8, v5

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    move-object/from16 v19, v0

    aget v18, v19, v14

    .line 153
    .local v18, "temp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    move-object/from16 v22, v0

    aget v22, v22, v4

    aput v22, v19, v14

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    move-object/from16 v19, v0

    aput v18, v19, v4

    .line 155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    .line 159
    .end local v5    # "i":I
    .end local v8    # "luCol":[D
    .end local v9    # "luMax":[D
    .end local v18    # "temp":I
    .end local v20    # "tmp":D
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    aget-wide v10, v19, v4

    .line 160
    .local v10, "luDiag":D
    add-int/lit8 v15, v4, 0x1

    :goto_8
    if-ge v15, v13, :cond_c

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v15

    aget-wide v22, v19, v4

    div-double v22, v22, v10

    aput-wide v22, v19, v4

    .line 160
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 155
    .end local v10    # "luDiag":D
    .restart local v5    # "i":I
    .restart local v8    # "luCol":[D
    .restart local v9    # "luMax":[D
    .restart local v18    # "temp":I
    .restart local v20    # "tmp":D
    :cond_b
    const/16 v19, 0x0

    goto :goto_7

    .line 106
    .end local v5    # "i":I
    .end local v8    # "luCol":[D
    .end local v9    # "luMax":[D
    .end local v18    # "temp":I
    .end local v20    # "tmp":D
    .restart local v10    # "luDiag":D
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getDeterminant()D
    .locals 6

    .prologue
    .line 239
    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-eqz v4, :cond_1

    .line 240
    const-wide/16 v0, 0x0

    .line 247
    :cond_0
    return-wide v0

    .line 242
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v3, v4

    .line 243
    .local v3, "m":I
    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    if-eqz v4, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 244
    .local v0, "determinant":D
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 245
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v2

    mul-double/2addr v0, v4

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "determinant":D
    .end local v2    # "i":I
    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .prologue
    .line 172
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v4, :cond_1

    .line 173
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v3, v4

    .line 174
    .local v3, "m":I
    invoke-static {v3, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 176
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v2, v4, v0

    .line 177
    .local v2, "luI":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v6, v2, v1

    invoke-interface {v4, v0, v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v0, v0, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "luI":[D
    .end local v3    # "m":I
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v4
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .prologue
    .line 215
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v1, v2

    .line 217
    .local v1, "m":I
    invoke-static {v1, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aget v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v0, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    .end local v1    # "m":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v2
.end method

.method public getPivot()[I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .prologue
    .line 257
    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;-><init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .prologue
    .line 192
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v4, :cond_1

    .line 193
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v3, v4

    .line 194
    .local v3, "m":I
    invoke-static {v3, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 196
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v2, v4, v0

    .line 197
    .local v2, "luI":[D
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 198
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v6, v2, v1

    invoke-interface {v4, v0, v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

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
    .end local v2    # "luI":[D
    .end local v3    # "m":I
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v4
.end method
