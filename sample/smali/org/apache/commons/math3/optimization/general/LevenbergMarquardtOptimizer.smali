.class public Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 157
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 158
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 13
    .param p1, "costRelativeTolerance"    # D
    .param p3, "parRelativeTolerance"    # D
    .param p5, "orthoTolerance"    # D

    .prologue
    .line 236
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 239
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
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 270
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 271
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 272
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 273
    iput-wide p7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 274
    iput-wide p9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 275
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V
    .locals 0
    .param p1, "initialStepBoundFactor"    # D
    .param p4, "costRelativeTolerance"    # D
    .param p6, "parRelativeTolerance"    # D
    .param p8, "orthoTolerance"    # D
    .param p10, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p3, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 208
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 209
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 210
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 211
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 212
    iput-wide p10, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 213
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 12
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
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 176
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-object v3, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V

    .line 177
    return-void
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 40
    .param p1, "qy"    # [D
    .param p2, "diag"    # [D
    .param p3, "lmDiag"    # [D
    .param p4, "work"    # [D

    .prologue
    .line 729
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v16, v34, v13

    .line 731
    .local v16, "pj":I
    add-int/lit8 v12, v13, 0x1

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_0

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v35, v0

    aget-object v35, v35, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v36, v0

    aget v36, v36, v12

    aget-wide v36, v35, v36

    aput-wide v36, v34, v16

    .line 731
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v35, v0

    aget-wide v36, v35, v16

    aput-wide v36, v34, v13

    .line 735
    aget-wide v34, p1, v13

    aput-wide v34, p4, v13

    .line 729
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 739
    .end local v12    # "i":I
    .end local v16    # "pj":I
    :cond_1
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_6

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v16, v34, v13

    .line 744
    .restart local v16    # "pj":I
    aget-wide v10, p2, v16

    .line 745
    .local v10, "dpj":D
    const-wide/16 v34, 0x0

    cmpl-double v34, v10, v34

    if-eqz v34, :cond_2

    .line 746
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

    .line 748
    :cond_2
    aput-wide v10, p3, v13

    .line 753
    const-wide/16 v18, 0x0

    .line 754
    .local v18, "qtbpj":D
    move v14, v13

    .local v14, "k":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v14, v0, :cond_5

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v17, v34, v14

    .line 759
    .local v17, "pk":I
    aget-wide v34, p3, v14

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_4

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    aget-wide v22, v34, v17

    .line 764
    .local v22, "rkk":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    aget-wide v36, p3, v14

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpg-double v34, v34, v36

    if-gez v34, :cond_3

    .line 765
    aget-wide v34, p3, v14

    div-double v8, v22, v34

    .line 766
    .local v8, "cotan":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v8, v8

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    div-double v24, v34, v36

    .line 767
    .local v24, "sin":D
    mul-double v6, v24, v8

    .line 776
    .end local v8    # "cotan":D
    .local v6, "cos":D
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    mul-double v36, v6, v22

    aget-wide v38, p3, v14

    mul-double v38, v38, v24

    add-double v36, v36, v38

    aput-wide v36, v34, v17

    .line 777
    aget-wide v34, p4, v14

    mul-double v34, v34, v6

    mul-double v36, v24, v18

    add-double v30, v34, v36

    .line 778
    .local v30, "temp":D
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v34, v0

    aget-wide v36, p4, v14

    mul-double v34, v34, v36

    mul-double v36, v6, v18

    add-double v18, v34, v36

    .line 779
    aput-wide v30, p4, v14

    .line 782
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    aget-wide v20, v34, v17

    .line 784
    .local v20, "rik":D
    mul-double v34, v6, v20

    aget-wide v36, p3, v12

    mul-double v36, v36, v24

    add-double v32, v34, v36

    .line 785
    .local v32, "temp2":D
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v20

    aget-wide v36, p3, v12

    mul-double v36, v36, v6

    add-double v34, v34, v36

    aput-wide v34, p3, v12

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    aput-wide v32, v34, v17

    .line 782
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 769
    .end local v6    # "cos":D
    .end local v12    # "i":I
    .end local v20    # "rik":D
    .end local v24    # "sin":D
    .end local v30    # "temp":D
    .end local v32    # "temp2":D
    :cond_3
    aget-wide v34, p3, v14

    div-double v28, v34, v22

    .line 770
    .local v28, "tan":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v28, v28

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    div-double v6, v34, v36

    .line 771
    .restart local v6    # "cos":D
    mul-double v24, v6, v28

    .restart local v24    # "sin":D
    goto :goto_4

    .line 754
    .end local v6    # "cos":D
    .end local v22    # "rkk":D
    .end local v24    # "sin":D
    .end local v28    # "tan":D
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 793
    .end local v17    # "pk":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    aget-wide v34, v34, v35

    aput-wide v34, p3, v13

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v36, v0

    aget-wide v36, v36, v13

    aput-wide v36, v34, v35

    .line 739
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 799
    .end local v10    # "dpj":D
    .end local v14    # "k":I
    .end local v16    # "pj":I
    .end local v18    # "qtbpj":D
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 800
    .local v15, "nSing":I
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_9

    .line 801
    aget-wide v34, p3, v13

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ne v15, v0, :cond_7

    .line 802
    move v15, v13

    .line 804
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_8

    .line 805
    const-wide/16 v34, 0x0

    aput-wide v34, p4, v13

    .line 800
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 808
    :cond_9
    if-lez v15, :cond_b

    .line 809
    add-int/lit8 v13, v15, -0x1

    :goto_7
    if-ltz v13, :cond_b

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v34, v0

    aget v16, v34, v13

    .line 811
    .restart local v16    # "pj":I
    const-wide/16 v26, 0x0

    .line 812
    .local v26, "sum":D
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "i":I
    :goto_8
    if-ge v12, v15, :cond_a

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v34, v0

    aget-object v34, v34, v12

    aget-wide v34, v34, v16

    aget-wide v36, p4, v12

    mul-double v34, v34, v36

    add-double v26, v26, v34

    .line 812
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 815
    :cond_a
    aget-wide v34, p4, v13

    sub-double v34, v34, v26

    aget-wide v36, p3, v13

    div-double v34, v34, v36

    aput-wide v34, p4, v13

    .line 809
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 820
    .end local v12    # "i":I
    .end local v16    # "pj":I
    .end local v26    # "sum":D
    :cond_b
    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_c

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    aget-wide v36, p4, v13

    aput-wide v36, v34, v35

    .line 820
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 823
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
    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v25, v0

    const/16 v40, 0x0

    aget-object v25, v25, v40

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v18, v0

    .line 560
    .local v18, "nC":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v40, v0

    aget v40, v40, v16

    aget-wide v42, p1, v16

    aput-wide v42, v25, v40

    .line 560
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 563
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v40, v0

    aget v40, v40, v16

    const-wide/16 v42, 0x0

    aput-wide v42, v25, v40

    .line 563
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 566
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v25, v0

    add-int/lit8 v17, v25, -0x1

    .local v17, "k":I
    :goto_2
    if-ltz v17, :cond_3

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 568
    .local v24, "pk":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aget-wide v40, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v24

    div-double v38, v40, v42

    .line 569
    .local v38, "ypk":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v40, v0

    aget v40, v40, v9

    aget-wide v42, v25, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v41, v0

    aget-object v41, v41, v9

    aget-wide v44, v41, v24

    mul-double v44, v44, v38

    sub-double v42, v42, v44

    aput-wide v42, v25, v40

    .line 569
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 572
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aput-wide v38, v25, v24

    .line 566
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 577
    .end local v9    # "i":I
    .end local v24    # "pk":I
    .end local v38    # "ypk":D
    :cond_3
    const-wide/16 v10, 0x0

    .line 578
    .local v10, "dxNorm":D
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 580
    .local v19, "pj":I
    aget-wide v40, p4, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v19

    mul-double v28, v40, v42

    .line 581
    .local v28, "s":D
    aput-wide v28, p5, v19

    .line 582
    mul-double v40, v28, v28

    add-double v10, v10, v40

    .line 578
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 584
    .end local v19    # "pj":I
    .end local v28    # "s":D
    :cond_4
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 585
    sub-double v12, v10, p2

    .line 586
    .local v12, "fp":D
    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v40, v40, p2

    cmpg-double v25, v12, v40

    if-gtz v25, :cond_6

    .line 587
    const-wide/16 v40, 0x0

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 702
    :cond_5
    return-void

    .line 595
    :cond_6
    const-wide/16 v20, 0x0

    .line 596
    .local v20, "parl":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v40, v0

    move/from16 v0, v25

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    .line 597
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 599
    .restart local v19    # "pj":I
    aget-wide v40, p5, v19

    aget-wide v42, p4, v19

    div-double v42, v42, v10

    mul-double v40, v40, v42

    aput-wide v40, p5, v19

    .line 597
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 601
    .end local v19    # "pj":I
    :cond_7
    const-wide/16 v34, 0x0

    .line 602
    .local v34, "sum2":D
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 604
    .restart local v19    # "pj":I
    const-wide/16 v32, 0x0

    .line 605
    .local v32, "sum":D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    move/from16 v0, v16

    if-ge v9, v0, :cond_8

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    aget-wide v40, v25, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v25, v25, v9

    aget-wide v42, p5, v25

    mul-double v40, v40, v42

    add-double v32, v32, v40

    .line 605
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 608
    :cond_8
    aget-wide v40, p5, v19

    sub-double v40, v40, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v19

    div-double v28, v40, v42

    .line 609
    .restart local v28    # "s":D
    aput-wide v28, p5, v19

    .line 610
    mul-double v40, v28, v28

    add-double v34, v34, v40

    .line 602
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 612
    .end local v9    # "i":I
    .end local v19    # "pj":I
    .end local v28    # "s":D
    .end local v32    # "sum":D
    :cond_9
    mul-double v40, p2, v34

    div-double v20, v12, v40

    .line 616
    .end local v34    # "sum2":D
    :cond_a
    const-wide/16 v34, 0x0

    .line 617
    .restart local v34    # "sum2":D
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 619
    .restart local v19    # "pj":I
    const-wide/16 v32, 0x0

    .line 620
    .restart local v32    # "sum":D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    move/from16 v0, v16

    if-gt v9, v0, :cond_b

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    aget-wide v40, v25, v19

    aget-wide v42, p1, v9

    mul-double v40, v40, v42

    add-double v32, v32, v40

    .line 620
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 623
    :cond_b
    aget-wide v40, p4, v19

    div-double v32, v32, v40

    .line 624
    mul-double v40, v32, v32

    add-double v34, v34, v40

    .line 617
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 626
    .end local v9    # "i":I
    .end local v19    # "pj":I
    .end local v32    # "sum":D
    :cond_c
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 627
    .local v14, "gNorm":D
    div-double v22, v14, p2

    .line 628
    .local v22, "paru":D
    const-wide/16 v40, 0x0

    cmpl-double v25, v22, v40

    if-nez v25, :cond_d

    .line 630
    const-wide v40, 0x10000c51bd5669L    # 2.2251E-308

    const-wide v42, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v0, p2

    move-wide/from16 v2, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v42

    div-double v22, v40, v42

    .line 635
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

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

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 636
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v25, v40, v42

    if-nez v25, :cond_e

    .line 637
    div-double v40, v14, v10

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 640
    :cond_e
    const/16 v8, 0xa

    .local v8, "countdown":I
    :goto_a
    if-ltz v8, :cond_5

    .line 643
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v25, v40, v42

    if-nez v25, :cond_f

    .line 644
    const-wide v40, 0x10000c51bd5669L    # 2.2251E-308

    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v22

    invoke-static/range {v40 .. v43}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 646
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    .line 647
    .local v30, "sPar":D
    const/16 v16, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 649
    .restart local v19    # "pj":I
    aget-wide v40, p4, v19

    mul-double v40, v40, v30

    aput-wide v40, p5, v19

    .line 647
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 651
    .end local v19    # "pj":I
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    .line 653
    const-wide/16 v10, 0x0

    .line 654
    const/16 v16, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 656
    .restart local v19    # "pj":I
    aget-wide v40, p4, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v25, v0

    aget-wide v42, v25, v19

    mul-double v28, v40, v42

    .line 657
    .restart local v28    # "s":D
    aput-wide v28, p7, v19

    .line 658
    mul-double v40, v28, v28

    add-double v10, v10, v40

    .line 654
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 660
    .end local v19    # "pj":I
    .end local v28    # "s":D
    :cond_11
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 661
    move-wide/from16 v26, v12

    .line 662
    .local v26, "previousFP":D
    sub-double v12, v10, p2

    .line 666
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

    .line 672
    :cond_12
    const/16 v16, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 674
    .restart local v19    # "pj":I
    aget-wide v40, p7, v19

    aget-wide v42, p4, v19

    mul-double v40, v40, v42

    div-double v40, v40, v10

    aput-wide v40, p5, v19

    .line 672
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 676
    .end local v19    # "pj":I
    :cond_13
    const/16 v16, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_15

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v19, v25, v16

    .line 678
    .restart local v19    # "pj":I
    aget-wide v40, p5, v19

    aget-wide v42, p6, v16

    div-double v40, v40, v42

    aput-wide v40, p5, v19

    .line 679
    aget-wide v36, p5, v19

    .line 680
    .local v36, "tmp":D
    add-int/lit8 v9, v16, 0x1

    .restart local v9    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_14

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v25, v25, v9

    aget-wide v40, p5, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v42, v0

    aget-object v42, v42, v9

    aget-wide v42, v42, v19

    mul-double v42, v42, v36

    sub-double v40, v40, v42

    aput-wide v40, p5, v25

    .line 680
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 676
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 684
    .end local v9    # "i":I
    .end local v19    # "pj":I
    .end local v36    # "tmp":D
    :cond_15
    const-wide/16 v34, 0x0

    .line 685
    const/16 v16, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v25, v0

    aget v25, v25, v16

    aget-wide v28, p5, v25

    .line 687
    .restart local v28    # "s":D
    mul-double v40, v28, v28

    add-double v34, v34, v40

    .line 685
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 689
    .end local v28    # "s":D
    :cond_16
    mul-double v40, p2, v34

    div-double v6, v12, v40

    .line 692
    .local v6, "correction":D
    const-wide/16 v40, 0x0

    cmpl-double v25, v12, v40

    if-lez v25, :cond_18

    .line 693
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 699
    :cond_17
    :goto_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v40, v0

    add-double v40, v40, v6

    move-wide/from16 v0, v20

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 640
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_a

    .line 694
    :cond_18
    const-wide/16 v40, 0x0

    cmpg-double v25, v12, v40

    if-gez v25, :cond_17

    .line 695
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

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
    .line 928
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v5, v7

    .line 929
    .local v5, "nR":I
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v4, v7

    .line 931
    .local v4, "nC":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 932
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v7, v3

    .line 933
    .local v6, "pk":I
    const-wide/16 v0, 0x0

    .line 934
    .local v0, "gamma":D
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 935
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v6

    aget-wide v10, p1, v2

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 937
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v8, v7, v6

    mul-double/2addr v0, v8

    .line 938
    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_1

    .line 939
    aget-wide v8, p1, v2

    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v2

    aget-wide v10, v7, v6

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 938
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 931
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
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
    .line 852
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v21, v0

    .line 855
    .local v21, "nR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v20, v0

    .line 858
    .local v20, "nC":I
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    aput v19, v26, v19

    .line 860
    const-wide/16 v24, 0x0

    .line 861
    .local v24, "norm2":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v15

    aget-wide v8, v26, v19

    .line 863
    .local v8, "akk":D
    mul-double v26, v8, v8

    add-double v24, v24, v26

    .line 861
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 865
    .end local v8    # "akk":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    aput-wide v28, v26, v19

    .line 858
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 869
    .end local v15    # "i":I
    .end local v24    # "norm2":D
    :cond_1
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 872
    const/16 v22, -0x1

    .line 873
    .local v22, "nextColumn":I
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 874
    .local v4, "ak2":D
    move/from16 v15, v19

    .restart local v15    # "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_6

    .line 875
    const-wide/16 v24, 0x0

    .line 876
    .restart local v24    # "norm2":D
    move/from16 v18, v19

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    aget-wide v6, v26, v27

    .line 878
    .local v6, "aki":D
    mul-double v26, v6, v6

    add-double v24, v24, v26

    .line 876
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 880
    .end local v6    # "aki":D
    :cond_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v26

    if-nez v26, :cond_3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 881
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

    .line 884
    :cond_4
    cmpl-double v26, v24, v4

    if-lez v26, :cond_5

    .line 885
    move/from16 v22, v15

    .line 886
    move-wide/from16 v4, v24

    .line 874
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 889
    .end local v18    # "j":I
    .end local v24    # "norm2":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide/from16 v26, v0

    cmpg-double v26, v4, v26

    if-gtz v26, :cond_7

    .line 890
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    .line 920
    .end local v4    # "ak2":D
    .end local v15    # "i":I
    .end local v22    # "nextColumn":I
    :goto_5
    return-void

    .line 893
    .restart local v4    # "ak2":D
    .restart local v15    # "i":I
    .restart local v22    # "nextColumn":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    aget v23, v26, v22

    .line 894
    .local v23, "pk":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v27, v0

    aget v27, v27, v19

    aput v27, v26, v22

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v26, v0

    aput v23, v26, v19

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v19

    aget-wide v8, v26, v23

    .line 899
    .restart local v8    # "akk":D
    const-wide/16 v26, 0x0

    cmpl-double v26, v8, v26

    if-lez v26, :cond_8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v10, v0

    .line 900
    .local v10, "alpha":D
    :goto_6
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v28, v8, v10

    sub-double v28, v4, v28

    div-double v12, v26, v28

    .line 901
    .local v12, "betak":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    move-object/from16 v26, v0

    aput-wide v12, v26, v23

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v26, v0

    aput-wide v10, v26, v23

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v19

    aget-wide v28, v26, v23

    sub-double v28, v28, v10

    aput-wide v28, v26, v23

    .line 908
    add-int/lit8 v26, v20, -0x1

    sub-int v14, v26, v19

    .local v14, "dk":I
    :goto_7
    if-lez v14, :cond_b

    .line 909
    const-wide/16 v16, 0x0

    .line 910
    .local v16, "gamma":D
    move/from16 v18, v19

    .restart local v18    # "j":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    aget-wide v26, v26, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v28, v0

    aget-object v28, v28, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v29, v0

    add-int v30, v19, v14

    aget v29, v29, v30

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    add-double v16, v16, v26

    .line 910
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 899
    .end local v10    # "alpha":D
    .end local v12    # "betak":D
    .end local v14    # "dk":I
    .end local v16    # "gamma":D
    .end local v18    # "j":I
    :cond_8
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    goto :goto_6

    .line 913
    .restart local v10    # "alpha":D
    .restart local v12    # "betak":D
    .restart local v14    # "dk":I
    .restart local v16    # "gamma":D
    .restart local v18    # "j":I
    :cond_9
    mul-double v16, v16, v12

    .line 914
    move/from16 v18, v19

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    move-object/from16 v27, v0

    add-int v28, v19, v14

    aget v27, v27, v28

    aget-wide v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    move-object/from16 v30, v0

    aget-object v30, v30, v18

    aget-wide v30, v30, v23

    mul-double v30, v30, v16

    sub-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 914
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 908
    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 869
    .end local v16    # "gamma":D
    .end local v18    # "j":I
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 919
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

    iget v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    goto/16 :goto_5
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 78

    .prologue
    .line 280
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v4

    array-length v0, v4

    move/from16 v42, v0

    .line 281
    .local v42, "nR":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v24

    .line 282
    .local v24, "currentPoint":[D
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v37, v0

    .line 285
    .local v37, "nC":I
    move/from16 v0, v42

    move/from16 v1, v37

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 286
    move/from16 v0, v37

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    .line 287
    move/from16 v0, v37

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 288
    move/from16 v0, v37

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    .line 289
    move/from16 v0, v37

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    .line 290
    move/from16 v0, v37

    new-array v4, v0, [D

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 293
    const-wide/16 v6, 0x0

    .line 294
    .local v6, "delta":D
    const-wide/16 v70, 0x0

    .line 295
    .local v70, "xNorm":D
    move/from16 v0, v37

    new-array v8, v0, [D

    .line 296
    .local v8, "diag":[D
    move/from16 v0, v37

    new-array v0, v0, [D

    move-object/from16 v45, v0

    .line 297
    .local v45, "oldX":[D
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v44, v0

    .line 298
    .local v44, "oldRes":[D
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v43, v0

    .line 299
    .local v43, "oldObj":[D
    move/from16 v0, v42

    new-array v5, v0, [D

    .line 300
    .local v5, "qtf":[D
    move/from16 v0, v37

    new-array v9, v0, [D

    .line 301
    .local v9, "work1":[D
    move/from16 v0, v37

    new-array v10, v0, [D

    .line 302
    .local v10, "work2":[D
    move/from16 v0, v37

    new-array v11, v0, [D

    .line 304
    .local v11, "work3":[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v66

    .line 307
    .local v66, "weightMatrixSqrt":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v21

    .line 308
    .local v21, "currentObjective":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v25

    .line 309
    .local v25, "currentResiduals":[D
    new-instance v15, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 310
    .local v15, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v22

    .line 313
    .local v22, "currentCost":D
    const-wide/16 v74, 0x0

    move-wide/from16 v0, v74

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 314
    const/16 v32, 0x1

    .line 315
    .local v32, "firstIteration":Z
    const/16 v34, 0x0

    .line 316
    .local v34, "iter":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v14

    .line 318
    .local v14, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    :cond_0
    add-int/lit8 v34, v34, 0x1

    .line 319
    move-object/from16 v52, v15

    .line 322
    .local v52, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 324
    move-object/from16 v0, v66

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 325
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v74, v4, v33

    aput-wide v74, v5, v33

    .line 325
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 330
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qTy([D)V

    .line 334
    const/16 v36, 0x0

    .local v36, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v36

    if-ge v0, v4, :cond_2

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v49, v4, v36

    .line 336
    .local v49, "pk":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    move-object/from16 v67, v0

    aget-wide v74, v67, v49

    aput-wide v74, v4, v49

    .line 334
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 339
    .end local v49    # "pk":I
    :cond_2
    if-eqz v32, :cond_5

    .line 342
    const-wide/16 v70, 0x0

    .line 343
    const/16 v36, 0x0

    :goto_2
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v30, v4, v36

    .line 345
    .local v30, "dk":D
    const-wide/16 v74, 0x0

    cmpl-double v4, v30, v74

    if-nez v4, :cond_3

    .line 346
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 348
    :cond_3
    aget-wide v74, v24, v36

    mul-double v72, v30, v74

    .line 349
    .local v72, "xk":D
    mul-double v74, v72, v72

    add-double v70, v70, v74

    .line 350
    aput-wide v30, v8, v36

    .line 343
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 352
    .end local v30    # "dk":D
    .end local v72    # "xk":D
    :cond_4
    invoke-static/range {v70 .. v71}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v70

    .line 355
    const-wide/16 v74, 0x0

    cmpl-double v4, v70, v74

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 359
    :cond_5
    :goto_3
    const-wide/16 v40, 0x0

    .line 360
    .local v40, "maxCosine":D
    const-wide/16 v74, 0x0

    cmpl-double v4, v22, v74

    if-eqz v4, :cond_9

    .line 361
    const/16 v35, 0x0

    .local v35, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v48, v4, v35

    .line 363
    .local v48, "pj":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v60, v4, v48

    .line 364
    .local v60, "s":D
    const-wide/16 v74, 0x0

    cmpl-double v4, v60, v74

    if-eqz v4, :cond_8

    .line 365
    const-wide/16 v62, 0x0

    .line 366
    .local v62, "sum":D
    const/16 v33, 0x0

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v35

    if-gt v0, v1, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v33

    aget-wide v74, v4, v48

    aget-wide v76, v5, v33

    mul-double v74, v74, v76

    add-double v62, v62, v74

    .line 366
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 355
    .end local v35    # "j":I
    .end local v40    # "maxCosine":D
    .end local v48    # "pj":I
    .end local v60    # "s":D
    .end local v62    # "sum":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    move-wide/from16 v74, v0

    mul-double v6, v74, v70

    goto :goto_3

    .line 369
    .restart local v35    # "j":I
    .restart local v40    # "maxCosine":D
    .restart local v48    # "pj":I
    .restart local v60    # "s":D
    .restart local v62    # "sum":D
    :cond_7
    invoke-static/range {v62 .. v63}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v74

    mul-double v76, v60, v22

    div-double v74, v74, v76

    move-wide/from16 v0, v40

    move-wide/from16 v2, v74

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    .line 361
    .end local v62    # "sum":D
    :cond_8
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .line 373
    .end local v35    # "j":I
    .end local v48    # "pj":I
    .end local v60    # "s":D
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide/from16 v74, v0

    cmpg-double v4, v40, v74

    if-gtz v4, :cond_a

    .line 375
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 377
    invoke-virtual {v15}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    move-object/from16 v20, v15

    .line 513
    .end local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v20, "current":Ljava/lang/Object;
    :goto_6
    return-object v20

    .line 382
    .end local v20    # "current":Ljava/lang/Object;
    .restart local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :cond_a
    const/16 v35, 0x0

    .restart local v35    # "j":I
    :goto_7
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    .line 383
    aget-wide v74, v8, v35

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v76, v4, v35

    invoke-static/range {v74 .. v77}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v74

    aput-wide v74, v8, v35

    .line 382
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 387
    :cond_b
    const-wide/16 v58, 0x0

    .local v58, "ratio":D
    :cond_c
    const-wide v74, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v58, v74

    if-gez v4, :cond_0

    .line 390
    const/16 v35, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_d

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v48, v4, v35

    .line 392
    .restart local v48    # "pj":I
    aget-wide v74, v24, v48

    aput-wide v74, v45, v48

    .line 390
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 394
    .end local v48    # "pj":I
    :cond_d
    move-wide/from16 v54, v22

    .line 395
    .local v54, "previousCost":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v53, v0

    .line 396
    .local v53, "tmpVec":[D
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 397
    move-object/from16 v44, v53

    .line 398
    move-object/from16 v53, v21

    .line 399
    move-object/from16 v21, v43

    .line 400
    move-object/from16 v43, v53

    move-object/from16 v4, p0

    .line 403
    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    .line 406
    const-wide/16 v38, 0x0

    .line 407
    .local v38, "lmNorm":D
    const/16 v35, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_e

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v48, v4, v35

    .line 409
    .restart local v48    # "pj":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v67, v0

    aget-wide v74, v67, v48

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    aput-wide v74, v4, v48

    .line 410
    aget-wide v74, v45, v48

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v76, v4, v48

    add-double v74, v74, v76

    aput-wide v74, v24, v48

    .line 411
    aget-wide v74, v8, v48

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v76, v4, v48

    mul-double v60, v74, v76

    .line 412
    .restart local v60    # "s":D
    mul-double v74, v60, v60

    add-double v38, v38, v74

    .line 407
    add-int/lit8 v35, v35, 0x1

    goto :goto_9

    .line 414
    .end local v48    # "pj":I
    .end local v60    # "s":D
    :cond_e
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v38

    .line 416
    if-eqz v32, :cond_f

    .line 417
    move-wide/from16 v0, v38

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 421
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v21

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v25

    .line 423
    new-instance v15, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .end local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 424
    .restart local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v22

    .line 427
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 428
    .local v12, "actRed":D
    const-wide v74, 0x3fb999999999999aL    # 0.1

    mul-double v74, v74, v22

    cmpg-double v4, v74, v54

    if-gez v4, :cond_10

    .line 429
    div-double v56, v22, v54

    .line 430
    .local v56, "r":D
    const-wide/high16 v74, 0x3ff0000000000000L    # 1.0

    mul-double v76, v56, v56

    sub-double v12, v74, v76

    .line 435
    .end local v56    # "r":D
    :cond_10
    const/16 v35, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_12

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v48, v4, v35

    .line 437
    .restart local v48    # "pj":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v28, v4, v48

    .line 438
    .local v28, "dirJ":D
    const-wide/16 v74, 0x0

    aput-wide v74, v9, v35

    .line 439
    const/16 v33, 0x0

    :goto_b
    move/from16 v0, v33

    move/from16 v1, v35

    if-gt v0, v1, :cond_11

    .line 440
    aget-wide v74, v9, v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v33

    aget-wide v76, v4, v48

    mul-double v76, v76, v28

    add-double v74, v74, v76

    aput-wide v74, v9, v33

    .line 439
    add-int/lit8 v33, v33, 0x1

    goto :goto_b

    .line 435
    :cond_11
    add-int/lit8 v35, v35, 0x1

    goto :goto_a

    .line 443
    .end local v28    # "dirJ":D
    .end local v48    # "pj":I
    :cond_12
    const-wide/16 v16, 0x0

    .line 444
    .local v16, "coeff1":D
    const/16 v35, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_13

    .line 445
    aget-wide v74, v9, v35

    aget-wide v76, v9, v35

    mul-double v74, v74, v76

    add-double v16, v16, v74

    .line 444
    add-int/lit8 v35, v35, 0x1

    goto :goto_c

    .line 447
    :cond_13
    mul-double v46, v54, v54

    .line 448
    .local v46, "pc2":D
    div-double v16, v16, v46

    .line 449
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v74, v0

    mul-double v74, v74, v38

    mul-double v74, v74, v38

    div-double v18, v74, v46

    .line 450
    .local v18, "coeff2":D
    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    mul-double v74, v74, v18

    add-double v50, v16, v74

    .line 451
    .local v50, "preRed":D
    add-double v74, v16, v18

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v26, v0

    .line 454
    .local v26, "dirDer":D
    const-wide/16 v74, 0x0

    cmpl-double v4, v50, v74

    if-nez v4, :cond_17

    const-wide/16 v58, 0x0

    .line 457
    :goto_d
    const-wide/high16 v74, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v58, v74

    if-gtz v4, :cond_19

    .line 458
    const-wide/16 v74, 0x0

    cmpg-double v4, v12, v74

    if-gez v4, :cond_18

    const-wide/high16 v74, 0x3fe0000000000000L    # 0.5

    mul-double v74, v74, v26

    const-wide/high16 v76, 0x3fe0000000000000L    # 0.5

    mul-double v76, v76, v12

    add-double v76, v76, v26

    div-double v64, v74, v76

    .line 460
    .local v64, "tmp":D
    :goto_e
    const-wide v74, 0x3fb999999999999aL    # 0.1

    mul-double v74, v74, v22

    cmpl-double v4, v74, v54

    if-gez v4, :cond_14

    const-wide v74, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v64, v74

    if-gez v4, :cond_15

    .line 461
    :cond_14
    const-wide v64, 0x3fb999999999999aL    # 0.1

    .line 463
    :cond_15
    const-wide/high16 v74, 0x4024000000000000L    # 10.0

    mul-double v74, v74, v38

    move-wide/from16 v0, v74

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v74

    mul-double v6, v64, v74

    .line 464
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v74, v0

    div-double v74, v74, v64

    move-wide/from16 v0, v74

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 471
    .end local v64    # "tmp":D
    :cond_16
    :goto_f
    const-wide v74, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v58, v74

    if-ltz v4, :cond_1c

    .line 473
    const/16 v32, 0x0

    .line 474
    const-wide/16 v70, 0x0

    .line 475
    const/16 v36, 0x0

    :goto_10
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1b

    .line 476
    aget-wide v74, v8, v36

    aget-wide v76, v24, v36

    mul-double v68, v74, v76

    .line 477
    .local v68, "xK":D
    mul-double v74, v68, v68

    add-double v70, v70, v74

    .line 475
    add-int/lit8 v36, v36, 0x1

    goto :goto_10

    .line 454
    .end local v68    # "xK":D
    :cond_17
    div-double v58, v12, v50

    goto :goto_d

    .line 458
    :cond_18
    const-wide/high16 v64, 0x3fe0000000000000L    # 0.5

    goto :goto_e

    .line 465
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v4, v74, v76

    if-eqz v4, :cond_1a

    const-wide/high16 v74, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v58, v74

    if-ltz v4, :cond_16

    .line 466
    :cond_1a
    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    mul-double v6, v74, v38

    .line 467
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v74, v0

    const-wide/high16 v76, 0x3fe0000000000000L    # 0.5

    mul-double v74, v74, v76

    move-wide/from16 v0, v74

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_f

    .line 479
    :cond_1b
    invoke-static/range {v70 .. v71}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v70

    .line 482
    if-eqz v14, :cond_1e

    move/from16 v0, v34

    move-object/from16 v1, v52

    invoke-interface {v14, v0, v1, v15}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 483
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 485
    invoke-virtual {v15}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    move-object/from16 v20, v15

    .line 486
    .restart local v20    # "current":Ljava/lang/Object;
    goto/16 :goto_6

    .line 490
    .end local v20    # "current":Ljava/lang/Object;
    :cond_1c
    move-wide/from16 v22, v54

    .line 491
    const/16 v35, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_1d

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v48, v4, v35

    .line 493
    .restart local v48    # "pj":I
    aget-wide v74, v45, v48

    aput-wide v74, v24, v48

    .line 491
    add-int/lit8 v35, v35, 0x1

    goto :goto_11

    .line 495
    .end local v48    # "pj":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v53, v0

    .line 496
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 497
    move-object/from16 v44, v53

    .line 498
    move-object/from16 v53, v21

    .line 499
    move-object/from16 v21, v43

    .line 500
    move-object/from16 v43, v53

    .line 502
    new-instance v15, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .end local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 506
    .restart local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :cond_1e
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v74

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v76, v0

    cmpg-double v4, v74, v76

    if-gtz v4, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v74, v0

    cmpg-double v4, v50, v74

    if-gtz v4, :cond_1f

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    cmpg-double v4, v58, v74

    if-lez v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    move-wide/from16 v74, v0

    mul-double v74, v74, v70

    cmpg-double v4, v6, v74

    if-gtz v4, :cond_21

    .line 510
    :cond_20
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 512
    invoke-virtual {v15}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    move-object/from16 v20, v15

    .line 513
    .restart local v20    # "current":Ljava/lang/Object;
    goto/16 :goto_6

    .line 518
    .end local v20    # "current":Ljava/lang/Object;
    :cond_21
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v74

    const-wide v76, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v4, v74, v76

    if-gtz v4, :cond_22

    const-wide v74, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v4, v50, v74

    if-gtz v4, :cond_22

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    cmpg-double v4, v58, v74

    if-gtz v4, :cond_22

    .line 519
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v67, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v74, 0x1

    move/from16 v0, v74

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v76

    aput-object v76, v74, v75

    move-object/from16 v0, v67

    move-object/from16 v1, v74

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 521
    :cond_22
    const-wide v74, 0x3cafffd481f97682L    # 2.2204E-16

    mul-double v74, v74, v70

    cmpg-double v4, v6, v74

    if-gtz v4, :cond_23

    .line 522
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v67, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v74, 0x1

    move/from16 v0, v74

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v76

    aput-object v76, v74, v75

    move-object/from16 v0, v67

    move-object/from16 v1, v74

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 524
    :cond_23
    const-wide v74, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v4, v40, v74

    if-gtz v4, :cond_c

    .line 525
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v67, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v74, 0x1

    move/from16 v0, v74

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v76

    aput-object v76, v74, v75

    move-object/from16 v0, v67

    move-object/from16 v1, v74

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method
