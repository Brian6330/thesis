.class public Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/CholeskyDecomposition$1;,
        Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;
    }
.end annotation


# static fields
.field public static final DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD:D = 1.0E-10

.field public static final DEFAULT_RELATIVE_SYMMETRY_THRESHOLD:D = 1.0E-15


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private lTData:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 84
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V
    .locals 26
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "relativeSymmetryThreshold"    # D
    .param p4, "absolutePositivityThreshold"    # D

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v2

    .line 111
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v19

    .line 112
    .local v19, "order":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 117
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v5, v0, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v11, v2, v5

    .line 121
    .local v11, "lI":[D
    add-int/lit8 v10, v5, 0x1

    .local v10, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v14, v2, v10

    .line 123
    .local v14, "lJ":[D
    aget-wide v12, v11, v10

    .line 124
    .local v12, "lIJ":D
    aget-wide v16, v14, v5

    .line 125
    .local v16, "lJI":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double v20, p2, v2

    .line 127
    .local v20, "maxDelta":D
    sub-double v2, v12, v16

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v20

    if-lez v2, :cond_1

    .line 128
    new-instance v2, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    move-wide/from16 v0, p2

    invoke-direct {v2, v5, v10, v0, v1}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw v2

    .line 130
    :cond_1
    const-wide/16 v2, 0x0

    aput-wide v2, v14, v5

    .line 121
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 117
    .end local v12    # "lIJ":D
    .end local v14    # "lJ":[D
    .end local v16    # "lJI":D
    .end local v20    # "maxDelta":D
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    .end local v10    # "j":I
    .end local v11    # "lI":[D
    :cond_3
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v15, v2, v5

    .line 140
    .local v15, "ltI":[D
    aget-wide v2, v15, v5

    cmpg-double v2, v2, p4

    if-gtz v2, :cond_4

    .line 141
    new-instance v2, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v3, v15, v5

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v2

    .line 144
    :cond_4
    aget-wide v2, v15, v5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v15, v5

    .line 145
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v6, v15, v5

    div-double v8, v2, v6

    .line 147
    .local v8, "inverse":D
    add-int/lit8 v23, v19, -0x1

    .local v23, "q":I
    :goto_3
    move/from16 v0, v23

    if-le v0, v5, :cond_6

    .line 148
    aget-wide v2, v15, v23

    mul-double/2addr v2, v8

    aput-wide v2, v15, v23

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v18, v2, v23

    .line 150
    .local v18, "ltQ":[D
    move/from16 v22, v23

    .local v22, "p":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 151
    aget-wide v2, v18, v22

    aget-wide v6, v15, v23

    aget-wide v24, v15, v22

    mul-double v6, v6, v24

    sub-double/2addr v2, v6

    aput-wide v2, v18, v22

    .line 150
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 147
    :cond_5
    add-int/lit8 v23, v23, -0x1

    goto :goto_3

    .line 135
    .end local v18    # "ltQ":[D
    .end local v22    # "p":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 155
    .end local v8    # "inverse":D
    .end local v15    # "ltI":[D
    .end local v23    # "q":I
    :cond_7
    return-void
.end method


# virtual methods
.method public getDeterminant()D
    .locals 8

    .prologue
    .line 189
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 190
    .local v0, "determinant":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 191
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    .line 192
    .local v4, "lTii":D
    mul-double v6, v4, v4

    mul-double/2addr v0, v6

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "lTii":D
    :cond_0
    return-wide v0
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getLT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getLT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;-><init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$1;)V

    return-object v0
.end method
