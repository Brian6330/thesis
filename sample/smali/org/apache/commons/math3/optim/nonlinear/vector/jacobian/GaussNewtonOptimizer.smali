.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final useLU:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .param p1, "useLU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 78
    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->useLU:Z

    .line 79
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getUpperBound()[D

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 42

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->checkParameters()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v7

    .line 90
    .local v7, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    if-nez v7, :cond_0

    .line 91
    new-instance v33, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct/range {v33 .. v33}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v33

    .line 94
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getTarget()[D

    move-result-object v28

    .line 95
    .local v28, "targetValues":[D
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v22, v0

    .line 97
    .local v22, "nR":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    .line 99
    .local v29, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v26, v0

    .line 100
    .local v26, "residualsWeights":[D
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 101
    move-object/from16 v0, v29

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v38

    aput-wide v38, v26, v16

    .line 100
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getStartPoint()[D

    move-result-object v11

    .line 105
    .local v11, "currentPoint":[D
    array-length v0, v11

    move/from16 v21, v0

    .line 108
    .local v21, "nC":I
    const/4 v9, 0x0

    .line 109
    .local v9, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    const/4 v8, 0x0

    .local v8, "converged":Z
    :cond_2
    if-nez v8, :cond_9

    .line 110
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->incrementIterationCount()V

    .line 113
    move-object/from16 v23, v9

    .line 115
    .local v23, "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeObjectiveValue([D)[D

    move-result-object v10

    .line 116
    .local v10, "currentObjective":[D
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeResiduals([D)[D

    move-result-object v12

    .line 117
    .local v12, "currentResiduals":[D
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v32

    .line 118
    .local v32, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v9, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .end local v9    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    invoke-direct {v9, v11, v10}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 121
    .restart local v9    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move/from16 v0, v21

    new-array v6, v0, [D

    .line 122
    .local v6, "b":[D
    move/from16 v0, v21

    move/from16 v1, v21

    filled-new-array {v0, v1}, [I

    move-result-object v33

    sget-object v38, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 123
    .local v4, "a":[[D
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 125
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v15

    .line 126
    .local v15, "grad":[D
    aget-wide v30, v26, v16

    .line 127
    .local v30, "weight":D
    aget-wide v24, v12, v16

    .line 130
    .local v24, "residual":D
    mul-double v36, v30, v24

    .line 131
    .local v36, "wr":D
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 132
    aget-wide v38, v6, v17

    aget-wide v40, v15, v17

    mul-double v40, v40, v36

    add-double v38, v38, v40

    aput-wide v38, v6, v17

    .line 131
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 136
    :cond_3
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 137
    aget-object v5, v4, v18

    .line 138
    .local v5, "ak":[D
    aget-wide v38, v15, v18

    mul-double v34, v30, v38

    .line 139
    .local v34, "wgk":D
    const/16 v19, 0x0

    .local v19, "l":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 140
    aget-wide v38, v5, v19

    aget-wide v40, v15, v19

    mul-double v40, v40, v34

    add-double v38, v38, v40

    aput-wide v38, v5, v19

    .line 139
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 136
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 123
    .end local v5    # "ak":[D
    .end local v19    # "l":I
    .end local v34    # "wgk":D
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 146
    .end local v15    # "grad":[D
    .end local v17    # "j":I
    .end local v18    # "k":I
    .end local v24    # "residual":D
    .end local v30    # "weight":D
    .end local v36    # "wr":D
    :cond_6
    if-eqz v23, :cond_7

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getIterations()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v23

    invoke-interface {v7, v0, v1, v9}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 148
    if-eqz v8, :cond_7

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeCost([D)D

    move-result-wide v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->setCost(D)V

    .line 150
    return-object v9

    .line 156
    :cond_7
    :try_start_0
    new-instance v20, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    .line 157
    .local v20, "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->useLU:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    new-instance v33, Lorg/apache/commons/math3/linear/LUDecomposition;

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v27

    .line 160
    .local v27, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :goto_5
    new-instance v33, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v13

    .line 162
    .local v13, "dX":[D
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 163
    aget-wide v38, v11, v16

    aget-wide v40, v13, v16

    add-double v38, v38, v40

    aput-wide v38, v11, v16

    .line 162
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 157
    .end local v13    # "dX":[D
    .end local v27    # "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :cond_8
    new-instance v33, Lorg/apache/commons/math3/linear/QRDecomposition;

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    goto :goto_5

    .line 165
    .end local v20    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    :catch_0
    move-exception v14

    .line 166
    .local v14, "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    new-instance v33, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v38, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v33

    .line 170
    .end local v4    # "a":[[D
    .end local v6    # "b":[D
    .end local v10    # "currentObjective":[D
    .end local v12    # "currentResiduals":[D
    .end local v14    # "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    .end local v23    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v32    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_9
    new-instance v33, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct/range {v33 .. v33}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v33
.end method
