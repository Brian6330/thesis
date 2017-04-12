.class public Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
.super Ljava/lang/Object;
.source "LevenbergMarquardtOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    }
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private final costRelativeTolerance:D

.field private final initialStepBoundFactor:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private final qrRankingThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 113
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 140
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 141
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1
    .param p1, "initialStepBoundFactor"    # D
    .param p3, "costRelativeTolerance"    # D
    .param p5, "parRelativeTolerance"    # D
    .param p7, "orthoTolerance"    # D
    .param p9, "qrRankingThreshold"    # D

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 161
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 162
    iput-wide p5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 163
    iput-wide p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 164
    iput-wide p9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 165
    return-void
.end method

.method private determineLMDirection([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D)V
    .locals 44
    .param p1, "qy"    # [D
    .param p2, "diag"    # [D
    .param p3, "lmDiag"    # [D
    .param p4, "internalData"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .param p5, "solvedCols"    # I
    .param p6, "work"    # [D
    .param p7, "lmDir"    # [D

    .prologue
    .line 808
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v17

    .line 809
    .local v17, "permutation":[I
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v36

    .line 810
    .local v36, "weightedJacobian":[[D
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v10

    .line 814
    .local v10, "diagR":[D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    move/from16 v0, p5

    if-ge v14, v0, :cond_1

    .line 815
    aget v18, v17, v14

    .line 816
    .local v18, "pj":I
    add-int/lit8 v11, v14, 0x1

    .local v11, "i":I
    :goto_1
    move/from16 v0, p5

    if-ge v11, v0, :cond_0

    .line 817
    aget-object v37, v36, v11

    aget-object v38, v36, v14

    aget v39, v17, v11

    aget-wide v38, v38, v39

    aput-wide v38, v37, v18

    .line 816
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 819
    :cond_0
    aget-wide v38, v10, v18

    aput-wide v38, p7, v14

    .line 820
    aget-wide v38, p1, v14

    aput-wide v38, p6, v14

    .line 814
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 824
    .end local v11    # "i":I
    .end local v18    # "pj":I
    :cond_1
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, p5

    if-ge v14, v0, :cond_6

    .line 828
    aget v18, v17, v14

    .line 829
    .restart local v18    # "pj":I
    aget-wide v12, p2, v18

    .line 830
    .local v12, "dpj":D
    const-wide/16 v38, 0x0

    cmpl-double v37, v12, v38

    if-eqz v37, :cond_2

    .line 831
    add-int/lit8 v37, v14, 0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v38, v0

    const-wide/16 v40, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    move/from16 v2, v38

    move-wide/from16 v3, v40

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    .line 833
    :cond_2
    aput-wide v12, p3, v14

    .line 838
    const-wide/16 v20, 0x0

    .line 839
    .local v20, "qtbpj":D
    move v15, v14

    .local v15, "k":I
    :goto_3
    move/from16 v0, p5

    if-ge v15, v0, :cond_5

    .line 840
    aget v19, v17, v15

    .line 844
    .local v19, "pk":I
    aget-wide v38, p3, v15

    const-wide/16 v40, 0x0

    cmpl-double v37, v38, v40

    if-eqz v37, :cond_4

    .line 848
    aget-object v37, v36, v15

    aget-wide v24, v37, v19

    .line 849
    .local v24, "rkk":D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    aget-wide v40, p3, v15

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    cmpg-double v37, v38, v40

    if-gez v37, :cond_3

    .line 850
    aget-wide v38, p3, v15

    div-double v8, v24, v38

    .line 851
    .local v8, "cotan":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    mul-double v42, v8, v8

    add-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v40

    div-double v26, v38, v40

    .line 852
    .local v26, "sin":D
    mul-double v6, v26, v8

    .line 861
    .end local v8    # "cotan":D
    .local v6, "cos":D
    :goto_4
    aget-object v37, v36, v15

    mul-double v38, v6, v24

    aget-wide v40, p3, v15

    mul-double v40, v40, v26

    add-double v38, v38, v40

    aput-wide v38, v37, v19

    .line 862
    aget-wide v38, p6, v15

    mul-double v38, v38, v6

    mul-double v40, v26, v20

    add-double v32, v38, v40

    .line 863
    .local v32, "temp":D
    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v38, v0

    aget-wide v40, p6, v15

    mul-double v38, v38, v40

    mul-double v40, v6, v20

    add-double v20, v38, v40

    .line 864
    aput-wide v32, p6, v15

    .line 867
    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "i":I
    :goto_5
    move/from16 v0, p5

    if-ge v11, v0, :cond_4

    .line 868
    aget-object v37, v36, v11

    aget-wide v22, v37, v19

    .line 869
    .local v22, "rik":D
    mul-double v38, v6, v22

    aget-wide v40, p3, v11

    mul-double v40, v40, v26

    add-double v34, v38, v40

    .line 870
    .local v34, "temp2":D
    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v22

    aget-wide v40, p3, v11

    mul-double v40, v40, v6

    add-double v38, v38, v40

    aput-wide v38, p3, v11

    .line 871
    aget-object v37, v36, v11

    aput-wide v34, v37, v19

    .line 867
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 854
    .end local v6    # "cos":D
    .end local v11    # "i":I
    .end local v22    # "rik":D
    .end local v26    # "sin":D
    .end local v32    # "temp":D
    .end local v34    # "temp2":D
    :cond_3
    aget-wide v38, p3, v15

    div-double v30, v38, v24

    .line 855
    .local v30, "tan":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    mul-double v42, v30, v30

    add-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v40

    div-double v6, v38, v40

    .line 856
    .restart local v6    # "cos":D
    mul-double v26, v6, v30

    .restart local v26    # "sin":D
    goto :goto_4

    .line 839
    .end local v6    # "cos":D
    .end local v24    # "rkk":D
    .end local v26    # "sin":D
    .end local v30    # "tan":D
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 878
    .end local v19    # "pk":I
    :cond_5
    aget-object v37, v36, v14

    aget v38, v17, v14

    aget-wide v38, v37, v38

    aput-wide v38, p3, v14

    .line 879
    aget-object v37, v36, v14

    aget v38, v17, v14

    aget-wide v40, p7, v14

    aput-wide v40, v37, v38

    .line 824
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 884
    .end local v12    # "dpj":D
    .end local v15    # "k":I
    .end local v18    # "pj":I
    .end local v20    # "qtbpj":D
    :cond_6
    move/from16 v16, p5

    .line 885
    .local v16, "nSing":I
    const/4 v14, 0x0

    :goto_6
    move/from16 v0, p5

    if-ge v14, v0, :cond_9

    .line 886
    aget-wide v38, p3, v14

    const-wide/16 v40, 0x0

    cmpl-double v37, v38, v40

    if-nez v37, :cond_7

    move/from16 v0, v16

    move/from16 v1, p5

    if-ne v0, v1, :cond_7

    .line 887
    move/from16 v16, v14

    .line 889
    :cond_7
    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_8

    .line 890
    const-wide/16 v38, 0x0

    aput-wide v38, p6, v14

    .line 885
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 893
    :cond_9
    if-lez v16, :cond_b

    .line 894
    add-int/lit8 v14, v16, -0x1

    :goto_7
    if-ltz v14, :cond_b

    .line 895
    aget v18, v17, v14

    .line 896
    .restart local v18    # "pj":I
    const-wide/16 v28, 0x0

    .line 897
    .local v28, "sum":D
    add-int/lit8 v11, v14, 0x1

    .restart local v11    # "i":I
    :goto_8
    move/from16 v0, v16

    if-ge v11, v0, :cond_a

    .line 898
    aget-object v37, v36, v11

    aget-wide v38, v37, v18

    aget-wide v40, p6, v11

    mul-double v38, v38, v40

    add-double v28, v28, v38

    .line 897
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 900
    :cond_a
    aget-wide v38, p6, v14

    sub-double v38, v38, v28

    aget-wide v40, p3, v14

    div-double v38, v38, v40

    aput-wide v38, p6, v14

    .line 894
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 905
    .end local v11    # "i":I
    .end local v18    # "pj":I
    .end local v28    # "sum":D
    :cond_b
    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v14, v0, :cond_c

    .line 906
    aget v37, v17, v14

    aget-wide v38, p6, v14

    aput-wide v38, p7, v37

    .line 905
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 908
    :cond_c
    return-void
.end method

.method private determineLMParameter([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D[D[DD)D
    .locals 53
    .param p1, "qy"    # [D
    .param p2, "delta"    # D
    .param p4, "diag"    # [D
    .param p5, "internalData"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .param p6, "solvedCols"    # I
    .param p7, "work1"    # [D
    .param p8, "work2"    # [D
    .param p9, "work3"    # [D
    .param p10, "lmDir"    # [D
    .param p11, "lmPar"    # D

    .prologue
    .line 624
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v48

    .line 625
    .local v48, "weightedJacobian":[[D
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v32

    .line 626
    .local v32, "permutation":[I
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->rank:I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$400(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)I

    move-result v35

    .line 627
    .local v35, "rank":I
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v15

    .line 629
    .local v15, "diagR":[D
    const/4 v4, 0x0

    aget-object v4, v48, v4

    array-length v0, v4

    move/from16 v25, v0

    .line 633
    .local v25, "nC":I
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    .line 634
    aget v4, v32, v23

    aget-wide v6, p1, v23

    aput-wide v6, p10, v4

    .line 633
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 636
    :cond_0
    move/from16 v23, v35

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 637
    aget v4, v32, v23

    const-wide/16 v6, 0x0

    aput-wide v6, p10, v4

    .line 636
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 639
    :cond_1
    add-int/lit8 v24, v35, -0x1

    .local v24, "k":I
    :goto_2
    if-ltz v24, :cond_3

    .line 640
    aget v34, v32, v24

    .line 641
    .local v34, "pk":I
    aget-wide v4, p10, v34

    aget-wide v6, v15, v34

    div-double v50, v4, v6

    .line 642
    .local v50, "ypk":D
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 643
    aget v4, v32, v22

    aget-wide v6, p10, v4

    aget-object v5, v48, v22

    aget-wide v8, v5, v34

    mul-double v8, v8, v50

    sub-double/2addr v6, v8

    aput-wide v6, p10, v4

    .line 642
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 645
    :cond_2
    aput-wide v50, p10, v34

    .line 639
    add-int/lit8 v24, v24, -0x1

    goto :goto_2

    .line 650
    .end local v22    # "i":I
    .end local v34    # "pk":I
    .end local v50    # "ypk":D
    :cond_3
    const-wide/16 v16, 0x0

    .line 651
    .local v16, "dxNorm":D
    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_4

    .line 652
    aget v33, v32, v23

    .line 653
    .local v33, "pj":I
    aget-wide v4, p4, v33

    aget-wide v6, p10, v33

    mul-double v38, v4, v6

    .line 654
    .local v38, "s":D
    aput-wide v38, p7, v33

    .line 655
    mul-double v4, v38, v38

    add-double v16, v16, v4

    .line 651
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 657
    .end local v33    # "pj":I
    .end local v38    # "s":D
    :cond_4
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 658
    sub-double v18, v16, p2

    .line 659
    .local v18, "fp":D
    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, p2

    cmpg-double v4, v18, v4

    if-gtz v4, :cond_5

    .line 660
    const-wide/16 p11, 0x0

    move-wide/from16 v26, p11

    .line 776
    .end local p11    # "lmPar":D
    .local v26, "lmPar":D
    :goto_5
    return-wide v26

    .line 668
    .end local v26    # "lmPar":D
    .restart local p11    # "lmPar":D
    :cond_5
    const-wide/16 v28, 0x0

    .line 669
    .local v28, "parl":D
    move/from16 v0, v35

    move/from16 v1, p6

    if-ne v0, v1, :cond_9

    .line 670
    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_6

    .line 671
    aget v33, v32, v23

    .line 672
    .restart local v33    # "pj":I
    aget-wide v4, p7, v33

    aget-wide v6, p4, v33

    div-double v6, v6, v16

    mul-double/2addr v4, v6

    aput-wide v4, p7, v33

    .line 670
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 674
    .end local v33    # "pj":I
    :cond_6
    const-wide/16 v44, 0x0

    .line 675
    .local v44, "sum2":D
    const/16 v23, 0x0

    :goto_7
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_8

    .line 676
    aget v33, v32, v23

    .line 677
    .restart local v33    # "pj":I
    const-wide/16 v42, 0x0

    .line 678
    .local v42, "sum":D
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 679
    aget-object v4, v48, v22

    aget-wide v4, v4, v33

    aget v6, v32, v22

    aget-wide v6, p7, v6

    mul-double/2addr v4, v6

    add-double v42, v42, v4

    .line 678
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 681
    :cond_7
    aget-wide v4, p7, v33

    sub-double v4, v4, v42

    aget-wide v6, v15, v33

    div-double v38, v4, v6

    .line 682
    .restart local v38    # "s":D
    aput-wide v38, p7, v33

    .line 683
    mul-double v4, v38, v38

    add-double v44, v44, v4

    .line 675
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 685
    .end local v22    # "i":I
    .end local v33    # "pj":I
    .end local v38    # "s":D
    .end local v42    # "sum":D
    :cond_8
    mul-double v4, p2, v44

    div-double v28, v18, v4

    .line 689
    .end local v44    # "sum2":D
    :cond_9
    const-wide/16 v44, 0x0

    .line 690
    .restart local v44    # "sum2":D
    const/16 v23, 0x0

    :goto_9
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_b

    .line 691
    aget v33, v32, v23

    .line 692
    .restart local v33    # "pj":I
    const-wide/16 v42, 0x0

    .line 693
    .restart local v42    # "sum":D
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_a
    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    .line 694
    aget-object v4, v48, v22

    aget-wide v4, v4, v33

    aget-wide v6, p1, v22

    mul-double/2addr v4, v6

    add-double v42, v42, v4

    .line 693
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 696
    :cond_a
    aget-wide v4, p4, v33

    div-double v42, v42, v4

    .line 697
    mul-double v4, v42, v42

    add-double v44, v44, v4

    .line 690
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 699
    .end local v22    # "i":I
    .end local v33    # "pj":I
    .end local v42    # "sum":D
    :cond_b
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    .line 700
    .local v20, "gNorm":D
    div-double v30, v20, p2

    .line 701
    .local v30, "paru":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v30, v4

    if-nez v4, :cond_c

    .line 702
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    div-double v30, v4, v6

    .line 707
    :cond_c
    move-wide/from16 v0, p11

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide p11

    .line 708
    const-wide/16 v4, 0x0

    cmpl-double v4, p11, v4

    if-nez v4, :cond_d

    .line 709
    div-double p11, v20, v16

    .line 712
    :cond_d
    const/16 v14, 0xa

    .local v14, "countdown":I
    :goto_b
    if-ltz v14, :cond_19

    .line 715
    const-wide/16 v4, 0x0

    cmpl-double v4, p11, v4

    if-nez v4, :cond_e

    .line 716
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v6, v6, v30

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p11

    .line 718
    :cond_e
    invoke-static/range {p11 .. p12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v40

    .line 719
    .local v40, "sPar":D
    const/16 v23, 0x0

    :goto_c
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_f

    .line 720
    aget v33, v32, v23

    .line 721
    .restart local v33    # "pj":I
    aget-wide v4, p4, v33

    mul-double v4, v4, v40

    aput-wide v4, p7, v33

    .line 719
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .end local v33    # "pj":I
    :cond_f
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 723
    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D)V

    .line 725
    const-wide/16 v16, 0x0

    .line 726
    const/16 v23, 0x0

    :goto_d
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_10

    .line 727
    aget v33, v32, v23

    .line 728
    .restart local v33    # "pj":I
    aget-wide v4, p4, v33

    aget-wide v6, p10, v33

    mul-double v38, v4, v6

    .line 729
    .restart local v38    # "s":D
    aput-wide v38, p9, v33

    .line 730
    mul-double v4, v38, v38

    add-double v16, v16, v4

    .line 726
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 732
    .end local v33    # "pj":I
    .end local v38    # "s":D
    :cond_10
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 733
    move-wide/from16 v36, v18

    .line 734
    .local v36, "previousFP":D
    sub-double v18, v16, p2

    .line 738
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v6, v6, p2

    cmpg-double v4, v4, v6

    if-lez v4, :cond_11

    const-wide/16 v4, 0x0

    cmpl-double v4, v28, v4

    if-nez v4, :cond_12

    cmpg-double v4, v18, v36

    if-gtz v4, :cond_12

    const-wide/16 v4, 0x0

    cmpg-double v4, v36, v4

    if-gez v4, :cond_12

    :cond_11
    move-wide/from16 v26, p11

    .line 742
    .end local p11    # "lmPar":D
    .restart local v26    # "lmPar":D
    goto/16 :goto_5

    .line 746
    .end local v26    # "lmPar":D
    .restart local p11    # "lmPar":D
    :cond_12
    const/16 v23, 0x0

    :goto_e
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_13

    .line 747
    aget v33, v32, v23

    .line 748
    .restart local v33    # "pj":I
    aget-wide v4, p9, v33

    aget-wide v6, p4, v33

    mul-double/2addr v4, v6

    div-double v4, v4, v16

    aput-wide v4, p7, v33

    .line 746
    add-int/lit8 v23, v23, 0x1

    goto :goto_e

    .line 750
    .end local v33    # "pj":I
    :cond_13
    const/16 v23, 0x0

    :goto_f
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_15

    .line 751
    aget v33, v32, v23

    .line 752
    .restart local v33    # "pj":I
    aget-wide v4, p7, v33

    aget-wide v6, p8, v23

    div-double/2addr v4, v6

    aput-wide v4, p7, v33

    .line 753
    aget-wide v46, p7, v33

    .line 754
    .local v46, "tmp":D
    add-int/lit8 v22, v23, 0x1

    .restart local v22    # "i":I
    :goto_10
    move/from16 v0, v22

    move/from16 v1, p6

    if-ge v0, v1, :cond_14

    .line 755
    aget v4, v32, v22

    aget-wide v6, p7, v4

    aget-object v5, v48, v22

    aget-wide v8, v5, v33

    mul-double v8, v8, v46

    sub-double/2addr v6, v8

    aput-wide v6, p7, v4

    .line 754
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 750
    :cond_14
    add-int/lit8 v23, v23, 0x1

    goto :goto_f

    .line 758
    .end local v22    # "i":I
    .end local v33    # "pj":I
    .end local v46    # "tmp":D
    :cond_15
    const-wide/16 v44, 0x0

    .line 759
    const/16 v23, 0x0

    :goto_11
    move/from16 v0, v23

    move/from16 v1, p6

    if-ge v0, v1, :cond_16

    .line 760
    aget v4, v32, v23

    aget-wide v38, p7, v4

    .line 761
    .restart local v38    # "s":D
    mul-double v4, v38, v38

    add-double v44, v44, v4

    .line 759
    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    .line 763
    .end local v38    # "s":D
    :cond_16
    mul-double v4, p2, v44

    div-double v12, v18, v4

    .line 766
    .local v12, "correction":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v18, v4

    if-lez v4, :cond_18

    .line 767
    move-wide/from16 v0, v28

    move-wide/from16 v2, p11

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    .line 773
    :cond_17
    :goto_12
    add-double v4, p11, v12

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p11

    .line 712
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_b

    .line 768
    :cond_18
    const-wide/16 v4, 0x0

    cmpg-double v4, v18, v4

    if-gez v4, :cond_17

    .line 769
    move-wide/from16 v0, v30

    move-wide/from16 v2, p11

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v30

    goto :goto_12

    .end local v12    # "correction":D
    .end local v36    # "previousFP":D
    .end local v40    # "sPar":D
    :cond_19
    move-wide/from16 v26, p11

    .line 776
    .end local p11    # "lmPar":D
    .restart local v26    # "lmPar":D
    goto/16 :goto_5
.end method

.method private qTy([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)V
    .locals 14
    .param p1, "y"    # [D
    .param p2, "internalData"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 1023
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v9

    .line 1024
    .local v9, "weightedJacobian":[[D
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v7

    .line 1025
    .local v7, "permutation":[I
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->beta:[D
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$500(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v0

    .line 1027
    .local v0, "beta":[D
    array-length v6, v9

    .line 1028
    .local v6, "nR":I
    const/4 v10, 0x0

    aget-object v10, v9, v10

    array-length v5, v10

    .line 1030
    .local v5, "nC":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1031
    aget v8, v7, v4

    .line 1032
    .local v8, "pk":I
    const-wide/16 v2, 0x0

    .line 1033
    .local v2, "gamma":D
    move v1, v4

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 1034
    aget-object v10, v9, v1

    aget-wide v10, v10, v8

    aget-wide v12, p1, v1

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1036
    :cond_0
    aget-wide v10, v0, v8

    mul-double/2addr v2, v10

    .line 1037
    move v1, v4

    :goto_2
    if-ge v1, v6, :cond_1

    .line 1038
    aget-wide v10, p1, v1

    aget-object v12, v9, v1

    aget-wide v12, v12, v8

    mul-double/2addr v12, v2

    sub-double/2addr v10, v12

    aput-wide v10, p1, v1

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1030
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1041
    .end local v1    # "i":I
    .end local v2    # "gamma":D
    .end local v8    # "pk":I
    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .locals 37
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "solvedCols"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 940
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    .line 942
    .local v3, "weightedJacobian":[[D
    array-length v0, v3

    move/from16 v32, v0

    .line 943
    .local v32, "nR":I
    const/4 v2, 0x0

    aget-object v2, v3, v2

    array-length v0, v2

    move/from16 v31, v0

    .line 945
    .local v31, "nC":I
    move/from16 v0, v31

    new-array v4, v0, [I

    .line 946
    .local v4, "permutation":[I
    move/from16 v0, v31

    new-array v6, v0, [D

    .line 947
    .local v6, "diagR":[D
    move/from16 v0, v31

    new-array v7, v0, [D

    .line 948
    .local v7, "jacNorm":[D
    move/from16 v0, v31

    new-array v8, v0, [D

    .line 951
    .local v8, "beta":[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    move/from16 v0, v31

    if-ge v5, v0, :cond_1

    .line 952
    aput v5, v4, v5

    .line 953
    const-wide/16 v34, 0x0

    .line 954
    .local v34, "norm2":D
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 955
    aget-object v2, v3, v27

    aget-wide v20, v2, v5

    .line 956
    .local v20, "akk":D
    mul-double v10, v20, v20

    add-double v34, v34, v10

    .line 954
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 958
    .end local v20    # "akk":D
    :cond_0
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    aput-wide v10, v7, v5

    .line 951
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 962
    .end local v27    # "i":I
    .end local v34    # "norm2":D
    :cond_1
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v31

    if-ge v5, v0, :cond_c

    .line 965
    const/16 v33, -0x1

    .line 966
    .local v33, "nextColumn":I
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 967
    .local v16, "ak2":D
    move/from16 v27, v5

    .restart local v27    # "i":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 968
    const-wide/16 v34, 0x0

    .line 969
    .restart local v34    # "norm2":D
    move/from16 v30, v5

    .local v30, "j":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    .line 970
    aget-object v2, v3, v30

    aget v9, v4, v27

    aget-wide v18, v2, v9

    .line 971
    .local v18, "aki":D
    mul-double v10, v18, v18

    add-double v34, v34, v10

    .line 969
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 973
    .end local v18    # "aki":D
    :cond_2
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 974
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v2, v9, v10}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 977
    :cond_4
    cmpl-double v2, v34, v16

    if-lez v2, :cond_5

    .line 978
    move/from16 v33, v27

    .line 979
    move-wide/from16 v16, v34

    .line 967
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 982
    .end local v30    # "j":I
    .end local v34    # "norm2":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v2, v16, v10

    if-gtz v2, :cond_7

    .line 983
    new-instance v2, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;-><init>([[D[II[D[D[D)V

    .line 1012
    .end local v16    # "ak2":D
    .end local v27    # "i":I
    .end local v33    # "nextColumn":I
    :goto_5
    return-object v2

    .line 985
    .restart local v16    # "ak2":D
    .restart local v27    # "i":I
    .restart local v33    # "nextColumn":I
    :cond_7
    aget v36, v4, v33

    .line 986
    .local v36, "pk":I
    aget v2, v4, v5

    aput v2, v4, v33

    .line 987
    aput v36, v4, v5

    .line 990
    aget-object v2, v3, v5

    aget-wide v20, v2, v36

    .line 991
    .restart local v20    # "akk":D
    const-wide/16 v10, 0x0

    cmpl-double v2, v20, v10

    if-lez v2, :cond_8

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    neg-double v0, v10

    move-wide/from16 v22, v0

    .line 992
    .local v22, "alpha":D
    :goto_6
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v12, v20, v22

    sub-double v12, v16, v12

    div-double v24, v10, v12

    .line 993
    .local v24, "betak":D
    aput-wide v24, v8, v36

    .line 996
    aput-wide v22, v6, v36

    .line 997
    aget-object v2, v3, v5

    aget-wide v10, v2, v36

    sub-double v10, v10, v22

    aput-wide v10, v2, v36

    .line 1000
    add-int/lit8 v2, v31, -0x1

    sub-int v26, v2, v5

    .local v26, "dk":I
    :goto_7
    if-lez v26, :cond_b

    .line 1001
    const-wide/16 v28, 0x0

    .line 1002
    .local v28, "gamma":D
    move/from16 v30, v5

    .restart local v30    # "j":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 1003
    aget-object v2, v3, v30

    aget-wide v10, v2, v36

    aget-object v2, v3, v30

    add-int v9, v5, v26

    aget v9, v4, v9

    aget-wide v12, v2, v9

    mul-double/2addr v10, v12

    add-double v28, v28, v10

    .line 1002
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 991
    .end local v22    # "alpha":D
    .end local v24    # "betak":D
    .end local v26    # "dk":I
    .end local v28    # "gamma":D
    .end local v30    # "j":I
    :cond_8
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    goto :goto_6

    .line 1005
    .restart local v22    # "alpha":D
    .restart local v24    # "betak":D
    .restart local v26    # "dk":I
    .restart local v28    # "gamma":D
    .restart local v30    # "j":I
    :cond_9
    mul-double v28, v28, v24

    .line 1006
    move/from16 v30, v5

    :goto_9
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 1007
    aget-object v2, v3, v30

    add-int v9, v5, v26

    aget v9, v4, v9

    aget-wide v10, v2, v9

    aget-object v12, v3, v30

    aget-wide v12, v12, v36

    mul-double v12, v12, v28

    sub-double/2addr v10, v12

    aput-wide v10, v2, v9

    .line 1006
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 1000
    :cond_a
    add-int/lit8 v26, v26, -0x1

    goto :goto_7

    .line 962
    .end local v28    # "gamma":D
    .end local v30    # "j":I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1012
    .end local v16    # "ak2":D
    .end local v20    # "akk":D
    .end local v22    # "alpha":D
    .end local v24    # "betak":D
    .end local v26    # "dk":I
    .end local v27    # "i":I
    .end local v33    # "nextColumn":I
    .end local v36    # "pk":I
    :cond_c
    new-instance v9, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move-object v10, v3

    move-object v11, v4

    move/from16 v12, p2

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;-><init>([[D[II[D[D[D)V

    move-object v2, v9

    goto/16 :goto_5
.end method


# virtual methods
.method public getCostRelativeTolerance()D
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    return-wide v0
.end method

.method public getInitialStepBoundFactor()D
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    return-wide v0
.end method

.method public getOrthoTolerance()D
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    return-wide v0
.end method

.method public getParameterRelativeTolerance()D
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    return-wide v0
.end method

.method public getRankingThreshold()D
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-wide v0
.end method

.method public optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 86
    .param p1, "problem"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .prologue
    .line 298
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getObservationSize()I

    move-result v48

    .line 299
    .local v48, "nR":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getParameterSize()I

    move-result v43

    .line 301
    .local v43, "nC":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v39

    .line 302
    .local v39, "iterationCounter":Lorg/apache/commons/math3/util/Incrementor;
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v36

    .line 304
    .local v36, "evaluationCounter":Lorg/apache/commons/math3/util/Incrementor;
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v17

    .line 307
    .local v17, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    move/from16 v0, v48

    move/from16 v1, v43

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 309
    .local v10, "solvedCols":I
    move/from16 v0, v43

    new-array v14, v0, [D

    .line 311
    .local v14, "lmDir":[D
    const-wide/16 v15, 0x0

    .line 314
    .local v15, "lmPar":D
    const-wide/16 v6, 0x0

    .line 315
    .local v6, "delta":D
    const-wide/16 v76, 0x0

    .line 316
    .local v76, "xNorm":D
    move/from16 v0, v43

    new-array v8, v0, [D

    .line 317
    .local v8, "diag":[D
    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v50, v0

    .line 318
    .local v50, "oldX":[D
    move/from16 v0, v48

    new-array v0, v0, [D

    move-object/from16 v49, v0

    .line 319
    .local v49, "oldRes":[D
    move/from16 v0, v48

    new-array v5, v0, [D

    .line 320
    .local v5, "qtf":[D
    move/from16 v0, v43

    new-array v11, v0, [D

    .line 321
    .local v11, "work1":[D
    move/from16 v0, v43

    new-array v12, v0, [D

    .line 322
    .local v12, "work2":[D
    move/from16 v0, v43

    new-array v13, v0, [D

    .line 326
    .local v13, "work3":[D
    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 328
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v24

    .line 329
    .local v24, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v28

    .line 330
    .local v28, "currentResiduals":[D
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v26

    .line 331
    .local v26, "currentCost":D
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v25

    .line 334
    .local v25, "currentPoint":[D
    const/16 v37, 0x1

    .line 336
    .local v37, "firstIteration":Z
    :cond_0
    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 338
    move-object/from16 v58, v24

    .line 341
    .local v58, "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move-result-object v9

    .line 343
    .local v9, "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D
    invoke-static {v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v72

    .line 344
    .local v72, "weightedJacobian":[[D
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I
    invoke-static {v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v51

    .line 345
    .local v51, "permutation":[I
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D
    invoke-static {v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v29

    .line 346
    .local v29, "diagR":[D
    # getter for: Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->jacNorm:[D
    invoke-static {v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$300(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v41

    .line 349
    .local v41, "jacNorm":[D
    move-object/from16 v73, v28

    .line 350
    .local v73, "weightedResidual":[D
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_0
    move/from16 v0, v38

    move/from16 v1, v48

    if-ge v0, v1, :cond_1

    .line 351
    aget-wide v80, v73, v38

    aput-wide v80, v5, v38

    .line 350
    add-int/lit8 v38, v38, 0x1

    goto :goto_0

    .line 355
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qTy([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)V

    .line 359
    const/16 v42, 0x0

    .local v42, "k":I
    :goto_1
    move/from16 v0, v42

    if-ge v0, v10, :cond_2

    .line 360
    aget v55, v51, v42

    .line 361
    .local v55, "pk":I
    aget-object v4, v72, v42

    aget-wide v80, v29, v55

    aput-wide v80, v4, v55

    .line 359
    add-int/lit8 v42, v42, 0x1

    goto :goto_1

    .line 364
    .end local v55    # "pk":I
    :cond_2
    if-eqz v37, :cond_5

    .line 367
    const-wide/16 v76, 0x0

    .line 368
    const/16 v42, 0x0

    :goto_2
    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_4

    .line 369
    aget-wide v34, v41, v42

    .line 370
    .local v34, "dk":D
    const-wide/16 v80, 0x0

    cmpl-double v4, v34, v80

    if-nez v4, :cond_3

    .line 371
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    .line 373
    :cond_3
    aget-wide v80, v25, v42

    mul-double v78, v34, v80

    .line 374
    .local v78, "xk":D
    mul-double v80, v78, v78

    add-double v76, v76, v80

    .line 375
    aput-wide v34, v8, v42

    .line 368
    add-int/lit8 v42, v42, 0x1

    goto :goto_2

    .line 377
    .end local v34    # "dk":D
    .end local v78    # "xk":D
    :cond_4
    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v76

    .line 380
    const-wide/16 v80, 0x0

    cmpl-double v4, v76, v80

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 384
    :cond_5
    :goto_3
    const-wide/16 v46, 0x0

    .line 385
    .local v46, "maxCosine":D
    const-wide/16 v80, 0x0

    cmpl-double v4, v26, v80

    if-eqz v4, :cond_9

    .line 386
    const/16 v40, 0x0

    .local v40, "j":I
    :goto_4
    move/from16 v0, v40

    if-ge v0, v10, :cond_9

    .line 387
    aget v54, v51, v40

    .line 388
    .local v54, "pj":I
    aget-wide v66, v41, v54

    .line 389
    .local v66, "s":D
    const-wide/16 v80, 0x0

    cmpl-double v4, v66, v80

    if-eqz v4, :cond_8

    .line 390
    const-wide/16 v68, 0x0

    .line 391
    .local v68, "sum":D
    const/16 v38, 0x0

    :goto_5
    move/from16 v0, v38

    move/from16 v1, v40

    if-gt v0, v1, :cond_7

    .line 392
    aget-object v4, v72, v38

    aget-wide v80, v4, v54

    aget-wide v82, v5, v38

    mul-double v80, v80, v82

    add-double v68, v68, v80

    .line 391
    add-int/lit8 v38, v38, 0x1

    goto :goto_5

    .line 380
    .end local v40    # "j":I
    .end local v46    # "maxCosine":D
    .end local v54    # "pj":I
    .end local v66    # "s":D
    .end local v68    # "sum":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    move-wide/from16 v80, v0

    mul-double v6, v80, v76

    goto :goto_3

    .line 394
    .restart local v40    # "j":I
    .restart local v46    # "maxCosine":D
    .restart local v54    # "pj":I
    .restart local v66    # "s":D
    .restart local v68    # "sum":D
    :cond_7
    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v80

    mul-double v82, v66, v26

    div-double v80, v80, v82

    move-wide/from16 v0, v46

    move-wide/from16 v2, v80

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v46

    .line 386
    .end local v68    # "sum":D
    :cond_8
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 398
    .end local v40    # "j":I
    .end local v54    # "pj":I
    .end local v66    # "s":D
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide/from16 v80, v0

    cmpg-double v4, v46, v80

    if-gtz v4, :cond_a

    .line 400
    new-instance v4, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v80

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v81

    move-object/from16 v0, v24

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    .line 529
    :goto_6
    return-object v4

    .line 407
    :cond_a
    const/16 v40, 0x0

    .restart local v40    # "j":I
    :goto_7
    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 408
    aget-wide v80, v8, v40

    aget-wide v82, v41, v40

    invoke-static/range {v80 .. v83}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v80

    aput-wide v80, v8, v40

    .line 407
    add-int/lit8 v40, v40, 0x1

    goto :goto_7

    .line 412
    :cond_b
    const-wide/16 v64, 0x0

    .local v64, "ratio":D
    :cond_c
    const-wide v80, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v64, v80

    if-gez v4, :cond_0

    .line 415
    const/16 v40, 0x0

    :goto_8
    move/from16 v0, v40

    if-ge v0, v10, :cond_d

    .line 416
    aget v54, v51, v40

    .line 417
    .restart local v54    # "pj":I
    aget-wide v80, v25, v54

    aput-wide v80, v50, v54

    .line 415
    add-int/lit8 v40, v40, 0x1

    goto :goto_8

    .line 419
    .end local v54    # "pj":I
    :cond_d
    move-wide/from16 v60, v26

    .line 420
    .local v60, "previousCost":D
    move-object/from16 v59, v73

    .line 421
    .local v59, "tmpVec":[D
    move-object/from16 v73, v49

    .line 422
    move-object/from16 v49, v59

    move-object/from16 v4, p0

    .line 425
    invoke-direct/range {v4 .. v16}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->determineLMParameter([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D[D[DD)D

    move-result-wide v15

    .line 430
    const-wide/16 v44, 0x0

    .line 431
    .local v44, "lmNorm":D
    const/16 v40, 0x0

    :goto_9
    move/from16 v0, v40

    if-ge v0, v10, :cond_e

    .line 432
    aget v54, v51, v40

    .line 433
    .restart local v54    # "pj":I
    aget-wide v80, v14, v54

    move-wide/from16 v0, v80

    neg-double v0, v0

    move-wide/from16 v80, v0

    aput-wide v80, v14, v54

    .line 434
    aget-wide v80, v50, v54

    aget-wide v82, v14, v54

    add-double v80, v80, v82

    aput-wide v80, v25, v54

    .line 435
    aget-wide v80, v8, v54

    aget-wide v82, v14, v54

    mul-double v66, v80, v82

    .line 436
    .restart local v66    # "s":D
    mul-double v80, v66, v66

    add-double v44, v44, v80

    .line 431
    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    .line 438
    .end local v54    # "pj":I
    .end local v66    # "s":D
    :cond_e
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v44

    .line 440
    if-eqz v37, :cond_f

    .line 441
    move-wide/from16 v0, v44

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 445
    :cond_f
    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 446
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v24

    .line 447
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v28

    .line 448
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v26

    .line 449
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v25

    .line 452
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    .line 453
    .local v18, "actRed":D
    const-wide v80, 0x3fb999999999999aL    # 0.1

    mul-double v80, v80, v26

    cmpg-double v4, v80, v60

    if-gez v4, :cond_10

    .line 454
    div-double v62, v26, v60

    .line 455
    .local v62, "r":D
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    mul-double v82, v62, v62

    sub-double v18, v80, v82

    .line 460
    .end local v62    # "r":D
    :cond_10
    const/16 v40, 0x0

    :goto_a
    move/from16 v0, v40

    if-ge v0, v10, :cond_12

    .line 461
    aget v54, v51, v40

    .line 462
    .restart local v54    # "pj":I
    aget-wide v32, v14, v54

    .line 463
    .local v32, "dirJ":D
    const-wide/16 v80, 0x0

    aput-wide v80, v11, v40

    .line 464
    const/16 v38, 0x0

    :goto_b
    move/from16 v0, v38

    move/from16 v1, v40

    if-gt v0, v1, :cond_11

    .line 465
    aget-wide v80, v11, v38

    aget-object v4, v72, v38

    aget-wide v82, v4, v54

    mul-double v82, v82, v32

    add-double v80, v80, v82

    aput-wide v80, v11, v38

    .line 464
    add-int/lit8 v38, v38, 0x1

    goto :goto_b

    .line 460
    :cond_11
    add-int/lit8 v40, v40, 0x1

    goto :goto_a

    .line 468
    .end local v32    # "dirJ":D
    .end local v54    # "pj":I
    :cond_12
    const-wide/16 v20, 0x0

    .line 469
    .local v20, "coeff1":D
    const/16 v40, 0x0

    :goto_c
    move/from16 v0, v40

    if-ge v0, v10, :cond_13

    .line 470
    aget-wide v80, v11, v40

    aget-wide v82, v11, v40

    mul-double v80, v80, v82

    add-double v20, v20, v80

    .line 469
    add-int/lit8 v40, v40, 0x1

    goto :goto_c

    .line 472
    :cond_13
    mul-double v52, v60, v60

    .line 473
    .local v52, "pc2":D
    div-double v20, v20, v52

    .line 474
    mul-double v80, v15, v44

    mul-double v80, v80, v44

    div-double v22, v80, v52

    .line 475
    .local v22, "coeff2":D
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v22

    add-double v56, v20, v80

    .line 476
    .local v56, "preRed":D
    add-double v80, v20, v22

    move-wide/from16 v0, v80

    neg-double v0, v0

    move-wide/from16 v30, v0

    .line 479
    .local v30, "dirDer":D
    const-wide/16 v80, 0x0

    cmpl-double v4, v56, v80

    if-nez v4, :cond_17

    const-wide/16 v64, 0x0

    .line 482
    :goto_d
    const-wide/high16 v80, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v64, v80

    if-gtz v4, :cond_19

    .line 483
    const-wide/16 v80, 0x0

    cmpg-double v4, v18, v80

    if-gez v4, :cond_18

    const-wide/high16 v80, 0x3fe0000000000000L    # 0.5

    mul-double v80, v80, v30

    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v82, v82, v18

    add-double v82, v82, v30

    div-double v70, v80, v82

    .line 485
    .local v70, "tmp":D
    :goto_e
    const-wide v80, 0x3fb999999999999aL    # 0.1

    mul-double v80, v80, v26

    cmpl-double v4, v80, v60

    if-gez v4, :cond_14

    const-wide v80, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v70, v80

    if-gez v4, :cond_15

    .line 486
    :cond_14
    const-wide v70, 0x3fb999999999999aL    # 0.1

    .line 488
    :cond_15
    const-wide/high16 v80, 0x4024000000000000L    # 10.0

    mul-double v80, v80, v44

    move-wide/from16 v0, v80

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v80

    mul-double v6, v70, v80

    .line 489
    div-double v15, v15, v70

    .line 496
    .end local v70    # "tmp":D
    :cond_16
    :goto_f
    const-wide v80, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v64, v80

    if-ltz v4, :cond_1c

    .line 498
    const/16 v37, 0x0

    .line 499
    const-wide/16 v76, 0x0

    .line 500
    const/16 v42, 0x0

    :goto_10
    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_1b

    .line 501
    aget-wide v80, v8, v42

    aget-wide v82, v25, v42

    mul-double v74, v80, v82

    .line 502
    .local v74, "xK":D
    mul-double v80, v74, v74

    add-double v76, v76, v80

    .line 500
    add-int/lit8 v42, v42, 0x1

    goto :goto_10

    .line 479
    .end local v74    # "xK":D
    :cond_17
    div-double v64, v18, v56

    goto :goto_d

    .line 483
    :cond_18
    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    goto :goto_e

    .line 490
    :cond_19
    const-wide/16 v80, 0x0

    cmpl-double v4, v15, v80

    if-eqz v4, :cond_1a

    const-wide/high16 v80, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v64, v80

    if-ltz v4, :cond_16

    .line 491
    :cond_1a
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v6, v80, v44

    .line 492
    const-wide/high16 v80, 0x3fe0000000000000L    # 0.5

    mul-double v15, v15, v80

    goto :goto_f

    .line 504
    :cond_1b
    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v76

    .line 507
    if-eqz v17, :cond_1e

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v24

    invoke-interface {v0, v4, v1, v2}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 508
    new-instance v4, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v80

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v81

    move-object/from16 v0, v24

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    goto/16 :goto_6

    .line 512
    :cond_1c
    move-wide/from16 v26, v60

    .line 513
    const/16 v40, 0x0

    :goto_11
    move/from16 v0, v40

    if-ge v0, v10, :cond_1d

    .line 514
    aget v54, v51, v40

    .line 515
    .restart local v54    # "pj":I
    aget-wide v80, v50, v54

    aput-wide v80, v25, v54

    .line 513
    add-int/lit8 v40, v40, 0x1

    goto :goto_11

    .line 517
    .end local v54    # "pj":I
    :cond_1d
    move-object/from16 v59, v73

    .line 518
    move-object/from16 v73, v49

    .line 519
    move-object/from16 v49, v59

    .line 521
    move-object/from16 v24, v58

    .line 525
    :cond_1e
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v80

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v82, v0

    cmpg-double v4, v80, v82

    if-gtz v4, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v80, v0

    cmpg-double v4, v56, v80

    if-gtz v4, :cond_1f

    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    cmpg-double v4, v64, v80

    if-lez v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    move-wide/from16 v80, v0

    mul-double v80, v80, v76

    cmpg-double v4, v6, v80

    if-gtz v4, :cond_21

    .line 529
    :cond_20
    new-instance v4, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v80

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v81

    move-object/from16 v0, v24

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    goto/16 :goto_6

    .line 533
    :cond_21
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v80

    sget-wide v82, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v80, v82

    if-gtz v4, :cond_22

    sget-wide v80, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v56, v80

    if-gtz v4, :cond_22

    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    cmpg-double v4, v64, v80

    if-gtz v4, :cond_22

    .line 536
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v80, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v81, 0x1

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    move-wide/from16 v84, v0

    invoke-static/range {v84 .. v85}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v83

    aput-object v83, v81, v82

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 538
    :cond_22
    sget-wide v80, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    mul-double v80, v80, v76

    cmpg-double v4, v6, v80

    if-gtz v4, :cond_23

    .line 539
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v80, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v81, 0x1

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    move-wide/from16 v84, v0

    invoke-static/range {v84 .. v85}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v83

    aput-object v83, v81, v82

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 541
    :cond_23
    sget-wide v80, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v46, v80

    if-gtz v4, :cond_c

    .line 542
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v80, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v81, 0x1

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide/from16 v84, v0

    invoke-static/range {v84 .. v85}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v83

    aput-object v83, v81, v82

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method

.method public withCostRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 13
    .param p1, "newCostRelativeTolerance"    # D

    .prologue
    .line 191
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v10, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v4, p1

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v1
.end method

.method public withInitialStepBoundFactor(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 13
    .param p1, "newInitialStepBoundFactor"    # D

    .prologue
    .line 178
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v10, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v1
.end method

.method public withOrthoTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 13
    .param p1, "newOrthoTolerance"    # D

    .prologue
    .line 221
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v10, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v8, p1

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v1
.end method

.method public withParameterRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 13
    .param p1, "newParRelativeTolerance"    # D

    .prologue
    .line 205
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v10, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v6, p1

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v1
.end method

.method public withRankingThreshold(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 13
    .param p1, "newQRRankingThreshold"    # D

    .prologue
    .line 237
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide v10, p1

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v1
.end method
