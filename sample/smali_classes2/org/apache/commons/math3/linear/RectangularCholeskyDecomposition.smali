.class public Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
.super Ljava/lang/Object;
.source "RectangularCholeskyDecomposition.java"


# instance fields
.field private rank:I

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 38
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "small"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v28

    .line 85
    .local v28, "order":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v13

    .line 86
    .local v13, "c":[[D
    move/from16 v0, v28

    move/from16 v1, v28

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 88
    .local v12, "b":[[D
    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 89
    .local v20, "index":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v28

    if-ge v9, v0, :cond_0

    .line 90
    aput v9, v20, v9

    .line 89
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const/16 v29, 0x0

    .line 94
    .local v29, "r":I
    const/16 v27, 0x1

    .local v27, "loop":Z
    :goto_1
    if-eqz v27, :cond_b

    .line 97
    move/from16 v32, v29

    .line 98
    .local v32, "swapR":I
    add-int/lit8 v9, v29, 0x1

    :goto_2
    move/from16 v0, v28

    if-ge v9, v0, :cond_2

    .line 99
    aget v18, v20, v9

    .line 100
    .local v18, "ii":I
    aget v21, v20, v32

    .line 101
    .local v21, "isr":I
    aget-object v2, v13, v18

    aget-wide v2, v2, v18

    aget-object v4, v13, v21

    aget-wide v6, v4, v21

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 102
    move/from16 v32, v9

    .line 98
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 108
    .end local v18    # "ii":I
    .end local v21    # "isr":I
    :cond_2
    move/from16 v0, v32

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 109
    aget v33, v20, v29

    .line 110
    .local v33, "tmpIndex":I
    aget v2, v20, v32

    aput v2, v20, v29

    .line 111
    aput v33, v20, v32

    .line 112
    aget-object v34, v12, v29

    .line 113
    .local v34, "tmpRow":[D
    aget-object v2, v12, v32

    aput-object v2, v12, v29

    .line 114
    aput-object v34, v12, v32

    .line 118
    .end local v33    # "tmpIndex":I
    .end local v34    # "tmpRow":[D
    :cond_3
    aget v5, v20, v29

    .line 119
    .local v5, "ir":I
    aget-object v2, v13, v5

    aget-wide v2, v2, v5

    cmpg-double v2, v2, p2

    if-gtz v2, :cond_7

    .line 121
    if-nez v29, :cond_4

    .line 122
    new-instance v2, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-object v3, v13, v5

    aget-wide v3, v3, v5

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v2

    .line 126
    :cond_4
    move/from16 v9, v29

    :goto_3
    move/from16 v0, v28

    if-ge v9, v0, :cond_6

    .line 127
    aget v2, v20, v9

    aget-object v2, v13, v2

    aget v3, v20, v9

    aget-wide v2, v2, v3

    move-wide/from16 v0, p2

    neg-double v6, v0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_5

    .line 130
    new-instance v6, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget v2, v20, v9

    aget-object v2, v13, v2

    aget v3, v20, v9

    aget-wide v7, v2, v3

    move-wide/from16 v10, p2

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v6

    .line 126
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 136
    :cond_6
    const/16 v27, 0x0

    goto :goto_1

    .line 141
    :cond_7
    aget-object v2, v13, v5

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    .line 142
    .local v30, "sqrt":D
    aget-object v2, v12, v29

    aput-wide v30, v2, v29

    .line 143
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v22, v2, v30

    .line 144
    .local v22, "inverse":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-object v4, v13, v5

    aget-wide v6, v4, v5

    div-double v24, v2, v6

    .line 145
    .local v24, "inverse2":D
    add-int/lit8 v9, v29, 0x1

    :goto_4
    move/from16 v0, v28

    if-ge v9, v0, :cond_9

    .line 146
    aget v18, v20, v9

    .line 147
    .restart local v18    # "ii":I
    aget-object v2, v13, v18

    aget-wide v2, v2, v5

    mul-double v14, v22, v2

    .line 148
    .local v14, "e":D
    aget-object v2, v12, v9

    aput-wide v14, v2, v29

    .line 149
    aget-object v2, v13, v18

    aget-wide v6, v2, v18

    aget-object v3, v13, v18

    aget-wide v10, v3, v5

    aget-object v3, v13, v18

    aget-wide v36, v3, v5

    mul-double v10, v10, v36

    mul-double v10, v10, v24

    sub-double/2addr v6, v10

    aput-wide v6, v2, v18

    .line 150
    add-int/lit8 v26, v29, 0x1

    .local v26, "j":I
    :goto_5
    move/from16 v0, v26

    if-ge v0, v9, :cond_8

    .line 151
    aget v19, v20, v26

    .line 152
    .local v19, "ij":I
    aget-object v2, v13, v18

    aget-wide v2, v2, v19

    aget-object v4, v12, v26

    aget-wide v6, v4, v29

    mul-double/2addr v6, v14

    sub-double v16, v2, v6

    .line 153
    .local v16, "f":D
    aget-object v2, v13, v18

    aput-wide v16, v2, v19

    .line 154
    aget-object v2, v13, v19

    aput-wide v16, v2, v18

    .line 150
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 145
    .end local v16    # "f":D
    .end local v19    # "ij":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 159
    .end local v14    # "e":D
    .end local v18    # "ii":I
    .end local v26    # "j":I
    :cond_9
    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    const/16 v27, 0x1

    :goto_6
    goto/16 :goto_1

    :cond_a
    const/16 v27, 0x0

    goto :goto_6

    .line 164
    .end local v5    # "ir":I
    .end local v22    # "inverse":D
    .end local v24    # "inverse2":D
    .end local v30    # "sqrt":D
    .end local v32    # "swapR":I
    :cond_b
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    .line 165
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 166
    const/4 v9, 0x0

    :goto_7
    move/from16 v0, v28

    if-ge v9, v0, :cond_d

    .line 167
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_8
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    aget v3, v20, v9

    aget-object v4, v12, v9

    aget-wide v6, v4, v26

    move/from16 v0, v26

    invoke-interface {v2, v3, v0, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 167
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 166
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 172
    .end local v26    # "j":I
    :cond_d
    return-void
.end method


# virtual methods
.method public getRank()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
