.class public Lorg/apache/commons/math3/linear/EigenDecomposition;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/EigenDecomposition$1;,
        Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private final isSymmetric:Z

.field private main:[D

.field private maxIter:B

.field private realEigenvalues:[D

.field private secondary:[D

.field private transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 8
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v3, 0x1e

    iput-byte v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    .line 118
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v4, v3

    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v0, v4, v6

    .line 119
    .local v0, "symTol":D
    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    .line 120
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v3, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 122
    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;

    move-result-object v2

    .line 125
    .local v2, "t":Lorg/apache/commons/math3/linear/SchurTransformer;
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "splitTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 145
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 6
    .param p1, "main"    # [D
    .param p2, "secondary"    # [D

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v3, 0x1e

    iput-byte v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    .line 157
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    .line 158
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 159
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    .line 160
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 161
    array-length v1, p1

    .line 162
    .local v1, "size":I
    filled-new-array {v1, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 163
    .local v2, "z":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 164
    aget-object v3, v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    .line 167
    return-void
.end method

.method public constructor <init>([D[DD)V
    .locals 0
    .param p1, "main"    # [D
    .param p2, "secondary"    # [D
    .param p3, "splitTolerance"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>([D[D)V

    .line 184
    return-void
.end method

.method private cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;
    .locals 3
    .param p1, "xr"    # D
    .param p3, "xi"    # D
    .param p5, "yr"    # D
    .param p7, "yi"    # D

    .prologue
    .line 785
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v1, p5, p6, p7, p8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method private findEigenVectors([[D)V
    .locals 36
    .param p1, "householderMatrix"    # [[D

    .prologue
    .line 593
    invoke-virtual/range {p1 .. p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[D

    .line 594
    .local v27, "z":[[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v15, v0

    .line 595
    .local v15, "n":I
    new-array v0, v15, [D

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 596
    new-array v0, v15, [D

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    .line 597
    new-array v6, v15, [D

    .line 598
    .local v6, "e":[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    add-int/lit8 v30, v15, -0x1

    move/from16 v0, v30

    if-ge v7, v0, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    move-object/from16 v31, v0

    aget-wide v32, v31, v7

    aput-wide v32, v30, v7

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    aput-wide v30, v6, v7

    .line 598
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 602
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    move-object/from16 v32, v0

    add-int/lit8 v33, v15, -0x1

    aget-wide v32, v32, v33

    aput-wide v32, v30, v31

    .line 603
    add-int/lit8 v30, v15, -0x1

    const-wide/16 v32, 0x0

    aput-wide v32, v6, v30

    .line 606
    const-wide/16 v16, 0x0

    .line 607
    .local v16, "maxAbsoluteValue":D
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v15, :cond_3

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpl-double v30, v30, v16

    if-lez v30, :cond_1

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 611
    :cond_1
    aget-wide v30, v6, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpl-double v30, v30, v16

    if-lez v30, :cond_2

    .line 612
    aget-wide v30, v6, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 607
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 616
    :cond_3
    const-wide/16 v30, 0x0

    cmpl-double v30, v16, v30

    if-eqz v30, :cond_6

    .line 617
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    sget-wide v32, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v32, v32, v16

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_4

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    aput-wide v32, v30, v7

    .line 621
    :cond_4
    aget-wide v30, v6, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    sget-wide v32, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v32, v32, v16

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_5

    .line 622
    const-wide/16 v30, 0x0

    aput-wide v30, v6, v7

    .line 617
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 627
    :cond_6
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    if-ge v12, v15, :cond_12

    .line 628
    const/4 v11, 0x0

    .line 631
    .local v11, "its":I
    :cond_7
    move v14, v12

    .local v14, "m":I
    :goto_4
    add-int/lit8 v30, v15, -0x1

    move/from16 v0, v30

    if-ge v14, v0, :cond_8

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v14

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v32, v0

    add-int/lit8 v33, v14, 0x1

    aget-wide v32, v32, v33

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    add-double v4, v30, v32

    .line 634
    .local v4, "delta":D
    aget-wide v30, v6, v14

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    add-double v30, v30, v4

    cmpl-double v30, v30, v4

    if-nez v30, :cond_9

    .line 638
    .end local v4    # "delta":D
    :cond_8
    if-eq v14, v12, :cond_c

    .line 639
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v11, v0, :cond_a

    .line 640
    new-instance v30, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v31, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-direct/range {v30 .. v33}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v30

    .line 631
    .restart local v4    # "delta":D
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 643
    .end local v4    # "delta":D
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v12, 0x1

    aget-wide v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v12

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    aget-wide v34, v6, v12

    mul-double v32, v32, v34

    div-double v20, v30, v32

    .line 645
    .local v20, "q":D
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v32, v20, v20

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    .line 646
    .local v24, "t":D
    const-wide/16 v30, 0x0

    cmpg-double v30, v20, v30

    if-gez v30, :cond_d

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v12

    sub-double v30, v30, v32

    aget-wide v32, v6, v12

    sub-double v34, v20, v24

    div-double v32, v32, v34

    add-double v20, v30, v32

    .line 651
    :goto_5
    const-wide/16 v28, 0x0

    .line 652
    .local v28, "u":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 653
    .local v22, "s":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 655
    .local v2, "c":D
    add-int/lit8 v7, v14, -0x1

    :goto_6
    if-lt v7, v12, :cond_b

    .line 656
    aget-wide v30, v6, v7

    mul-double v18, v22, v30

    .line 657
    .local v18, "p":D
    aget-wide v30, v6, v7

    mul-double v8, v2, v30

    .line 658
    .local v8, "h":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_e

    .line 659
    div-double v2, v20, v18

    .line 660
    mul-double v30, v2, v2

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    .line 661
    add-int/lit8 v30, v7, 0x1

    mul-double v32, v18, v24

    aput-wide v32, v6, v30

    .line 662
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    div-double v22, v30, v24

    .line 663
    mul-double v2, v2, v22

    .line 671
    :goto_7
    add-int/lit8 v30, v7, 0x1

    aget-wide v30, v6, v30

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_f

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x1

    aget-wide v32, v30, v31

    sub-double v32, v32, v28

    aput-wide v32, v30, v31

    .line 673
    const-wide/16 v30, 0x0

    aput-wide v30, v6, v14

    .line 687
    .end local v8    # "h":D
    .end local v18    # "p":D
    :cond_b
    const-wide/16 v30, 0x0

    cmpl-double v30, v24, v30

    if-nez v30, :cond_11

    if-lt v7, v12, :cond_11

    .line 694
    .end local v2    # "c":D
    .end local v20    # "q":D
    .end local v22    # "s":D
    .end local v24    # "t":D
    .end local v28    # "u":D
    :cond_c
    :goto_8
    if-ne v14, v12, :cond_7

    .line 627
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 649
    .restart local v20    # "q":D
    .restart local v24    # "t":D
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v12

    sub-double v30, v30, v32

    aget-wide v32, v6, v12

    add-double v34, v20, v24

    div-double v32, v32, v34

    add-double v20, v30, v32

    goto :goto_5

    .line 665
    .restart local v2    # "c":D
    .restart local v8    # "h":D
    .restart local v18    # "p":D
    .restart local v22    # "s":D
    .restart local v28    # "u":D
    :cond_e
    div-double v22, v18, v20

    .line 666
    mul-double v30, v22, v22

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    .line 667
    add-int/lit8 v30, v7, 0x1

    mul-double v32, v20, v24

    aput-wide v32, v6, v30

    .line 668
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    div-double v2, v30, v24

    .line 669
    mul-double v22, v22, v2

    goto :goto_7

    .line 676
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x1

    aget-wide v30, v30, v31

    sub-double v20, v30, v28

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    sub-double v30, v30, v20

    mul-double v30, v30, v22

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v2

    mul-double v32, v32, v8

    add-double v24, v30, v32

    .line 678
    mul-double v28, v22, v24

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x1

    add-double v32, v20, v28

    aput-wide v32, v30, v31

    .line 680
    mul-double v30, v2, v24

    sub-double v20, v30, v8

    .line 681
    const/4 v10, 0x0

    .local v10, "ia":I
    :goto_9
    if-ge v10, v15, :cond_10

    .line 682
    aget-object v30, v27, v10

    add-int/lit8 v31, v7, 0x1

    aget-wide v18, v30, v31

    .line 683
    aget-object v30, v27, v10

    add-int/lit8 v31, v7, 0x1

    aget-object v32, v27, v10

    aget-wide v32, v32, v7

    mul-double v32, v32, v22

    mul-double v34, v2, v18

    add-double v32, v32, v34

    aput-wide v32, v30, v31

    .line 684
    aget-object v30, v27, v10

    aget-object v31, v27, v10

    aget-wide v32, v31, v7

    mul-double v32, v32, v2

    mul-double v34, v22, v18

    sub-double v32, v32, v34

    aput-wide v32, v30, v7

    .line 681
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 655
    :cond_10
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_6

    .line 690
    .end local v8    # "h":D
    .end local v10    # "ia":I
    .end local v18    # "p":D
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v32, v30, v12

    sub-double v32, v32, v28

    aput-wide v32, v30, v12

    .line 691
    aput-wide v20, v6, v12

    .line 692
    const-wide/16 v30, 0x0

    aput-wide v30, v6, v14

    goto/16 :goto_8

    .line 698
    .end local v2    # "c":D
    .end local v11    # "its":I
    .end local v14    # "m":I
    .end local v20    # "q":D
    .end local v22    # "s":D
    .end local v24    # "t":D
    .end local v28    # "u":D
    :cond_12
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v15, :cond_16

    .line 699
    move v13, v7

    .line 700
    .local v13, "k":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v18, v30, v7

    .line 701
    .restart local v18    # "p":D
    add-int/lit8 v12, v7, 0x1

    :goto_b
    if-ge v12, v15, :cond_14

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v12

    cmpl-double v30, v30, v18

    if-lez v30, :cond_13

    .line 703
    move v13, v12

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v18, v30, v12

    .line 701
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 707
    :cond_14
    if-eq v13, v7, :cond_15

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v31, v0

    aget-wide v32, v31, v7

    aput-wide v32, v30, v13

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aput-wide v18, v30, v7

    .line 710
    const/4 v12, 0x0

    :goto_c
    if-ge v12, v15, :cond_15

    .line 711
    aget-object v30, v27, v12

    aget-wide v18, v30, v7

    .line 712
    aget-object v30, v27, v12

    aget-object v31, v27, v12

    aget-wide v32, v31, v13

    aput-wide v32, v30, v7

    .line 713
    aget-object v30, v27, v12

    aput-wide v18, v30, v13

    .line 710
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 698
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 719
    .end local v13    # "k":I
    .end local v18    # "p":D
    :cond_16
    const-wide/16 v16, 0x0

    .line 720
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v15, :cond_18

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpl-double v30, v30, v16

    if-lez v30, :cond_17

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 720
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 726
    :cond_18
    const-wide/16 v30, 0x0

    cmpl-double v30, v16, v30

    if-eqz v30, :cond_1a

    .line 727
    const/4 v7, 0x0

    :goto_e
    if-ge v7, v15, :cond_1a

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    sget-wide v32, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v32, v32, v16

    cmpg-double v30, v30, v32

    if-gez v30, :cond_19

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    aput-wide v32, v30, v7

    .line 727
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 733
    :cond_1a
    new-array v0, v15, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 734
    new-array v0, v15, [D

    move-object/from16 v26, v0

    .line 735
    .local v26, "tmp":[D
    const/4 v7, 0x0

    :goto_f
    if-ge v7, v15, :cond_1c

    .line 736
    const/4 v12, 0x0

    :goto_10
    if-ge v12, v15, :cond_1b

    .line 737
    aget-object v30, v27, v12

    aget-wide v30, v30, v7

    aput-wide v30, v26, v12

    .line 736
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 739
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v30, v0

    new-instance v31, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v31, v30, v7

    .line 735
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 741
    :cond_1c
    return-void
.end method

.method private findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V
    .locals 60
    .param p1, "schur"    # Lorg/apache/commons/math3/linear/SchurTransformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v40

    .line 797
    .local v40, "matrixT":[[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v39

    .line 799
    .local v39, "matrixP":[[D
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v41, v0

    .line 802
    .local v41, "n":I
    const-wide/16 v2, 0x0

    .line 803
    .local v2, "norm":D
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v41

    if-ge v0, v1, :cond_1

    .line 804
    add-int/lit8 v4, v34, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v36

    .local v36, "j":I
    :goto_1
    move/from16 v0, v36

    move/from16 v1, v41

    if-ge v0, v1, :cond_0

    .line 805
    aget-object v4, v40, v34

    aget-wide v4, v4, v36

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 804
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 803
    :cond_0
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 810
    .end local v36    # "j":I
    :cond_1
    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 811
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 816
    :cond_2
    const-wide/16 v44, 0x0

    .line 817
    .local v44, "r":D
    const-wide/16 v50, 0x0

    .line 818
    .local v50, "s":D
    const-wide/16 v30, 0x0

    .line 820
    .local v30, "z":D
    add-int/lit8 v35, v41, -0x1

    .local v35, "idx":I
    :goto_2
    if-ltz v35, :cond_12

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v42, v4, v35

    .line 822
    .local v42, "p":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v12, v4, v35

    .line 824
    .local v12, "q":D
    const-wide/16 v4, 0x0

    invoke-static {v12, v13, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 826
    move/from16 v38, v35

    .line 827
    .local v38, "l":I
    aget-object v4, v40, v35

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v35

    .line 828
    add-int/lit8 v34, v35, -0x1

    :goto_3
    if-ltz v34, :cond_11

    .line 829
    aget-object v4, v40, v34

    aget-wide v4, v4, v34

    sub-double v10, v4, v42

    .line 830
    .local v10, "w":D
    const-wide/16 v44, 0x0

    .line 831
    move/from16 v36, v38

    .restart local v36    # "j":I
    :goto_4
    move/from16 v0, v36

    move/from16 v1, v35

    if-gt v0, v1, :cond_3

    .line 832
    aget-object v4, v40, v34

    aget-wide v4, v4, v36

    aget-object v6, v40, v36

    aget-wide v6, v6, v35

    mul-double/2addr v4, v6

    add-double v44, v44, v4

    .line 831
    add-int/lit8 v36, v36, 0x1

    goto :goto_4

    .line 834
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v4, v34

    const-wide/16 v6, 0x0

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-gez v4, :cond_5

    .line 835
    move-wide/from16 v30, v10

    .line 836
    move-wide/from16 v50, v44

    .line 828
    :cond_4
    add-int/lit8 v34, v34, -0x1

    goto :goto_3

    .line 838
    :cond_5
    move/from16 v38, v34

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v4, v34

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 840
    const-wide/16 v4, 0x0

    cmpl-double v4, v10, v4

    if-eqz v4, :cond_6

    .line 841
    aget-object v4, v40, v34

    move-wide/from16 v0, v44

    neg-double v6, v0

    div-double/2addr v6, v10

    aput-wide v6, v4, v35

    .line 861
    :goto_5
    aget-object v4, v40, v34

    aget-wide v4, v4, v35

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    .line 862
    .local v54, "t":D
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v4, v4, v54

    mul-double v4, v4, v54

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 863
    move/from16 v36, v34

    :goto_6
    move/from16 v0, v36

    move/from16 v1, v35

    if-gt v0, v1, :cond_4

    .line 864
    aget-object v4, v40, v36

    aget-wide v6, v4, v35

    div-double v6, v6, v54

    aput-wide v6, v4, v35

    .line 863
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    .line 843
    .end local v54    # "t":D
    :cond_6
    aget-object v4, v40, v34

    move-wide/from16 v0, v44

    neg-double v6, v0

    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v8, v2

    div-double/2addr v6, v8

    aput-wide v6, v4, v35

    goto :goto_5

    .line 847
    :cond_7
    aget-object v4, v40, v34

    add-int/lit8 v5, v34, 0x1

    aget-wide v56, v4, v5

    .line 848
    .local v56, "x":D
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    aget-wide v58, v4, v34

    .line 849
    .local v58, "y":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v4, v4, v34

    sub-double v4, v4, v42

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v6, v6, v34

    sub-double v6, v6, v42

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v6, v6, v34

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v8, v8, v34

    mul-double/2addr v6, v8

    add-double v12, v4, v6

    .line 851
    mul-double v4, v56, v50

    mul-double v6, v30, v44

    sub-double/2addr v4, v6

    div-double v54, v4, v12

    .line 852
    .restart local v54    # "t":D
    aget-object v4, v40, v34

    aput-wide v54, v4, v35

    .line 853
    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    .line 854
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    move-wide/from16 v0, v44

    neg-double v6, v0

    mul-double v8, v10, v54

    sub-double/2addr v6, v8

    div-double v6, v6, v56

    aput-wide v6, v4, v35

    goto/16 :goto_5

    .line 856
    :cond_8
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    move-wide/from16 v0, v50

    neg-double v6, v0

    mul-double v8, v58, v54

    sub-double/2addr v6, v8

    div-double v6, v6, v30

    aput-wide v6, v4, v35

    goto/16 :goto_5

    .line 869
    .end local v10    # "w":D
    .end local v36    # "j":I
    .end local v38    # "l":I
    .end local v54    # "t":D
    .end local v56    # "x":D
    .end local v58    # "y":D
    :cond_9
    const-wide/16 v4, 0x0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_11

    .line 871
    add-int/lit8 v38, v35, -0x1

    .line 874
    .restart local v38    # "l":I
    aget-object v4, v40, v35

    add-int/lit8 v5, v35, -0x1

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-int/lit8 v6, v35, -0x1

    aget-object v6, v40, v6

    aget-wide v6, v6, v35

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a

    .line 875
    add-int/lit8 v4, v35, -0x1

    aget-object v4, v40, v4

    add-int/lit8 v5, v35, -0x1

    aget-object v6, v40, v35

    add-int/lit8 v7, v35, -0x1

    aget-wide v6, v6, v7

    div-double v6, v12, v6

    aput-wide v6, v4, v5

    .line 876
    add-int/lit8 v4, v35, -0x1

    aget-object v4, v40, v4

    aget-object v5, v40, v35

    aget-wide v6, v5, v35

    sub-double v6, v6, v42

    neg-double v6, v6

    aget-object v5, v40, v35

    add-int/lit8 v8, v35, -0x1

    aget-wide v8, v5, v8

    div-double/2addr v6, v8

    aput-wide v6, v4, v35

    .line 884
    :goto_7
    aget-object v4, v40, v35

    add-int/lit8 v5, v35, -0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 885
    aget-object v4, v40, v35

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v35

    .line 887
    add-int/lit8 v34, v35, -0x2

    :goto_8
    if-ltz v34, :cond_11

    .line 888
    const-wide/16 v46, 0x0

    .line 889
    .local v46, "ra":D
    const-wide/16 v52, 0x0

    .line 890
    .local v52, "sa":D
    move/from16 v36, v38

    .restart local v36    # "j":I
    :goto_9
    move/from16 v0, v36

    move/from16 v1, v35

    if-gt v0, v1, :cond_b

    .line 891
    aget-object v4, v40, v34

    aget-wide v4, v4, v36

    aget-object v6, v40, v36

    add-int/lit8 v7, v35, -0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double v46, v46, v4

    .line 892
    aget-object v4, v40, v34

    aget-wide v4, v4, v36

    aget-object v6, v40, v36

    aget-wide v6, v6, v35

    mul-double/2addr v4, v6

    add-double v52, v52, v4

    .line 890
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 878
    .end local v36    # "j":I
    .end local v46    # "ra":D
    .end local v52    # "sa":D
    :cond_a
    const-wide/16 v6, 0x0

    add-int/lit8 v4, v35, -0x1

    aget-object v4, v40, v4

    aget-wide v4, v4, v35

    neg-double v8, v4

    add-int/lit8 v4, v35, -0x1

    aget-object v4, v40, v4

    add-int/lit8 v5, v35, -0x1

    aget-wide v4, v4, v5

    sub-double v10, v4, v42

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v48

    .line 880
    .local v48, "result":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v4, v35, -0x1

    aget-object v4, v40, v4

    add-int/lit8 v5, v35, -0x1

    invoke-virtual/range {v48 .. v48}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 881
    add-int/lit8 v4, v35, -0x1

    aget-object v4, v40, v4

    invoke-virtual/range {v48 .. v48}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v6

    aput-wide v6, v4, v35

    goto :goto_7

    .line 894
    .end local v48    # "result":Lorg/apache/commons/math3/complex/Complex;
    .restart local v36    # "j":I
    .restart local v46    # "ra":D
    .restart local v52    # "sa":D
    :cond_b
    aget-object v4, v40, v34

    aget-wide v4, v4, v34

    sub-double v10, v4, v42

    .line 896
    .restart local v10    # "w":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v4, v34

    const-wide/16 v6, 0x0

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-gez v4, :cond_d

    .line 897
    move-wide/from16 v30, v10

    .line 898
    move-wide/from16 v44, v46

    .line 899
    move-wide/from16 v50, v52

    .line 887
    :cond_c
    add-int/lit8 v34, v34, -0x1

    goto :goto_8

    .line 901
    :cond_d
    move/from16 v38, v34

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v4, v34

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 903
    move-wide/from16 v0, v46

    neg-double v6, v0

    move-wide/from16 v0, v52

    neg-double v8, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v14

    .line 904
    .local v14, "c":Lorg/apache/commons/math3/complex/Complex;
    aget-object v4, v40, v34

    add-int/lit8 v5, v35, -0x1

    invoke-virtual {v14}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 905
    aget-object v4, v40, v34

    invoke-virtual {v14}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v6

    aput-wide v6, v4, v35

    .line 937
    :goto_a
    aget-object v4, v40, v34

    add-int/lit8 v5, v35, -0x1

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aget-object v6, v40, v34

    aget-wide v6, v6, v35

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v54

    .line 939
    .restart local v54    # "t":D
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v4, v4, v54

    mul-double v4, v4, v54

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_c

    .line 940
    move/from16 v36, v34

    :goto_b
    move/from16 v0, v36

    move/from16 v1, v35

    if-gt v0, v1, :cond_c

    .line 941
    aget-object v4, v40, v36

    add-int/lit8 v5, v35, -0x1

    aget-wide v6, v4, v5

    div-double v6, v6, v54

    aput-wide v6, v4, v5

    .line 942
    aget-object v4, v40, v36

    aget-wide v6, v4, v35

    div-double v6, v6, v54

    aput-wide v6, v4, v35

    .line 940
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 908
    .end local v14    # "c":Lorg/apache/commons/math3/complex/Complex;
    .end local v54    # "t":D
    :cond_e
    aget-object v4, v40, v34

    add-int/lit8 v5, v34, 0x1

    aget-wide v56, v4, v5

    .line 909
    .restart local v56    # "x":D
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    aget-wide v58, v4, v34

    .line 910
    .restart local v58    # "y":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v4, v4, v34

    sub-double v4, v4, v42

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v6, v6, v34

    sub-double v6, v6, v42

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v6, v6, v34

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v8, v8, v34

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double v6, v12, v12

    sub-double v20, v4, v6

    .line 912
    .local v20, "vr":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v4, v4, v34

    sub-double v4, v4, v42

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    mul-double v22, v4, v12

    .line 913
    .local v22, "vi":D
    const-wide/16 v4, 0x0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_f

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 914
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v4, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static/range {v58 .. v59}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double v20, v4, v6

    .line 918
    :cond_f
    mul-double v4, v56, v44

    mul-double v6, v30, v46

    sub-double/2addr v4, v6

    mul-double v6, v12, v52

    add-double v16, v4, v6

    mul-double v4, v56, v50

    mul-double v6, v30, v52

    sub-double/2addr v4, v6

    mul-double v6, v12, v46

    sub-double v18, v4, v6

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v23}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v14

    .line 920
    .restart local v14    # "c":Lorg/apache/commons/math3/complex/Complex;
    aget-object v4, v40, v34

    add-int/lit8 v5, v35, -0x1

    invoke-virtual {v14}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 921
    aget-object v4, v40, v34

    invoke-virtual {v14}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v6

    aput-wide v6, v4, v35

    .line 923
    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_10

    .line 924
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    add-int/lit8 v5, v35, -0x1

    move-wide/from16 v0, v46

    neg-double v6, v0

    aget-object v8, v40, v34

    add-int/lit8 v9, v35, -0x1

    aget-wide v8, v8, v9

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aget-object v8, v40, v34

    aget-wide v8, v8, v35

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    div-double v6, v6, v56

    aput-wide v6, v4, v5

    .line 926
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    move-wide/from16 v0, v52

    neg-double v6, v0

    aget-object v5, v40, v34

    aget-wide v8, v5, v35

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aget-object v5, v40, v34

    add-int/lit8 v8, v35, -0x1

    aget-wide v8, v5, v8

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    div-double v6, v6, v56

    aput-wide v6, v4, v35

    goto/16 :goto_a

    .line 929
    :cond_10
    move-wide/from16 v0, v44

    neg-double v4, v0

    aget-object v6, v40, v34

    add-int/lit8 v7, v35, -0x1

    aget-wide v6, v6, v7

    mul-double v6, v6, v58

    sub-double v26, v4, v6

    move-wide/from16 v0, v50

    neg-double v4, v0

    aget-object v6, v40, v34

    aget-wide v6, v6, v35

    mul-double v6, v6, v58

    sub-double v28, v4, v6

    move-object/from16 v25, p0

    move-wide/from16 v32, v12

    invoke-direct/range {v25 .. v33}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v24

    .line 931
    .local v24, "c2":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    add-int/lit8 v5, v35, -0x1

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 932
    add-int/lit8 v4, v34, 0x1

    aget-object v4, v40, v4

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v6

    aput-wide v6, v4, v35

    goto/16 :goto_a

    .line 820
    .end local v10    # "w":D
    .end local v14    # "c":Lorg/apache/commons/math3/complex/Complex;
    .end local v20    # "vr":D
    .end local v22    # "vi":D
    .end local v24    # "c2":Lorg/apache/commons/math3/complex/Complex;
    .end local v36    # "j":I
    .end local v38    # "l":I
    .end local v46    # "ra":D
    .end local v52    # "sa":D
    .end local v56    # "x":D
    .end local v58    # "y":D
    :cond_11
    add-int/lit8 v35, v35, -0x1

    goto/16 :goto_2

    .line 951
    .end local v12    # "q":D
    .end local v42    # "p":D
    :cond_12
    add-int/lit8 v36, v41, -0x1

    .restart local v36    # "j":I
    :goto_c
    if-ltz v36, :cond_15

    .line 952
    const/16 v34, 0x0

    :goto_d
    add-int/lit8 v4, v41, -0x1

    move/from16 v0, v34

    if-gt v0, v4, :cond_14

    .line 953
    const-wide/16 v30, 0x0

    .line 954
    const/16 v37, 0x0

    .local v37, "k":I
    :goto_e
    add-int/lit8 v4, v41, -0x1

    move/from16 v0, v36

    invoke-static {v0, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move/from16 v0, v37

    if-gt v0, v4, :cond_13

    .line 955
    aget-object v4, v39, v34

    aget-wide v4, v4, v37

    aget-object v6, v40, v37

    aget-wide v6, v6, v36

    mul-double/2addr v4, v6

    add-double v30, v30, v4

    .line 954
    add-int/lit8 v37, v37, 0x1

    goto :goto_e

    .line 957
    :cond_13
    aget-object v4, v39, v34

    aput-wide v30, v4, v36

    .line 952
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    .line 951
    .end local v37    # "k":I
    :cond_14
    add-int/lit8 v36, v36, -0x1

    goto :goto_c

    .line 961
    :cond_15
    move/from16 v0, v41

    new-array v4, v0, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 962
    move/from16 v0, v41

    new-array v0, v0, [D

    move-object/from16 v49, v0

    .line 963
    .local v49, "tmp":[D
    const/16 v34, 0x0

    :goto_f
    move/from16 v0, v34

    move/from16 v1, v41

    if-ge v0, v1, :cond_17

    .line 964
    const/16 v36, 0x0

    :goto_10
    move/from16 v0, v36

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    .line 965
    aget-object v4, v39, v36

    aget-wide v4, v4, v34

    aput-wide v4, v49, v36

    .line 964
    add-int/lit8 v36, v36, 0x1

    goto :goto_10

    .line 967
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v49

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v5, v4, v34

    .line 963
    add-int/lit8 v34, v34, 0x1

    goto :goto_f

    .line 969
    :cond_17
    return-void
.end method

.method private transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;
    .locals 18
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 750
    new-instance v12, Lorg/apache/commons/math3/linear/SchurTransformer;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/apache/commons/math3/linear/SchurTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 751
    .local v12, "schurTransform":Lorg/apache/commons/math3/linear/SchurTransformer;
    invoke-virtual {v12}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v9

    .line 753
    .local v9, "matT":[[D
    array-length v2, v9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 754
    array-length v2, v9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    .line 756
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v2, v2

    if-ge v8, v2, :cond_2

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v8, v2, :cond_0

    add-int/lit8 v2, v8, 0x1

    aget-object v2, v9, v2

    aget-wide v2, v2, v8

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-object v3, v9, v8

    aget-wide v4, v3, v8

    aput-wide v4, v2, v8

    .line 756
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 761
    :cond_1
    add-int/lit8 v2, v8, 0x1

    aget-object v2, v9, v2

    add-int/lit8 v3, v8, 0x1

    aget-wide v14, v2, v3

    .line 762
    .local v14, "x":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    aget-object v4, v9, v8

    aget-wide v4, v4, v8

    sub-double/2addr v4, v14

    mul-double v10, v2, v4

    .line 763
    .local v10, "p":D
    mul-double v2, v10, v10

    add-int/lit8 v4, v8, 0x1

    aget-object v4, v9, v4

    aget-wide v4, v4, v8

    aget-object v6, v9, v8

    add-int/lit8 v7, v8, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 764
    .local v16, "z":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-double v4, v14, v10

    aput-wide v4, v2, v8

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aput-wide v16, v2, v8

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v3, v8, 0x1

    add-double v4, v14, v10

    aput-wide v4, v2, v3

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    add-int/lit8 v3, v8, 0x1

    move-wide/from16 v0, v16

    neg-double v4, v0

    aput-wide v4, v2, v3

    .line 768
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 771
    .end local v10    # "p":D
    .end local v14    # "x":D
    .end local v16    # "z":D
    :cond_2
    return-object v12
.end method

.method private transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 581
    new-instance v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 582
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getMainDiagonalRef()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 583
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getSecondaryDiagonalRef()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    .line 584
    return-void
.end method


# virtual methods
.method public getD()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .prologue
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    const-wide/16 v2, 0x0

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 226
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v0, v0, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v1, v6, 0x1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v8, v7, v6

    invoke-interface {v0, v6, v1, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 226
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v0, v0, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v0

    if-gez v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v1, v6, -0x1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v8, v7, v6

    invoke-interface {v0, v6, v1, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    goto :goto_1

    .line 234
    .end local v6    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getDeterminant()D
    .locals 7

    .prologue
    .line 356
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 357
    .local v2, "determinant":D
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .local v0, "arr$":[D
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_0

    aget-wide v4, v0, v1

    .line 358
    .local v4, "lambda":D
    mul-double/2addr v2, v4

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v4    # "lambda":D
    :cond_0
    return-wide v2
.end method

.method public getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public getImagEigenvalue(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getImagEigenvalues()[D
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getRealEigenvalue(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getRealEigenvalues()[D
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->hasComplexEigenvalues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0

    .line 408
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V

    return-object v0
.end method

.method public getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .prologue
    .line 374
    iget-boolean v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-nez v7, :cond_0

    .line 375
    new-instance v7, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v7}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v7

    .line 378
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v7, v7

    new-array v4, v7, [D

    .line 379
    .local v4, "sqrtEigenValues":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 380
    iget-object v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v0, v7, v2

    .line 381
    .local v0, "eigen":D
    const-wide/16 v8, 0x0

    cmpg-double v7, v0, v8

    if-gtz v7, :cond_1

    .line 382
    new-instance v7, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v7}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v7

    .line 384
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v4, v2

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "eigen":D
    :cond_2
    invoke-static {v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 387
    .local v3, "sqrtEigen":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 388
    .local v5, "v":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 390
    .local v6, "vT":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v5, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    return-object v7
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .prologue
    .line 198
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v1, v2

    .line 200
    .local v1, "m":I
    invoke-static {v1, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 201
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 202
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v0

    invoke-interface {v2, v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "k":I
    .end local v1    # "m":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v2
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .prologue
    .line 249
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v1, v2

    .line 251
    .local v1, "m":I
    invoke-static {v1, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 252
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 253
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v0

    invoke-interface {v2, v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "k":I
    .end local v1    # "m":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v2
.end method

.method public hasComplexEigenvalues()Z
    .locals 7

    .prologue
    .line 271
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 272
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 276
    :goto_1
    return v0

    .line 271
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
