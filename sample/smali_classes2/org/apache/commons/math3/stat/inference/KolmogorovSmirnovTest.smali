.class public Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovTest.java"


# static fields
.field protected static final KS_SUM_CAUCHY_CRITERION:D = 1.0E-20

.field protected static final LARGE_SAMPLE_PRODUCT:I = 0x2710

.field protected static final MAXIMUM_PARTIAL_SUM_COUNT:I = 0x186a0

.field protected static final MONTE_CARLO_ITERATIONS:I = 0xf4240

.field protected static final PG_SUM_RELATIVE_ERROR:D = 1.0E-10

.field protected static final SMALL_SAMPLE_PRODUCT:I = 0xc8


# instance fields
.field private final rng:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 157
    return-void
.end method

.method private checkArray([D)V
    .locals 6
    .param p1, "array"    # [D

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 815
    if-nez p1, :cond_0

    .line 816
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 818
    :cond_0
    array-length v0, p1

    if-ge v0, v4, :cond_1

    .line 819
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 822
    :cond_1
    return-void
.end method

.method private copyPartition([D[D[III)V
    .locals 8
    .param p1, "nSet"    # [D
    .param p2, "mSet"    # [D
    .param p3, "nSetI"    # [I
    .param p4, "n"    # I
    .param p5, "m"    # I

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 989
    .local v1, "j":I
    const/4 v3, 0x0

    .line 990
    .local v3, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    add-int v5, p4, p5

    if-ge v0, v5, :cond_1

    .line 991
    if-ge v2, p4, :cond_0

    aget v5, p3, v2

    if-ne v5, v0, :cond_0

    .line 992
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    int-to-double v6, v0

    aput-wide v6, p1, v2

    move v3, v4

    .line 990
    .end local v4    # "k":I
    .restart local v3    # "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 994
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    int-to-double v6, v0

    aput-wide v6, p2, v4

    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_1

    .line 997
    .end local v1    # "j":I
    .end local v3    # "k":I
    .restart local v2    # "j":I
    .restart local v4    # "k":I
    :cond_1
    return-void
.end method

.method private createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .prologue
    .line 651
    move/from16 v0, p3

    int-to-double v6, v0

    mul-double v6, v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v15, v6

    .line 652
    .local v15, "k":I
    mul-int/lit8 v6, v15, 0x2

    add-int/lit8 v16, v6, -0x1

    .line 653
    .local v16, "m":I
    int-to-double v6, v15

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, p1

    sub-double v4, v6, v18

    .line 654
    .local v4, "hDouble":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    .line 655
    new-instance v6, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v6, v7, v8, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v6

    .line 657
    :cond_0
    const/4 v3, 0x0

    .line 659
    .local v3, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :try_start_0
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    const-wide v6, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v16

    filled-new-array {v0, v1}, [I

    move-result-object v6

    const-class v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 672
    .local v2, "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 673
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 674
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_1

    .line 675
    aget-object v6, v2, v13

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v14

    .line 673
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 660
    .end local v2    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v13    # "i":I
    .end local v14    # "j":I
    :catch_0
    move-exception v9

    .line 662
    .local v9, "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    :try_start_1
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 663
    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_1
    move-exception v10

    .line 664
    .local v10, "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 677
    .end local v9    # "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .end local v10    # "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .restart local v2    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    :cond_1
    aget-object v6, v2, v13

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v14

    goto :goto_3

    .line 672
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 686
    .end local v14    # "j":I
    :cond_3
    move/from16 v0, v16

    new-array v12, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 687
    .local v12, "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v6, 0x0

    aput-object v3, v12, v6

    .line 688
    const/4 v13, 0x1

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 689
    add-int/lit8 v6, v13, -0x1

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v12, v13

    .line 688
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 695
    :cond_4
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 696
    aget-object v6, v2, v13

    const/4 v7, 0x0

    aget-object v8, v2, v13

    const/16 v17, 0x0

    aget-object v8, v8, v17

    aget-object v17, v12, v13

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v6, v7

    .line 697
    add-int/lit8 v6, v16, -0x1

    aget-object v6, v2, v6

    add-int/lit8 v7, v16, -0x1

    aget-object v7, v2, v7

    aget-object v7, v7, v13

    sub-int v8, v16, v13

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v12, v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v13

    .line 695
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 704
    :cond_5
    sget-object v6, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 705
    add-int/lit8 v6, v16, -0x1

    aget-object v6, v2, v6

    const/4 v7, 0x0

    add-int/lit8 v8, v16, -0x1

    aget-object v8, v2, v8

    const/16 v17, 0x0

    aget-object v8, v8, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v6, v7

    .line 716
    :cond_6
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 717
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_7
    add-int/lit8 v6, v13, 0x1

    if-ge v14, v6, :cond_8

    .line 718
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_7

    .line 719
    const/4 v11, 0x2

    .local v11, "g":I
    :goto_8
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-gt v11, v6, :cond_7

    .line 720
    aget-object v6, v2, v13

    aget-object v7, v2, v13

    aget-object v7, v7, v14

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v14

    .line 719
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 717
    .end local v11    # "g":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 716
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 725
    .end local v14    # "j":I
    :cond_9
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object v6
.end method

.method private createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 740
    move/from16 v0, p3

    int-to-double v12, v0

    mul-double v12, v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 741
    .local v9, "k":I
    mul-int/lit8 v11, v9, 0x2

    add-int/lit8 v10, v11, -0x1

    .line 742
    .local v10, "m":I
    int-to-double v12, v9

    move/from16 v0, p3

    int-to-double v14, v0

    mul-double v14, v14, p1

    sub-double v4, v12, v14

    .line 743
    .local v4, "h":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v4, v12

    if-ltz v11, :cond_0

    .line 744
    new-instance v11, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v11

    .line 746
    :cond_0
    filled-new-array {v10, v10}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 751
    .local v2, "Hdata":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_3

    .line 752
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 753
    sub-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    if-gez v11, :cond_1

    .line 754
    aget-object v11, v2, v7

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v8

    .line 752
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 756
    :cond_1
    aget-object v11, v2, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v11, v8

    goto :goto_2

    .line 751
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 765
    .end local v8    # "j":I
    :cond_3
    new-array v6, v10, [D

    .line 766
    .local v6, "hPowers":[D
    const/4 v11, 0x0

    aput-wide v4, v6, v11

    .line 767
    const/4 v7, 0x1

    :goto_3
    if-ge v7, v10, :cond_4

    .line 768
    add-int/lit8 v11, v7, -0x1

    aget-wide v12, v6, v11

    mul-double/2addr v12, v4

    aput-wide v12, v6, v7

    .line 767
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 774
    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_5

    .line 775
    aget-object v11, v2, v7

    const/4 v12, 0x0

    aget-object v13, v2, v7

    const/4 v14, 0x0

    aget-wide v14, v13, v14

    aget-wide v16, v6, v7

    sub-double v14, v14, v16

    aput-wide v14, v11, v12

    .line 776
    add-int/lit8 v11, v10, -0x1

    aget-object v11, v2, v11

    aget-wide v12, v11, v7

    sub-int v14, v10, v7

    add-int/lit8 v14, v14, -0x1

    aget-wide v14, v6, v14

    sub-double/2addr v12, v14

    aput-wide v12, v11, v7

    .line 774
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 783
    :cond_5
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v11

    if-lez v11, :cond_6

    .line 784
    add-int/lit8 v11, v10, -0x1

    aget-object v11, v2, v11

    const/4 v12, 0x0

    aget-wide v14, v11, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v16

    add-double v14, v14, v16

    aput-wide v14, v11, v12

    .line 795
    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v10, :cond_9

    .line 796
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_6
    add-int/lit8 v11, v7, 0x1

    if-ge v8, v11, :cond_8

    .line 797
    sub-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_7

    .line 798
    const/4 v3, 0x2

    .local v3, "g":I
    :goto_7
    sub-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    if-gt v3, v11, :cond_7

    .line 799
    aget-object v11, v2, v7

    aget-wide v12, v11, v8

    int-to-double v14, v3

    div-double/2addr v12, v14

    aput-wide v12, v11, v8

    .line 798
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 796
    .end local v3    # "g":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 795
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 804
    .end local v8    # "j":I
    :cond_9
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    return-object v11
.end method

.method private exactK(DI)D
    .locals 9
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 455
    int-to-double v6, p3

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 457
    .local v3, "k":I
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 458
    .local v0, "H":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-interface {v0, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 460
    .local v1, "Hpower":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 462
    .local v4, "pFrac":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 463
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v5, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_0
    const/16 v5, 0x14

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    return-wide v6
.end method

.method private roundedK(DI)D
    .locals 11
    .param p1, "d"    # D
    .param p3, "n"    # I

    .prologue
    .line 483
    int-to-double v6, p3

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 484
    .local v3, "k":I
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 485
    .local v0, "H":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0, p3}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 487
    .local v1, "Hpower":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 488
    .local v4, "pFrac":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 489
    int-to-double v6, v2

    int-to-double v8, p3

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public approximateP(DII)D
    .locals 17
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I

    .prologue
    .line 927
    move/from16 v0, p4

    int-to-double v10, v0

    .line 928
    .local v10, "dm":D
    move/from16 v0, p3

    int-to-double v12, v0

    .line 929
    .local v12, "dn":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v2, v10, v12

    add-double v4, v10, v12

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v4, p1, v2

    const-wide v6, 0x3bc79ca10c924223L    # 1.0E-20

    const v8, 0x186a0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->ksSum(DDI)D

    move-result-wide v2

    sub-double v2, v14, v2

    return-wide v2
.end method

.method public cdf(DI)D
    .locals 3
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public cdf(DIZ)D
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 413
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v6, v12, v14

    .line 414
    .local v6, "ninv":D
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v8, v12, v6

    .line 416
    .local v8, "ninvhalf":D
    cmpg-double v5, p1, v8

    if-gtz v5, :cond_1

    .line 417
    const-wide/16 v10, 0x0

    .line 437
    :cond_0
    :goto_0
    return-wide v10

    .line 418
    :cond_1
    cmpg-double v5, v8, p1

    if-gez v5, :cond_2

    cmpg-double v5, p1, v6

    if-gtz v5, :cond_2

    .line 419
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 420
    .local v10, "res":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, p1

    sub-double v2, v12, v6

    .line 422
    .local v2, "f":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    move/from16 v0, p3

    if-gt v4, v0, :cond_0

    .line 423
    int-to-double v12, v4

    mul-double/2addr v12, v2

    mul-double/2addr v10, v12

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 426
    .end local v2    # "f":D
    .end local v4    # "i":I
    .end local v10    # "res":D
    :cond_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v6

    cmpg-double v5, v12, p1

    if-gtz v5, :cond_3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, p1, v12

    if-gez v5, :cond_3

    .line 427
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, p1

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v10, v12, v14

    goto :goto_0

    .line 428
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v12, p1

    if-gtz v5, :cond_4

    .line 429
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 431
    :cond_4
    if-eqz p4, :cond_5

    .line 432
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactK(DI)D

    move-result-wide v10

    goto :goto_0

    .line 434
    :cond_5
    const/16 v5, 0x8c

    move/from16 v0, p3

    if-gt v0, v5, :cond_6

    .line 435
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->roundedK(DI)D

    move-result-wide v10

    goto :goto_0

    .line 437
    :cond_6
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->pelzGood(DI)D

    move-result-wide v10

    goto :goto_0
.end method

.method public cdfExact(DI)D
    .locals 3
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public exactP(DIIZ)D
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "strict"    # Z

    .prologue
    .line 881
    add-int v13, p3, p4

    move/from16 v0, p3

    invoke-static {v13, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->combinationsIterator(II)Ljava/util/Iterator;

    move-result-object v2

    .line 882
    .local v2, "combinationsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[I>;"
    const-wide/16 v14, 0x0

    .line 883
    .local v14, "tail":J
    move/from16 v0, p3

    new-array v11, v0, [D

    .line 884
    .local v11, "nSet":[D
    move/from16 v0, p4

    new-array v10, v0, [D

    .line 885
    .local v10, "mSet":[D
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 887
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 889
    .local v12, "nSetI":[I
    const/4 v6, 0x0

    .line 890
    .local v6, "j":I
    const/4 v8, 0x0

    .line 891
    .local v8, "k":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v9, v8

    .end local v8    # "k":I
    .local v9, "k":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    :goto_1
    add-int v13, p3, p4

    if-ge v3, v13, :cond_2

    .line 892
    move/from16 v0, p3

    if-ge v7, v0, :cond_1

    aget v13, v12, v7

    if-ne v13, v3, :cond_1

    .line 893
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    int-to-double v0, v3

    move-wide/from16 v16, v0

    aput-wide v16, v11, v7

    move v8, v9

    .line 891
    .end local v9    # "k":I
    .restart local v8    # "k":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .line 895
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    int-to-double v0, v3

    move-wide/from16 v16, v0

    aput-wide v16, v10, v9

    move v6, v7

    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_2

    .line 898
    .end local v6    # "j":I
    .end local v8    # "k":I
    .restart local v7    # "j":I
    .restart local v9    # "k":I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v4

    .line 899
    .local v4, "curD":D
    cmpl-double v13, v4, p1

    if-lez v13, :cond_3

    .line 900
    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    goto :goto_0

    .line 901
    :cond_3
    cmpl-double v13, v4, p1

    if-nez v13, :cond_0

    if-nez p5, :cond_0

    .line 902
    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    goto :goto_0

    .line 905
    .end local v3    # "i":I
    .end local v4    # "curD":D
    .end local v7    # "j":I
    .end local v9    # "k":I
    .end local v12    # "nSetI":[I
    :cond_4
    long-to-double v0, v14

    move-wide/from16 v16, v0

    add-int v13, p3, p4

    move/from16 v0, p3

    invoke-static {v13, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    return-wide v16
.end method

.method public kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 18
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D

    .prologue
    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 192
    move-object/from16 v0, p2

    array-length v8, v0

    .line 193
    .local v8, "n":I
    int-to-double v10, v8

    .line 194
    .local v10, "nd":D
    new-array v6, v8, [D

    .line 195
    .local v6, "dataCopy":[D
    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v9, v6, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    invoke-static {v6}, Ljava/util/Arrays;->sort([D)V

    .line 197
    const-wide/16 v4, 0x0

    .line 198
    .local v4, "d":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v8, :cond_1

    .line 199
    add-int/lit8 v9, v7, -0x1

    aget-wide v14, v6, v9

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v12

    .line 200
    .local v12, "yi":D
    add-int/lit8 v9, v7, -0x1

    int-to-double v14, v9

    div-double/2addr v14, v10

    sub-double v14, v12, v14

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v16, v16, v10

    sub-double v16, v16, v12

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 201
    .local v2, "currD":D
    cmpl-double v9, v2, v4

    if-lez v9, :cond_0

    .line 202
    move-wide v4, v2

    .line 198
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "currD":D
    .end local v12    # "yi":D
    :cond_1
    return-wide v4
.end method

.method public kolmogorovSmirnovStatistic([D[D)D
    .locals 22
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    .line 287
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 290
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v11

    .line 291
    .local v11, "sx":[D
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v14

    .line 292
    .local v14, "sy":[D
    invoke-static {v11}, Ljava/util/Arrays;->sort([D)V

    .line 293
    invoke-static {v14}, Ljava/util/Arrays;->sort([D)V

    .line 294
    array-length v10, v11

    .line 295
    .local v10, "n":I
    array-length v9, v14

    .line 298
    .local v9, "m":I
    const-wide/16 v12, 0x0

    .line 300
    .local v12, "supD":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_2

    .line 301
    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v2, v18, v20

    .line 302
    .local v2, "cdf_x":D
    aget-wide v18, v11, v8

    move-wide/from16 v0, v18

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v16

    .line 303
    .local v16, "yIndex":I
    if-ltz v16, :cond_1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    int-to-double v0, v9

    move-wide/from16 v20, v0

    div-double v4, v18, v20

    .line 304
    .local v4, "cdf_y":D
    :goto_1
    sub-double v18, v2, v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 305
    .local v6, "curD":D
    cmpl-double v17, v6, v12

    if-lez v17, :cond_0

    .line 306
    move-wide v12, v6

    .line 300
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 303
    .end local v4    # "cdf_y":D
    .end local v6    # "curD":D
    :cond_1
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    int-to-double v0, v9

    move-wide/from16 v20, v0

    div-double v4, v18, v20

    goto :goto_1

    .line 310
    .end local v2    # "cdf_x":D
    .end local v16    # "yIndex":I
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_5

    .line 311
    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    int-to-double v0, v9

    move-wide/from16 v20, v0

    div-double v4, v18, v20

    .line 312
    .restart local v4    # "cdf_y":D
    aget-wide v18, v14, v8

    move-wide/from16 v0, v18

    invoke-static {v11, v0, v1}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v15

    .line 313
    .local v15, "xIndex":I
    if-ltz v15, :cond_4

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v2, v18, v20

    .line 314
    .restart local v2    # "cdf_x":D
    :goto_3
    sub-double v18, v2, v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 315
    .restart local v6    # "curD":D
    cmpl-double v17, v6, v12

    if-lez v17, :cond_3

    .line 316
    move-wide v12, v6

    .line 310
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 313
    .end local v2    # "cdf_x":D
    .end local v6    # "curD":D
    :cond_4
    neg-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v2, v18, v20

    goto :goto_3

    .line 319
    .end local v4    # "cdf_y":D
    .end local v15    # "xIndex":I
    :cond_5
    return-wide v12
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 2
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 5
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D
    .param p3, "exact"    # Z

    .prologue
    .line 175
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v2

    array-length v4, p2

    invoke-virtual {p0, v2, v3, v4, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[D)D
    .locals 2
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[DZ)D
    .locals 10
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "strict"    # Z

    .prologue
    .line 243
    array-length v0, p1

    int-to-long v0, v0

    array-length v2, p2

    int-to-long v2, v2

    mul-long v8, v0, v2

    .line 244
    .local v8, "lengthProduct":J
    const-wide/16 v0, 0xc8

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v2

    array-length v4, p1

    array-length v5, p2

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide v0

    .line 250
    :goto_0
    return-wide v0

    .line 247
    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long v0, v8, v0

    if-gez v0, :cond_1

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v2

    array-length v4, p1

    array-length v5, p2

    const v7, 0xf4240

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->monteCarloP(DIIZI)D

    move-result-wide v0

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v0

    array-length v2, p1

    array-length v3, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide v0

    goto :goto_0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 7
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D
    .param p3, "alpha"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 351
    const-wide/16 v2, 0x0

    cmpg-double v1, p3, v2

    if-lez v1, :cond_0

    cmpl-double v1, p3, v4

    if-lez v1, :cond_1

    .line 352
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 354
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public ksSum(DDI)D
    .locals 17
    .param p1, "t"    # D
    .param p3, "tolerance"    # D
    .param p5, "maxIterations"    # I

    .prologue
    .line 839
    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    mul-double v12, v12, p1

    mul-double v10, v12, p1

    .line 840
    .local v10, "x":D
    const/4 v8, -0x1

    .line 841
    .local v8, "sign":I
    const-wide/16 v4, 0x1

    .line 842
    .local v4, "i":J
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 843
    .local v6, "partialSum":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 844
    .local v2, "delta":D
    :goto_0
    cmpl-double v9, v2, p3

    if-lez v9, :cond_0

    move/from16 v0, p5

    int-to-long v12, v0

    cmp-long v9, v4, v12

    if-gez v9, :cond_0

    .line 845
    long-to-double v12, v4

    mul-double/2addr v12, v10

    long-to-double v14, v4

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 846
    int-to-double v12, v8

    mul-double/2addr v12, v2

    add-double/2addr v6, v12

    .line 847
    mul-int/lit8 v8, v8, -0x1

    .line 848
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    goto :goto_0

    .line 850
    :cond_0
    move/from16 v0, p5

    int-to-long v12, v0

    cmp-long v9, v4, v12

    if-nez v9, :cond_1

    .line 851
    new-instance v9, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v9

    .line 853
    :cond_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v6

    return-wide v12
.end method

.method public monteCarloP(DIIZI)D
    .locals 15
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "strict"    # Z
    .param p6, "iterations"    # I

    .prologue
    .line 952
    add-int v2, p4, p3

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v5

    .line 953
    .local v5, "nPlusMSet":[I
    move/from16 v0, p3

    new-array v3, v0, [D

    .line 954
    .local v3, "nSet":[D
    move/from16 v0, p4

    new-array v4, v0, [D

    .line 955
    .local v4, "mSet":[D
    const/4 v11, 0x0

    .line 956
    .local v11, "tail":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p6

    if-ge v10, v0, :cond_2

    move-object v2, p0

    move/from16 v6, p3

    move/from16 v7, p4

    .line 957
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->copyPartition([D[D[III)V

    .line 958
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v8

    .line 959
    .local v8, "curD":D
    cmpl-double v2, v8, p1

    if-lez v2, :cond_1

    .line 960
    add-int/lit8 v11, v11, 0x1

    .line 964
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {v5, v2}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 965
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v5, v2, v0}, Ljava/util/Arrays;->sort([III)V

    .line 956
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 961
    :cond_1
    cmpl-double v2, v8, p1

    if-nez v2, :cond_0

    if-nez p5, :cond_0

    .line 962
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 967
    .end local v8    # "curD":D
    :cond_2
    int-to-double v6, v11

    move/from16 v0, p6

    int-to-double v12, v0

    div-double/2addr v6, v12

    return-wide v6
.end method

.method public pelzGood(DI)D
    .locals 55
    .param p1, "d"    # D
    .param p3, "n"    # I

    .prologue
    .line 506
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    .line 507
    .local v22, "sqrtN":D
    mul-double v30, p1, v22

    .line 508
    .local v30, "z":D
    mul-double v46, p1, p1

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v48, v0

    mul-double v32, v46, v48

    .line 509
    .local v32, "z2":D
    mul-double v36, v32, v32

    .line 510
    .local v36, "z4":D
    mul-double v40, v36, v32

    .line 511
    .local v40, "z6":D
    mul-double v44, v36, v36

    .line 514
    .local v44, "z8":D
    const-wide/16 v18, 0x0

    .line 517
    .local v18, "ret":D
    const-wide/16 v24, 0x0

    .line 518
    .local v24, "sum":D
    const-wide/16 v2, 0x0

    .line 519
    .local v2, "increment":D
    const-wide/16 v6, 0x0

    .line 520
    .local v6, "kTerm":D
    const-wide v46, 0x4023bd3cc9be45deL    # 9.869604401089358

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    mul-double v48, v48, v32

    div-double v34, v46, v48

    .line 521
    .local v34, "z2Term":D
    const/4 v4, 0x1

    .line 522
    .local v4, "k":I
    :goto_0
    const v5, 0x186a0

    if-ge v4, v5, :cond_0

    .line 523
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, -0x1

    int-to-double v6, v5

    .line 524
    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v46, v0

    mul-double v46, v46, v6

    mul-double v46, v46, v6

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 525
    add-double v24, v24, v2

    .line 526
    const-wide v46, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double v46, v46, v24

    cmpg-double v5, v2, v46

    if-gtz v5, :cond_1

    .line 530
    :cond_0
    const v5, 0x186a0

    if-ne v4, v5, :cond_2

    .line 531
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 522
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 533
    :cond_2
    const-wide v46, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v46

    mul-double v46, v46, v24

    div-double v18, v46, v30

    .line 538
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    mul-double v28, v46, v32

    .line 539
    .local v28, "twoZ2":D
    const-wide/16 v24, 0x0

    .line 540
    const-wide/16 v6, 0x0

    .line 541
    const-wide/16 v8, 0x0

    .line 542
    .local v8, "kTerm2":D
    const/4 v4, 0x0

    :goto_1
    const v5, 0x186a0

    if-ge v4, v5, :cond_3

    .line 543
    int-to-double v0, v4

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    add-double v6, v46, v48

    .line 544
    mul-double v8, v6, v6

    .line 545
    const-wide v46, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v46, v46, v8

    sub-double v46, v46, v32

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 546
    add-double v24, v24, v2

    .line 547
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_4

    .line 551
    :cond_3
    const v5, 0x186a0

    if-ne v4, v5, :cond_5

    .line 552
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 542
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 554
    :cond_5
    const-wide v46, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    .line 556
    .local v20, "sqrtHalfPi":D
    mul-double v46, v24, v20

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v36

    mul-double v48, v48, v22

    div-double v46, v46, v48

    add-double v18, v18, v46

    .line 560
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    mul-double v38, v46, v36

    .line 561
    .local v38, "z4Term":D
    const-wide/high16 v46, 0x4018000000000000L    # 6.0

    mul-double v42, v46, v40

    .line 562
    .local v42, "z6Term":D
    const-wide/high16 v46, 0x4014000000000000L    # 5.0

    mul-double v34, v46, v32

    .line 563
    const-wide v14, 0x40585a2e8c290825L    # 97.40909103400243

    .line 564
    .local v14, "pi4":D
    const-wide/16 v24, 0x0

    .line 565
    const-wide/16 v6, 0x0

    .line 566
    const-wide/16 v8, 0x0

    .line 567
    const/4 v4, 0x0

    :goto_2
    const v5, 0x186a0

    if-ge v4, v5, :cond_6

    .line 568
    int-to-double v0, v4

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    add-double v6, v46, v48

    .line 569
    mul-double v8, v6, v6

    .line 570
    add-double v46, v42, v38

    const-wide v48, 0x4023bd3cc9be45deL    # 9.869604401089358

    sub-double v50, v38, v34

    mul-double v48, v48, v50

    mul-double v48, v48, v8

    add-double v46, v46, v48

    const-wide v48, 0x40585a2e8c290825L    # 97.40909103400243

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v28

    mul-double v48, v48, v50

    mul-double v48, v48, v8

    mul-double v48, v48, v8

    add-double v46, v46, v48

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 572
    add-double v24, v24, v2

    .line 573
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_7

    .line 577
    :cond_6
    const v5, 0x186a0

    if-ne v4, v5, :cond_8

    .line 578
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 567
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 580
    :cond_8
    const-wide/16 v26, 0x0

    .line 581
    .local v26, "sum2":D
    const-wide/16 v8, 0x0

    .line 582
    const/4 v4, 0x1

    :goto_3
    const v5, 0x186a0

    if-ge v4, v5, :cond_9

    .line 583
    mul-int v5, v4, v4

    int-to-double v8, v5

    .line 584
    const-wide v46, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v46, v46, v8

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 585
    add-double v26, v26, v2

    .line 586
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_a

    .line 590
    :cond_9
    const v5, 0x186a0

    if-ne v4, v5, :cond_b

    .line 591
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 582
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 594
    :cond_b
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v46, v0

    div-double v46, v20, v46

    const-wide/high16 v48, 0x4042000000000000L    # 36.0

    mul-double v48, v48, v32

    mul-double v48, v48, v32

    mul-double v48, v48, v32

    mul-double v48, v48, v30

    div-double v48, v24, v48

    const-wide/high16 v50, 0x4032000000000000L    # 18.0

    mul-double v50, v50, v32

    mul-double v50, v50, v30

    div-double v50, v26, v50

    sub-double v48, v48, v50

    mul-double v46, v46, v48

    add-double v18, v18, v46

    .line 598
    const-wide v16, 0x408e0b1d11856df6L    # 961.3891935753043

    .line 599
    .local v16, "pi6":D
    const-wide/16 v24, 0x0

    .line 600
    const-wide/16 v10, 0x0

    .line 601
    .local v10, "kTerm4":D
    const-wide/16 v12, 0x0

    .line 602
    .local v12, "kTerm6":D
    const/4 v4, 0x0

    :goto_4
    const v5, 0x186a0

    if-ge v4, v5, :cond_c

    .line 603
    int-to-double v0, v4

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    add-double v6, v46, v48

    .line 604
    mul-double v8, v6, v6

    .line 605
    mul-double v10, v8, v8

    .line 606
    mul-double v12, v10, v8

    .line 607
    const-wide v46, 0x408e0b1d11856df6L    # 961.3891935753043

    mul-double v46, v46, v12

    const-wide/high16 v48, 0x4014000000000000L    # 5.0

    const-wide/high16 v50, 0x403e000000000000L    # 30.0

    mul-double v50, v50, v32

    sub-double v48, v48, v50

    mul-double v46, v46, v48

    const-wide v48, 0x40585a2e8c290825L    # 97.40909103400243

    mul-double v48, v48, v10

    const-wide/high16 v50, -0x3fb2000000000000L    # -60.0

    mul-double v50, v50, v32

    const-wide v52, 0x406a800000000000L    # 212.0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide v48, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v48, v48, v8

    const-wide v50, 0x4060e00000000000L    # 135.0

    mul-double v50, v50, v36

    const-wide/high16 v52, 0x4058000000000000L    # 96.0

    mul-double v52, v52, v40

    sub-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide/high16 v48, 0x403e000000000000L    # 30.0

    mul-double v48, v48, v40

    sub-double v46, v46, v48

    const-wide v48, 0x4056800000000000L    # 90.0

    mul-double v48, v48, v44

    sub-double v46, v46, v48

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 610
    add-double v24, v24, v2

    .line 611
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_d

    .line 615
    :cond_c
    const v5, 0x186a0

    if-ne v4, v5, :cond_e

    .line 616
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 602
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 618
    :cond_e
    const-wide/16 v26, 0x0

    .line 619
    const/4 v4, 0x1

    :goto_5
    const v5, 0x186a0

    if-ge v4, v5, :cond_f

    .line 620
    mul-int v5, v4, v4

    int-to-double v8, v5

    .line 621
    mul-double v10, v8, v8

    .line 622
    const-wide v46, -0x3fa7a5d173d6f7dbL    # -97.40909103400243

    mul-double v46, v46, v10

    const-wide v48, 0x403d9bdb2e9d68cdL    # 29.608813203268074

    mul-double v48, v48, v8

    mul-double v48, v48, v32

    add-double v46, v46, v48

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 624
    add-double v26, v26, v2

    .line 625
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_10

    .line 629
    :cond_f
    const v5, 0x186a0

    if-ne v4, v5, :cond_11

    .line 630
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 619
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 632
    :cond_11
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v46, v46, v22

    div-double v46, v20, v46

    const-wide v48, 0x40a9500000000000L    # 3240.0

    mul-double v48, v48, v40

    mul-double v48, v48, v36

    div-double v48, v24, v48

    const-wide/high16 v50, 0x405b000000000000L    # 108.0

    mul-double v50, v50, v40

    div-double v50, v26, v50

    add-double v48, v48, v50

    mul-double v46, v46, v48

    add-double v46, v46, v18

    return-wide v46
.end method
