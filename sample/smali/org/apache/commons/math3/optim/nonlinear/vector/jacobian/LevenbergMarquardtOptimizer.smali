.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private beta:[D

.field private final costRelativeTolerance:D

.field private diagR:[D

.field private final initialStepBoundFactor:D

.field private jacNorm:[D

.field private lmDir:[D

.field private lmPar:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private permutation:[I

.field private final qrRankingThreshold:D

.field private rank:I

.field private solvedCols:I

.field private weightedJacobian:[[D

.field private weightedResidual:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 120
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 168
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 169
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 13
    .param p1, "costRelativeTolerance"    # D
    .param p3, "parRelativeTolerance"    # D
    .param p5, "orthoTolerance"    # D

    .prologue
    .line 247
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 250
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1
    .param p1, "initialStepBoundFactor"    # D
    .param p3, "costRelativeTolerance"    # D
    .param p5, "parRelativeTolerance"    # D
    .param p7, "orthoTolerance"    # D
    .param p9, "threshold"    # D

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 281
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 282
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 283
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 284
    iput-wide p7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 285
    iput-wide p9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 286
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V
    .locals 0
    .param p1, "initialStepBoundFactor"    # D
    .param p4, "costRelativeTolerance"    # D
    .param p6, "parRelativeTolerance"    # D
    .param p8, "orthoTolerance"    # D
    .param p10, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p3, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 219
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 220
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 221
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 222
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 223
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 224
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 12
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
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 187
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-object v3, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V

    .line 188
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .prologue
    .line 956
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getUpperBound()[D

    move-result-object v0

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 960
    :cond_1
    return-void
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 40
    .param p1, "qy"    # [D
    .param p2, "diag"    # [D
    .param p3, "lmDiag"    # [D
    .param p4, "work"    # [D

    .prologue
    .line 736
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v16, v34, v13

    .line 738
    .local v16, "pj":I
    add-int/lit8 v12, v13, 0x1

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_0

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v35, v0

    aget-object v35, v35, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v36, v0

    aget v36, v36, v12

    aget-wide v36, v35, v36

    aput-wide v36, v34, v16

    .line 738
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 741
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v35, v0

    aget-wide v36, v35, v16

    aput-wide v36, v34, v13

    .line 742
    aget-wide v34, p1, v13

    aput-wide v34, p4, v13

    .line 736
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 746
    .end local v12    # "i":I
    .end local v16    # "pj":I
    :cond_1
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_6

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v16, v34, v13

    .line 751
    .restart local v16    # "pj":I
    aget-wide v10, p2, v16

    .line 752
    .local v10, "dpj":D
    const-wide/16 v34, 0x0

    cmpl-double v34, v10, v34

    if-eqz v34, :cond_2

    .line 753
    add-int/lit8 v34, v13, 0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v35, v0

    const-wide/16 v36, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    move/from16 v2, v35

    move-wide/from16 v3, v36

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    .line 755
    :cond_2
    aput-wide v10, p3, v13

    .line 760
    const-wide/16 v18, 0x0

    .line 761
    .local v18, "qtbpj":D
    move v14, v13

    .local v14, "k":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v14, v0, :cond_5

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v17, v34, v14

    .line 766
    .local v17, "pk":I
    aget-wide v34, p3, v14

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_4

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    aget-wide v22, v34, v17

    .line 771
    .local v22, "rkk":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    aget-wide v36, p3, v14

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpg-double v34, v34, v36

    if-gez v34, :cond_3

    .line 772
    aget-wide v34, p3, v14

    div-double v8, v22, v34

    .line 773
    .local v8, "cotan":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v8, v8

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    div-double v24, v34, v36

    .line 774
    .local v24, "sin":D
    mul-double v6, v24, v8

    .line 783
    .end local v8    # "cotan":D
    .local v6, "cos":D
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    mul-double v36, v6, v22

    aget-wide v38, p3, v14

    mul-double v38, v38, v24

    add-double v36, v36, v38

    aput-wide v36, v34, v17

    .line 784
    aget-wide v34, p4, v14

    mul-double v34, v34, v6

    mul-double v36, v24, v18

    add-double v30, v34, v36

    .line 785
    .local v30, "temp":D
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v34, v0

    aget-wide v36, p4, v14

    mul-double v34, v34, v36

    mul-double v36, v6, v18

    add-double v18, v34, v36

    .line 786
    aput-wide v30, p4, v14

    .line 789
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_4

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    aget-wide v20, v34, v17

    .line 791
    .local v20, "rik":D
    mul-double v34, v6, v20

    aget-wide v36, p3, v12

    mul-double v36, v36, v24

    add-double v32, v34, v36

    .line 792
    .local v32, "temp2":D
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v20

    aget-wide v36, p3, v12

    mul-double v36, v36, v6

    add-double v34, v34, v36

    aput-wide v34, p3, v12

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    aput-wide v32, v34, v17

    .line 789
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 776
    .end local v6    # "cos":D
    .end local v12    # "i":I
    .end local v20    # "rik":D
    .end local v24    # "sin":D
    .end local v30    # "temp":D
    .end local v32    # "temp2":D
    :cond_3
    aget-wide v34, p3, v14

    div-double v28, v34, v22

    .line 777
    .local v28, "tan":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v28, v28

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    div-double v6, v34, v36

    .line 778
    .restart local v6    # "cos":D
    mul-double v24, v6, v28

    .restart local v24    # "sin":D
    goto :goto_4

    .line 761
    .end local v6    # "cos":D
    .end local v22    # "rkk":D
    .end local v24    # "sin":D
    .end local v28    # "tan":D
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 800
    .end local v17    # "pk":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    aget-wide v34, v34, v35

    aput-wide v34, p3, v13

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v36, v0

    aget-wide v36, v36, v13

    aput-wide v36, v34, v35

    .line 746
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 806
    .end local v10    # "dpj":D
    .end local v14    # "k":I
    .end local v16    # "pj":I
    .end local v18    # "qtbpj":D
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 807
    .local v15, "nSing":I
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_9

    .line 808
    aget-wide v34, p3, v13

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ne v15, v0, :cond_7

    .line 809
    move v15, v13

    .line 811
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_8

    .line 812
    const-wide/16 v34, 0x0

    aput-wide v34, p4, v13

    .line 807
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 815
    :cond_9
    if-lez v15, :cond_b

    .line 816
    add-int/lit8 v13, v15, -0x1

    :goto_7
    if-ltz v13, :cond_b

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v16, v34, v13

    .line 818
    .restart local v16    # "pj":I
    const-wide/16 v26, 0x0

    .line 819
    .local v26, "sum":D
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "i":I
    :goto_8
    if-ge v12, v15, :cond_a

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    aget-wide v34, v34, v16

    aget-wide v36, p4, v12

    mul-double v34, v34, v36

    add-double v26, v26, v34

    .line 819
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 822
    :cond_a
    aget-wide v34, p4, v13

    sub-double v34, v34, v26

    aget-wide v36, p3, v13

    div-double v34, v34, v36

    aput-wide v34, p4, v13

    .line 816
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 827
    .end local v12    # "i":I
    .end local v16    # "pj":I
    .end local v26    # "sum":D
    :cond_b
    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_c

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    aget-wide v36, p4, v13

    aput-wide v36, v34, v35

    .line 827
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 830
    :cond_c
    return-void
.end method

.method private determineLMParameter([DD[D[D[D[D)V
    .locals 46
    .param p1, "qy"    # [D
    .param p2, "delta"    # D
    .param p4, "diag"    # [D
    .param p5, "work1"    # [D
    .param p6, "work2"    # [D
    .param p7, "work3"    # [D

    .prologue
    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v25, v0

    const/16 v40, 0x0

    aget-object v25, v25, v40

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v18, v0

    .line 568
    .local v18, "nC":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v40, v0

    aget v40, v40, v16

    aget-wide v42, p1, v16

    aput-wide v42, v25, v40

    .line 568
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 571
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v40, v0

    aget v40, v40, v16

    const-wide/16 v42, 0x0

    aput-wide v42, v25, v40

    .line 571
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 574
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v25, v0

    add-int/lit8 v17, v25, -0x1

    .local v17, "k":I
    :goto_2
    if-ltz v17, :cond_3

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 576
    .local v24, "pk":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aget-wide v40, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v24

    div-double v38, v40, v42

    .line 577
    .local v38, "ypk":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v40, v0

    aget v40, v40, v9

    aget-wide v42, v25, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v41, v0

    aget-object v41, v41, v9

    aget-wide v44, v41, v24

    mul-double v44, v44, v38

    sub-double v42, v42, v44

    aput-wide v42, v25, v40

    .line 577
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 580
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aput-wide v38, v25, v24

    .line 574
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 585
    .end local v9    # "i":I
    .end local v24    # "pk":I
    .end local v38    # "ypk":D
    :cond_3
    const-wide/16 v10, 0x0

    .line 586
    .local v10, "dxNorm":D
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 588
    .local v19, "pj":I
    aget-wide v40, p4, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v19

    mul-double v28, v40, v42

    .line 589
    .local v28, "s":D
    aput-wide v28, p5, v19

    .line 590
    mul-double v40, v28, v28

    add-double v10, v10, v40

    .line 586
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 592
    .end local v19    # "pj":I
    .end local v28    # "s":D
    :cond_4
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 593
    sub-double v12, v10, p2

    .line 594
    .local v12, "fp":D
    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v40, v40, p2

    cmpg-double v25, v12, v40

    if-gtz v25, :cond_6

    .line 595
    const-wide/16 v40, 0x0

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 709
    :cond_5
    return-void

    .line 603
    :cond_6
    const-wide/16 v20, 0x0

    .line 604
    .local v20, "parl":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v40, v0

    move/from16 v0, v25

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    .line 605
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 607
    .restart local v19    # "pj":I
    aget-wide v40, p5, v19

    aget-wide v42, p4, v19

    div-double v42, v42, v10

    mul-double v40, v40, v42

    aput-wide v40, p5, v19

    .line 605
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 609
    .end local v19    # "pj":I
    :cond_7
    const-wide/16 v34, 0x0

    .line 610
    .local v34, "sum2":D
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 612
    .restart local v19    # "pj":I
    const-wide/16 v32, 0x0

    .line 613
    .local v32, "sum":D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    move/from16 v0, v16

    if-ge v9, v0, :cond_8

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    aget-wide v40, v25, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v25, v25, v9

    aget-wide v42, p5, v25

    mul-double v40, v40, v42

    add-double v32, v32, v40

    .line 613
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 616
    :cond_8
    aget-wide v40, p5, v19

    sub-double v40, v40, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v19

    div-double v28, v40, v42

    .line 617
    .restart local v28    # "s":D
    aput-wide v28, p5, v19

    .line 618
    mul-double v40, v28, v28

    add-double v34, v34, v40

    .line 610
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 620
    .end local v9    # "i":I
    .end local v19    # "pj":I
    .end local v28    # "s":D
    .end local v32    # "sum":D
    :cond_9
    mul-double v40, p2, v34

    div-double v20, v12, v40

    .line 624
    .end local v34    # "sum2":D
    :cond_a
    const-wide/16 v34, 0x0

    .line 625
    .restart local v34    # "sum2":D
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 627
    .restart local v19    # "pj":I
    const-wide/16 v32, 0x0

    .line 628
    .restart local v32    # "sum":D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    move/from16 v0, v16

    if-gt v9, v0, :cond_b

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    aget-wide v40, v25, v19

    aget-wide v42, p1, v9

    mul-double v40, v40, v42

    add-double v32, v32, v40

    .line 628
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 631
    :cond_b
    aget-wide v40, p4, v19

    div-double v32, v32, v40

    .line 632
    mul-double v40, v32, v32

    add-double v34, v34, v40

    .line 625
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 634
    .end local v9    # "i":I
    .end local v19    # "pj":I
    .end local v32    # "sum":D
    :cond_c
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 635
    .local v14, "gNorm":D
    div-double v22, v14, p2

    .line 636
    .local v22, "paru":D
    const-wide/16 v40, 0x0

    cmpl-double v25, v22, v40

    if-nez v25, :cond_d

    .line 637
    sget-wide v40, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v42, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v0, p2

    move-wide/from16 v2, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v42

    div-double v22, v40, v42

    .line 642
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v22

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 643
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v25, v40, v42

    if-nez v25, :cond_e

    .line 644
    div-double v40, v14, v10

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 647
    :cond_e
    const/16 v8, 0xa

    .local v8, "countdown":I
    :goto_a
    if-ltz v8, :cond_5

    .line 650
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v25, v40, v42

    if-nez v25, :cond_f

    .line 651
    sget-wide v40, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v22

    invoke-static/range {v40 .. v43}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 653
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    .line 654
    .local v30, "sPar":D
    const/16 v16, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 656
    .restart local v19    # "pj":I
    aget-wide v40, p4, v19

    mul-double v40, v40, v30

    aput-wide v40, p5, v19

    .line 654
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 658
    .end local v19    # "pj":I
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    .line 660
    const-wide/16 v10, 0x0

    .line 661
    const/16 v16, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 663
    .restart local v19    # "pj":I
    aget-wide v40, p4, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v19

    mul-double v28, v40, v42

    .line 664
    .restart local v28    # "s":D
    aput-wide v28, p7, v19

    .line 665
    mul-double v40, v28, v28

    add-double v10, v10, v40

    .line 661
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 667
    .end local v19    # "pj":I
    .end local v28    # "s":D
    :cond_11
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 668
    move-wide/from16 v26, v12

    .line 669
    .local v26, "previousFP":D
    sub-double v12, v10, p2

    .line 673
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    const-wide v42, 0x3fb999999999999aL    # 0.1

    mul-double v42, v42, p2

    cmpg-double v25, v40, v42

    if-lez v25, :cond_5

    const-wide/16 v40, 0x0

    cmpl-double v25, v20, v40

    if-nez v25, :cond_12

    cmpg-double v25, v12, v26

    if-gtz v25, :cond_12

    const-wide/16 v40, 0x0

    cmpg-double v25, v26, v40

    if-ltz v25, :cond_5

    .line 679
    :cond_12
    const/16 v16, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 681
    .restart local v19    # "pj":I
    aget-wide v40, p7, v19

    aget-wide v42, p4, v19

    mul-double v40, v40, v42

    div-double v40, v40, v10

    aput-wide v40, p5, v19

    .line 679
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 683
    .end local v19    # "pj":I
    :cond_13
    const/16 v16, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_15

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 685
    .restart local v19    # "pj":I
    aget-wide v40, p5, v19

    aget-wide v42, p6, v16

    div-double v40, v40, v42

    aput-wide v40, p5, v19

    .line 686
    aget-wide v36, p5, v19

    .line 687
    .local v36, "tmp":D
    add-int/lit8 v9, v16, 0x1

    .restart local v9    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_14

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v25, v25, v9

    aget-wide v40, p5, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v42, v0

    aget-object v42, v42, v9

    aget-wide v42, v42, v19

    mul-double v42, v42, v36

    sub-double v40, v40, v42

    aput-wide v40, p5, v25

    .line 687
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 683
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 691
    .end local v9    # "i":I
    .end local v19    # "pj":I
    .end local v36    # "tmp":D
    :cond_15
    const-wide/16 v34, 0x0

    .line 692
    const/16 v16, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v25, v25, v16

    aget-wide v28, p5, v25

    .line 694
    .restart local v28    # "s":D
    mul-double v40, v28, v28

    add-double v34, v34, v40

    .line 692
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 696
    .end local v28    # "s":D
    :cond_16
    mul-double v40, p2, v34

    div-double v6, v12, v40

    .line 699
    .local v6, "correction":D
    const-wide/16 v40, 0x0

    cmpl-double v25, v12, v40

    if-lez v25, :cond_18

    .line 700
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 706
    :cond_17
    :goto_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    add-double v40, v40, v6

    move-wide/from16 v0, v20

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 647
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_a

    .line 701
    :cond_18
    const-wide/16 v40, 0x0

    cmpg-double v25, v12, v40

    if-gez v25, :cond_17

    .line 702
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v22

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v22

    goto :goto_11
.end method

.method private qTy([D)V
    .locals 12
    .param p1, "y"    # [D

    .prologue
    .line 935
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v5, v7

    .line 936
    .local v5, "nR":I
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v4, v7

    .line 938
    .local v4, "nC":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 939
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v7, v3

    .line 940
    .local v6, "pk":I
    const-wide/16 v0, 0x0

    .line 941
    .local v0, "gamma":D
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 942
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v6

    aget-wide v10, p1, v2

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 944
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v8, v7, v6

    mul-double/2addr v0, v8

    .line 945
    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_1

    .line 946
    aget-wide v8, p1, v2

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v2

    aget-wide v10, v7, v6

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 938
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 949
    .end local v0    # "gamma":D
    .end local v2    # "i":I
    .end local v6    # "pk":I
    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 32
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 859
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v21, v0

    .line 862
    .local v21, "nR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v20, v0

    .line 865
    .local v20, "nC":I
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    aput v19, v26, v19

    .line 867
    const-wide/16 v24, 0x0

    .line 868
    .local v24, "norm2":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v15

    aget-wide v8, v26, v19

    .line 870
    .local v8, "akk":D
    mul-double v26, v8, v8

    add-double v24, v24, v26

    .line 868
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 872
    .end local v8    # "akk":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    aput-wide v28, v26, v19

    .line 865
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 876
    .end local v15    # "i":I
    .end local v24    # "norm2":D
    :cond_1
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 879
    const/16 v22, -0x1

    .line 880
    .local v22, "nextColumn":I
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 881
    .local v4, "ak2":D
    move/from16 v15, v19

    .restart local v15    # "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_6

    .line 882
    const-wide/16 v24, 0x0

    .line 883
    .restart local v24    # "norm2":D
    move/from16 v18, v19

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    aget-wide v6, v26, v27

    .line 885
    .local v6, "aki":D
    mul-double v26, v6, v6

    add-double v24, v24, v26

    .line 883
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 887
    .end local v6    # "aki":D
    :cond_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v26

    if-nez v26, :cond_3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 888
    :cond_3
    new-instance v26, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v27, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-direct/range {v26 .. v28}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v26

    .line 891
    :cond_4
    cmpl-double v26, v24, v4

    if-lez v26, :cond_5

    .line 892
    move/from16 v22, v15

    .line 893
    move-wide/from16 v4, v24

    .line 881
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 896
    .end local v18    # "j":I
    .end local v24    # "norm2":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide/from16 v26, v0

    cmpg-double v26, v4, v26

    if-gtz v26, :cond_7

    .line 897
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    .line 927
    .end local v4    # "ak2":D
    .end local v15    # "i":I
    .end local v22    # "nextColumn":I
    :goto_5
    return-void

    .line 900
    .restart local v4    # "ak2":D
    .restart local v15    # "i":I
    .restart local v22    # "nextColumn":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    aget v23, v26, v22

    .line 901
    .local v23, "pk":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v27, v0

    aget v27, v27, v19

    aput v27, v26, v22

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    aput v23, v26, v19

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v19

    aget-wide v8, v26, v23

    .line 906
    .restart local v8    # "akk":D
    const-wide/16 v26, 0x0

    cmpl-double v26, v8, v26

    if-lez v26, :cond_8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v10, v0

    .line 907
    .local v10, "alpha":D
    :goto_6
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v28, v8, v10

    sub-double v28, v4, v28

    div-double v12, v26, v28

    .line 908
    .local v12, "betak":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    move-object/from16 v26, v0

    aput-wide v12, v26, v23

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v26, v0

    aput-wide v10, v26, v23

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v19

    aget-wide v28, v26, v23

    sub-double v28, v28, v10

    aput-wide v28, v26, v23

    .line 915
    add-int/lit8 v26, v20, -0x1

    sub-int v14, v26, v19

    .local v14, "dk":I
    :goto_7
    if-lez v14, :cond_b

    .line 916
    const-wide/16 v16, 0x0

    .line 917
    .local v16, "gamma":D
    move/from16 v18, v19

    .restart local v18    # "j":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    aget-wide v26, v26, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v28, v0

    aget-object v28, v28, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v29, v0

    add-int v30, v19, v14

    aget v29, v29, v30

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    add-double v16, v16, v26

    .line 917
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 906
    .end local v10    # "alpha":D
    .end local v12    # "betak":D
    .end local v14    # "dk":I
    .end local v16    # "gamma":D
    .end local v18    # "j":I
    :cond_8
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    goto :goto_6

    .line 920
    .restart local v10    # "alpha":D
    .restart local v12    # "betak":D
    .restart local v14    # "dk":I
    .restart local v16    # "gamma":D
    .restart local v18    # "j":I
    :cond_9
    mul-double v16, v16, v12

    .line 921
    move/from16 v18, v19

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v27, v0

    add-int v28, v19, v14

    aget v27, v27, v28

    aget-wide v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v30, v0

    aget-object v30, v30, v18

    aget-wide v30, v30, v23

    mul-double v30, v30, v16

    sub-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 921
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 915
    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 876
    .end local v16    # "gamma":D
    .end local v18    # "j":I
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 926
    .end local v4    # "ak2":D
    .end local v8    # "akk":D
    .end local v10    # "alpha":D
    .end local v12    # "betak":D
    .end local v14    # "dk":I
    .end local v15    # "i":I
    .end local v22    # "nextColumn":I
    .end local v23    # "pk":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    goto/16 :goto_5
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 78

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->checkParameters()V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v4

    array-length v0, v4

    move/from16 v41, v0

    .line 294
    .local v41, "nR":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v24

    .line 295
    .local v24, "currentPoint":[D
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v40, v0

    .line 298
    .local v40, "nC":I
    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 299
    move/from16 v0, v40

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    .line 300
    move/from16 v0, v40

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 301
    move/from16 v0, v40

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    .line 302
    move/from16 v0, v40

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    .line 303
    move/from16 v0, v40

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 306
    const-wide/16 v6, 0x0

    .line 307
    .local v6, "delta":D
    const-wide/16 v68, 0x0

    .line 308
    .local v68, "xNorm":D
    move/from16 v0, v40

    new-array v8, v0, [D

    .line 309
    .local v8, "diag":[D
    move/from16 v0, v40

    new-array v0, v0, [D

    move-object/from16 v44, v0

    .line 310
    .local v44, "oldX":[D
    move/from16 v0, v41

    new-array v0, v0, [D

    move-object/from16 v43, v0

    .line 311
    .local v43, "oldRes":[D
    move/from16 v0, v41

    new-array v0, v0, [D

    move-object/from16 v42, v0

    .line 312
    .local v42, "oldObj":[D
    move/from16 v0, v41

    new-array v5, v0, [D

    .line 313
    .local v5, "qtf":[D
    move/from16 v0, v40

    new-array v9, v0, [D

    .line 314
    .local v9, "work1":[D
    move/from16 v0, v40

    new-array v10, v0, [D

    .line 315
    .local v10, "work2":[D
    move/from16 v0, v40

    new-array v11, v0, [D

    .line 317
    .local v11, "work3":[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v65

    .line 320
    .local v65, "weightMatrixSqrt":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v21

    .line 321
    .local v21, "currentObjective":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v25

    .line 322
    .local v25, "currentResiduals":[D
    new-instance v15, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 323
    .local v15, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v22

    .line 326
    .local v22, "currentCost":D
    const-wide/16 v72, 0x0

    move-wide/from16 v0, v72

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 327
    const/16 v32, 0x1

    .line 328
    .local v32, "firstIteration":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v14

    .line 330
    .local v14, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->incrementIterationCount()V

    .line 332
    move-object/from16 v49, v15

    .line 335
    .local v49, "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 337
    move-object/from16 v0, v65

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 338
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v41

    if-ge v0, v1, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v72, v4, v33

    aput-wide v72, v5, v33

    .line 338
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 343
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qTy([D)V

    .line 347
    const/16 v35, 0x0

    .local v35, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v48, v4, v35

    .line 349
    .local v48, "pk":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v72, v0

    aget-wide v72, v72, v48

    aput-wide v72, v4, v48

    .line 347
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 352
    .end local v48    # "pk":I
    :cond_2
    if-eqz v32, :cond_5

    .line 355
    const-wide/16 v68, 0x0

    .line 356
    const/16 v35, 0x0

    :goto_2
    move/from16 v0, v35

    move/from16 v1, v40

    if-ge v0, v1, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v30, v4, v35

    .line 358
    .local v30, "dk":D
    const-wide/16 v72, 0x0

    cmpl-double v4, v30, v72

    if-nez v4, :cond_3

    .line 359
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 361
    :cond_3
    aget-wide v72, v24, v35

    mul-double v70, v30, v72

    .line 362
    .local v70, "xk":D
    mul-double v72, v70, v70

    add-double v68, v68, v72

    .line 363
    aput-wide v30, v8, v35

    .line 356
    add-int/lit8 v35, v35, 0x1

    goto :goto_2

    .line 365
    .end local v30    # "dk":D
    .end local v70    # "xk":D
    :cond_4
    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v68

    .line 368
    const-wide/16 v72, 0x0

    cmpl-double v4, v68, v72

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 372
    :cond_5
    :goto_3
    const-wide/16 v38, 0x0

    .line 373
    .local v38, "maxCosine":D
    const-wide/16 v72, 0x0

    cmpl-double v4, v22, v72

    if-eqz v4, :cond_9

    .line 374
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_9

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v45, v4, v34

    .line 376
    .local v45, "pj":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v58, v4, v45

    .line 377
    .local v58, "s":D
    const-wide/16 v72, 0x0

    cmpl-double v4, v58, v72

    if-eqz v4, :cond_8

    .line 378
    const-wide/16 v60, 0x0

    .line 379
    .local v60, "sum":D
    const/16 v33, 0x0

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v33

    aget-wide v72, v4, v45

    aget-wide v74, v5, v33

    mul-double v72, v72, v74

    add-double v60, v60, v72

    .line 379
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 368
    .end local v34    # "j":I
    .end local v38    # "maxCosine":D
    .end local v45    # "pj":I
    .end local v58    # "s":D
    .end local v60    # "sum":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    move-wide/from16 v72, v0

    mul-double v6, v72, v68

    goto :goto_3

    .line 382
    .restart local v34    # "j":I
    .restart local v38    # "maxCosine":D
    .restart local v45    # "pj":I
    .restart local v58    # "s":D
    .restart local v60    # "sum":D
    :cond_7
    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v72

    mul-double v74, v58, v22

    div-double v72, v72, v74

    move-wide/from16 v0, v38

    move-wide/from16 v2, v72

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 374
    .end local v60    # "sum":D
    :cond_8
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 386
    .end local v34    # "j":I
    .end local v45    # "pj":I
    .end local v58    # "s":D
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide/from16 v72, v0

    cmpg-double v4, v38, v72

    if-gtz v4, :cond_a

    .line 388
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    move-object/from16 v20, v15

    .line 520
    .end local v15    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .local v20, "current":Ljava/lang/Object;
    :goto_6
    return-object v20

    .line 393
    .end local v20    # "current":Ljava/lang/Object;
    .restart local v15    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :cond_a
    const/16 v34, 0x0

    .restart local v34    # "j":I
    :goto_7
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_b

    .line 394
    aget-wide v72, v8, v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v74, v4, v34

    invoke-static/range {v72 .. v75}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v72

    aput-wide v72, v8, v34

    .line 393
    add-int/lit8 v34, v34, 0x1

    goto :goto_7

    .line 398
    :cond_b
    const-wide/16 v56, 0x0

    .local v56, "ratio":D
    :cond_c
    const-wide v72, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v56, v72

    if-gez v4, :cond_0

    .line 401
    const/16 v34, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_d

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v45, v4, v34

    .line 403
    .restart local v45    # "pj":I
    aget-wide v72, v24, v45

    aput-wide v72, v44, v45

    .line 401
    add-int/lit8 v34, v34, 0x1

    goto :goto_8

    .line 405
    .end local v45    # "pj":I
    :cond_d
    move-wide/from16 v52, v22

    .line 406
    .local v52, "previousCost":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v64, v0

    .line 407
    .local v64, "tmpVec":[D
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 408
    move-object/from16 v43, v64

    .line 409
    move-object/from16 v64, v21

    .line 410
    move-object/from16 v21, v42

    .line 411
    move-object/from16 v42, v64

    move-object/from16 v4, p0

    .line 414
    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    .line 417
    const-wide/16 v36, 0x0

    .line 418
    .local v36, "lmNorm":D
    const/16 v34, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_e

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v45, v4, v34

    .line 420
    .restart local v45    # "pj":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v72, v0

    aget-wide v72, v72, v45

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    aput-wide v72, v4, v45

    .line 421
    aget-wide v72, v44, v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v74, v4, v45

    add-double v72, v72, v74

    aput-wide v72, v24, v45

    .line 422
    aget-wide v72, v8, v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v74, v4, v45

    mul-double v58, v72, v74

    .line 423
    .restart local v58    # "s":D
    mul-double v72, v58, v58

    add-double v36, v36, v72

    .line 418
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 425
    .end local v45    # "pj":I
    .end local v58    # "s":D
    :cond_e
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    .line 427
    if-eqz v32, :cond_f

    .line 428
    move-wide/from16 v0, v36

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 432
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v21

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v25

    .line 434
    new-instance v15, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .end local v15    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 435
    .restart local v15    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v22

    .line 438
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 439
    .local v12, "actRed":D
    const-wide v72, 0x3fb999999999999aL    # 0.1

    mul-double v72, v72, v22

    cmpg-double v4, v72, v52

    if-gez v4, :cond_10

    .line 440
    div-double v54, v22, v52

    .line 441
    .local v54, "r":D
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    mul-double v74, v54, v54

    sub-double v12, v72, v74

    .line 446
    .end local v54    # "r":D
    :cond_10
    const/16 v34, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_12

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v45, v4, v34

    .line 448
    .restart local v45    # "pj":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v28, v4, v45

    .line 449
    .local v28, "dirJ":D
    const-wide/16 v72, 0x0

    aput-wide v72, v9, v34

    .line 450
    const/16 v33, 0x0

    :goto_b
    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_11

    .line 451
    aget-wide v72, v9, v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v33

    aget-wide v74, v4, v45

    mul-double v74, v74, v28

    add-double v72, v72, v74

    aput-wide v72, v9, v33

    .line 450
    add-int/lit8 v33, v33, 0x1

    goto :goto_b

    .line 446
    :cond_11
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 454
    .end local v28    # "dirJ":D
    .end local v45    # "pj":I
    :cond_12
    const-wide/16 v16, 0x0

    .line 455
    .local v16, "coeff1":D
    const/16 v34, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_13

    .line 456
    aget-wide v72, v9, v34

    aget-wide v74, v9, v34

    mul-double v72, v72, v74

    add-double v16, v16, v72

    .line 455
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    .line 458
    :cond_13
    mul-double v46, v52, v52

    .line 459
    .local v46, "pc2":D
    div-double v16, v16, v46

    .line 460
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v72, v0

    mul-double v72, v72, v36

    mul-double v72, v72, v36

    div-double v18, v72, v46

    .line 461
    .local v18, "coeff2":D
    const-wide/high16 v72, 0x4000000000000000L    # 2.0

    mul-double v72, v72, v18

    add-double v50, v16, v72

    .line 462
    .local v50, "preRed":D
    add-double v72, v16, v18

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v26, v0

    .line 465
    .local v26, "dirDer":D
    const-wide/16 v72, 0x0

    cmpl-double v4, v50, v72

    if-nez v4, :cond_17

    const-wide/16 v56, 0x0

    .line 468
    :goto_d
    const-wide/high16 v72, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v56, v72

    if-gtz v4, :cond_19

    .line 469
    const-wide/16 v72, 0x0

    cmpg-double v4, v12, v72

    if-gez v4, :cond_18

    const-wide/high16 v72, 0x3fe0000000000000L    # 0.5

    mul-double v72, v72, v26

    const-wide/high16 v74, 0x3fe0000000000000L    # 0.5

    mul-double v74, v74, v12

    add-double v74, v74, v26

    div-double v62, v72, v74

    .line 471
    .local v62, "tmp":D
    :goto_e
    const-wide v72, 0x3fb999999999999aL    # 0.1

    mul-double v72, v72, v22

    cmpl-double v4, v72, v52

    if-gez v4, :cond_14

    const-wide v72, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v62, v72

    if-gez v4, :cond_15

    .line 472
    :cond_14
    const-wide v62, 0x3fb999999999999aL    # 0.1

    .line 474
    :cond_15
    const-wide/high16 v72, 0x4024000000000000L    # 10.0

    mul-double v72, v72, v36

    move-wide/from16 v0, v72

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v72

    mul-double v6, v62, v72

    .line 475
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v72, v0

    div-double v72, v72, v62

    move-wide/from16 v0, v72

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 482
    .end local v62    # "tmp":D
    :cond_16
    :goto_f
    const-wide v72, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v56, v72

    if-ltz v4, :cond_1c

    .line 484
    const/16 v32, 0x0

    .line 485
    const-wide/16 v68, 0x0

    .line 486
    const/16 v35, 0x0

    :goto_10
    move/from16 v0, v35

    move/from16 v1, v40

    if-ge v0, v1, :cond_1b

    .line 487
    aget-wide v72, v8, v35

    aget-wide v74, v24, v35

    mul-double v66, v72, v74

    .line 488
    .local v66, "xK":D
    mul-double v72, v66, v66

    add-double v68, v68, v72

    .line 486
    add-int/lit8 v35, v35, 0x1

    goto :goto_10

    .line 465
    .end local v66    # "xK":D
    :cond_17
    div-double v56, v12, v50

    goto :goto_d

    .line 469
    :cond_18
    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    goto :goto_e

    .line 476
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v72, v0

    const-wide/16 v74, 0x0

    cmpl-double v4, v72, v74

    if-eqz v4, :cond_1a

    const-wide/high16 v72, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v56, v72

    if-ltz v4, :cond_16

    .line 477
    :cond_1a
    const-wide/high16 v72, 0x4000000000000000L    # 2.0

    mul-double v6, v72, v36

    .line 478
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v72, v0

    const-wide/high16 v74, 0x3fe0000000000000L    # 0.5

    mul-double v72, v72, v74

    move-wide/from16 v0, v72

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_f

    .line 490
    :cond_1b
    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v68

    .line 493
    if-eqz v14, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getIterations()I

    move-result v4

    move-object/from16 v0, v49

    invoke-interface {v14, v4, v0, v15}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 494
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    move-object/from16 v20, v15

    .line 495
    .restart local v20    # "current":Ljava/lang/Object;
    goto/16 :goto_6

    .line 499
    .end local v20    # "current":Ljava/lang/Object;
    :cond_1c
    move-wide/from16 v22, v52

    .line 500
    const/16 v34, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_1d

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v45, v4, v34

    .line 502
    .restart local v45    # "pj":I
    aget-wide v72, v44, v45

    aput-wide v72, v24, v45

    .line 500
    add-int/lit8 v34, v34, 0x1

    goto :goto_11

    .line 504
    .end local v45    # "pj":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v64, v0

    .line 505
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 506
    move-object/from16 v43, v64

    .line 507
    move-object/from16 v64, v21

    .line 508
    move-object/from16 v21, v42

    .line 509
    move-object/from16 v42, v64

    .line 511
    new-instance v15, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .end local v15    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 515
    .restart local v15    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :cond_1e
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v72

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v74, v0

    cmpg-double v4, v72, v74

    if-gtz v4, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v72, v0

    cmpg-double v4, v50, v72

    if-gtz v4, :cond_1f

    const-wide/high16 v72, 0x4000000000000000L    # 2.0

    cmpg-double v4, v56, v72

    if-lez v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    move-wide/from16 v72, v0

    mul-double v72, v72, v68

    cmpg-double v4, v6, v72

    if-gtz v4, :cond_21

    .line 519
    :cond_20
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    move-object/from16 v20, v15

    .line 520
    .restart local v20    # "current":Ljava/lang/Object;
    goto/16 :goto_6

    .line 524
    .end local v20    # "current":Ljava/lang/Object;
    :cond_21
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v72

    sget-wide v74, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v72, v74

    if-gtz v4, :cond_22

    sget-wide v72, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v50, v72

    if-gtz v4, :cond_22

    const-wide/high16 v72, 0x4000000000000000L    # 2.0

    cmpg-double v4, v56, v72

    if-gtz v4, :cond_22

    .line 527
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v72, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v73, 0x1

    move/from16 v0, v73

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v75

    aput-object v75, v73, v74

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 529
    :cond_22
    sget-wide v72, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    mul-double v72, v72, v68

    cmpg-double v4, v6, v72

    if-gtz v4, :cond_23

    .line 530
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v72, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v73, 0x1

    move/from16 v0, v73

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v75

    aput-object v75, v73, v74

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 532
    :cond_23
    sget-wide v72, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v38, v72

    if-gtz v4, :cond_c

    .line 533
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v72, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v73, 0x1

    move/from16 v0, v73

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v75

    aput-object v75, v73, v74

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method
