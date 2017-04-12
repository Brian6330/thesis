.class public Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final useLU:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useLU"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 88
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .param p1, "useLU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 99
    iput-boolean p1, p0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->useLU:Z

    .line 100
    return-void
.end method


# virtual methods
.method public doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 42

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 109
    .local v7, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    if-nez v7, :cond_0

    .line 110
    new-instance v38, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct/range {v38 .. v38}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v38

    .line 113
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getTarget()[D

    move-result-object v29

    .line 114
    .local v29, "targetValues":[D
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v23, v0

    .line 116
    .local v23, "nR":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v32

    .line 118
    .local v32, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v25, v0

    .line 119
    .local v25, "residualsWeights":[D
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 120
    move-object/from16 v0, v32

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v38

    aput-wide v38, v25, v16

    .line 119
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getStartPoint()[D

    move-result-object v11

    .line 124
    .local v11, "currentPoint":[D
    array-length v0, v11

    move/from16 v22, v0

    .line 127
    .local v22, "nC":I
    const/4 v9, 0x0

    .line 128
    .local v9, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    const/16 v17, 0x0

    .line 129
    .local v17, "iter":I
    const/4 v8, 0x0

    .local v8, "converged":Z
    :cond_2
    if-nez v8, :cond_9

    .line 130
    add-int/lit8 v17, v17, 0x1

    .line 133
    move-object/from16 v24, v9

    .line 135
    .local v24, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeObjectiveValue([D)[D

    move-result-object v10

    .line 136
    .local v10, "currentObjective":[D
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeResiduals([D)[D

    move-result-object v12

    .line 137
    .local v12, "currentResiduals":[D
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v33

    .line 138
    .local v33, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v9, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .end local v9    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    invoke-direct {v9, v11, v10}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 141
    .restart local v9    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move/from16 v0, v22

    new-array v6, v0, [D

    .line 142
    .local v6, "b":[D
    move/from16 v0, v22

    move/from16 v1, v22

    filled-new-array {v0, v1}, [I

    move-result-object v38

    sget-object v39, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 143
    .local v4, "a":[[D
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 145
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v15

    .line 146
    .local v15, "grad":[D
    aget-wide v30, v25, v16

    .line 147
    .local v30, "weight":D
    aget-wide v26, v12, v16

    .line 150
    .local v26, "residual":D
    mul-double v36, v30, v26

    .line 151
    .local v36, "wr":D
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 152
    aget-wide v38, v6, v18

    aget-wide v40, v15, v18

    mul-double v40, v40, v36

    add-double v38, v38, v40

    aput-wide v38, v6, v18

    .line 151
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 156
    :cond_3
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 157
    aget-object v5, v4, v19

    .line 158
    .local v5, "ak":[D
    aget-wide v38, v15, v19

    mul-double v34, v30, v38

    .line 159
    .local v34, "wgk":D
    const/16 v20, 0x0

    .local v20, "l":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 160
    aget-wide v38, v5, v20

    aget-wide v40, v15, v20

    mul-double v40, v40, v34

    add-double v38, v38, v40

    aput-wide v38, v5, v20

    .line 159
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 156
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 143
    .end local v5    # "ak":[D
    .end local v20    # "l":I
    .end local v34    # "wgk":D
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 167
    .end local v15    # "grad":[D
    .end local v18    # "j":I
    .end local v19    # "k":I
    .end local v26    # "residual":D
    .end local v30    # "weight":D
    .end local v36    # "wr":D
    :cond_6
    :try_start_0
    new-instance v21, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    .line 168
    .local v21, "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->useLU:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    new-instance v38, Lorg/apache/commons/math3/linear/LUDecomposition;

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual/range {v38 .. v38}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v28

    .line 171
    .local v28, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :goto_5
    new-instance v38, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v13

    .line 173
    .local v13, "dX":[D
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 174
    aget-wide v38, v11, v16

    aget-wide v40, v13, v16

    add-double v38, v38, v40

    aput-wide v38, v11, v16

    .line 173
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 168
    .end local v13    # "dX":[D
    .end local v28    # "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :cond_7
    new-instance v38, Lorg/apache/commons/math3/linear/QRDecomposition;

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual/range {v38 .. v38}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    goto :goto_5

    .line 176
    .end local v21    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    :catch_0
    move-exception v14

    .line 177
    .local v14, "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    new-instance v38, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v39, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-direct/range {v38 .. v40}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v38

    .line 181
    .end local v14    # "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    .restart local v13    # "dX":[D
    .restart local v21    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v28    # "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :cond_8
    if-eqz v24, :cond_2

    .line 182
    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1, v9}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 183
    if-eqz v8, :cond_2

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeCost([D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->cost:D

    .line 186
    invoke-virtual {v9}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->point:[D

    .line 187
    return-object v9

    .line 192
    .end local v4    # "a":[[D
    .end local v6    # "b":[D
    .end local v10    # "currentObjective":[D
    .end local v12    # "currentResiduals":[D
    .end local v13    # "dX":[D
    .end local v21    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v24    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .end local v28    # "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    .end local v33    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_9
    new-instance v38, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct/range {v38 .. v38}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v38
.end method
