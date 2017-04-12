.class public Lorg/apache/commons/math3/linear/RRQRDecomposition;
.super Lorg/apache/commons/math3/linear/QRDecomposition;
.source "RRQRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RRQRDecomposition$1;,
        Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private p:[I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RRQRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "threshold"    # D

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 80
    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 2
    .param p1, "qrt"    # [[D

    .prologue
    .line 87
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aput v0, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    .line 92
    return-void
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .prologue
    .line 137
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v1, v2

    .line 139
    .local v1, "n":I
    invoke-static {v1, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v2
.end method

.method public getRank(D)I
    .locals 13
    .param p1, "dropThreshold"    # D

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 168
    .local v1, "r":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v7

    .line 169
    .local v7, "rows":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 170
    .local v0, "columns":I
    const/4 v6, 0x1

    .line 171
    .local v6, "rank":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v2

    .line 172
    .local v2, "lastNorm":D
    move-wide v4, v2

    .line 173
    .local v4, "rNorm":D
    :goto_0
    invoke-static {v7, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 174
    add-int/lit8 v10, v7, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-interface {v1, v6, v10, v6, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v8

    .line 175
    .local v8, "thisNorm":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-eqz v10, :cond_0

    div-double v10, v8, v2

    mul-double/2addr v10, v4

    cmpg-double v10, v10, p1

    if-gez v10, :cond_1

    .line 181
    .end local v8    # "thisNorm":D
    :cond_0
    return v6

    .line 178
    .restart local v8    # "thisNorm":D
    :cond_1
    move-wide v2, v8

    .line 179
    add-int/lit8 v6, v6, 0x1

    .line 180
    goto :goto_0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;

    invoke-super {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$1;)V

    return-object v0
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 16
    .param p1, "minor"    # I
    .param p2, "qrt"    # [[D

    .prologue
    .line 101
    const-wide/16 v6, 0x0

    .line 103
    .local v6, "l2NormSquaredMax":D
    move/from16 v8, p1

    .line 104
    .local v8, "l2NormSquaredMaxIndex":I
    move/from16 v2, p1

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v11, v0

    if-ge v2, v11, :cond_2

    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .local v4, "l2NormSquared":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v11, p2, v2

    array-length v11, v11

    if-ge v3, v11, :cond_0

    .line 107
    aget-object v11, p2, v2

    aget-wide v12, v11, v3

    aget-object v11, p2, v2

    aget-wide v14, v11, v3

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    :cond_0
    cmpl-double v11, v4, v6

    if-lez v11, :cond_1

    .line 110
    move-wide v6, v4

    .line 111
    move v8, v2

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "j":I
    .end local v4    # "l2NormSquared":D
    :cond_2
    move/from16 v0, p1

    if-eq v8, v0, :cond_3

    .line 116
    aget-object v9, p2, p1

    .line 117
    .local v9, "tmp1":[D
    aget-object v11, p2, v8

    aput-object v11, p2, p1

    .line 118
    aput-object v9, p2, v8

    .line 119
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v10, v11, p1

    .line 120
    .local v10, "tmp2":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v12, v12, v8

    aput v12, v11, p1

    .line 121
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aput v10, v11, v8

    .line 124
    .end local v9    # "tmp1":[D
    .end local v10    # "tmp2":I
    :cond_3
    invoke-super/range {p0 .. p2}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    .line 126
    return-void
.end method
