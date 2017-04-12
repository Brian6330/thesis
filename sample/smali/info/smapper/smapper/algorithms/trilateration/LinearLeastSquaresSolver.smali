.class public Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;
.super Ljava/lang/Object;
.source "LinearLeastSquaresSolver.java"


# instance fields
.field protected final function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;


# direct methods
.method public constructor <init>(Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;)V
    .locals 0
    .param p1, "function"    # Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    .line 20
    return-void
.end method


# virtual methods
.method public solve()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->solve(Z)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Z)Lorg/apache/commons/math3/linear/RealVector;
    .locals 30
    .param p1, "debugInfo"    # Z

    .prologue
    .line 23
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v25

    move-object/from16 v0, v25

    array-length v13, v0

    .line 24
    .local v13, "numberOfPositions":I
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v25

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    array-length v14, v0

    .line 26
    .local v14, "positionDimension":I
    add-int/lit8 v25, v13, -0x1

    move/from16 v0, v25

    filled-new-array {v0, v14}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 30
    .local v3, "Ad":[[D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_1

    .line 31
    new-array v4, v14, [D

    .line 32
    .local v4, "Adi":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v14, :cond_0

    .line 33
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v25

    aget-object v25, v25, v7

    aget-wide v26, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v25

    const/16 v28, 0x0

    aget-object v25, v25, v28

    aget-wide v28, v25, v12

    sub-double v26, v26, v28

    aput-wide v26, v4, v12

    .line 32
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v25, v7, -0x1

    aput-object v4, v3, v25

    .line 30
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 37
    .end local v4    # "Adi":[D
    .end local v12    # "j":I
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v26, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 42
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getDistances()[D

    move-result-object v25

    const/16 v26, 0x0

    aget-wide v18, v25, v26

    .line 43
    .local v18, "referenceDistance":D
    mul-double v16, v18, v18

    .line 44
    .local v16, "r0squared":D
    add-int/lit8 v25, v13, -0x1

    move/from16 v0, v25

    new-array v6, v0, [D

    .line 45
    .local v6, "bd":[D
    const/4 v7, 0x1

    :goto_2
    if-ge v7, v13, :cond_4

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getDistances()[D

    move-result-object v25

    aget-wide v20, v25, v7

    .line 47
    .local v20, "ri":D
    mul-double v22, v20, v20

    .line 50
    .local v22, "risquared":D
    const-wide/16 v8, 0x0

    .line 51
    .local v8, "di0squared":D
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    if-ge v12, v14, :cond_3

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v25

    aget-object v25, v25, v7

    aget-wide v26, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v25

    const/16 v28, 0x0

    aget-object v25, v25, v28

    aget-wide v28, v25, v12

    sub-double v10, v26, v28

    .line 53
    .local v10, "dij0j":D
    mul-double v26, v10, v10

    add-double v8, v8, v26

    .line 51
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 55
    .end local v10    # "dij0j":D
    :cond_3
    add-int/lit8 v25, v7, -0x1

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    sub-double v28, v16, v22

    add-double v28, v28, v8

    mul-double v26, v26, v28

    aput-wide v26, v6, v25

    .line 45
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 57
    .end local v8    # "di0squared":D
    .end local v12    # "j":I
    .end local v20    # "ri":D
    .end local v22    # "risquared":D
    :cond_4
    if-eqz p1, :cond_5

    .line 58
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v26, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 61
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 62
    .local v2, "A":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v5, v6, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 63
    .local v5, "b":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v25, Lorg/apache/commons/math3/linear/QRDecomposition;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v15

    .line 65
    .local v15, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v15}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v25

    if-nez v25, :cond_6

    .line 67
    new-instance v24, Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-array v0, v14, [D

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 72
    .local v24, "x":Lorg/apache/commons/math3/linear/RealVector;
    :goto_4
    new-instance v25, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/smapper/smapper/algorithms/trilateration/LinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-virtual/range {v24 .. v25}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v25

    return-object v25

    .line 69
    .end local v24    # "x":Lorg/apache/commons/math3/linear/RealVector;
    :cond_6
    invoke-interface {v15, v5}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v24

    .restart local v24    # "x":Lorg/apache/commons/math3/linear/RealVector;
    goto :goto_4
.end method
