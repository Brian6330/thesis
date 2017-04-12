.class public Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;
.super Ljava/lang/Object;
.source "MultivariateNormalMixtureExpectationMaximization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ITERATIONS:I = 0x3e8

.field private static final DEFAULT_THRESHOLD:D = 1.0E-5


# instance fields
.field private final data:[[D

.field private fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

.field private logLikelihood:D


# direct methods
.method public constructor <init>([[D)V
    .locals 7
    .param p1, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 90
    array-length v1, p1

    if-ge v1, v5, :cond_0

    .line 91
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 94
    :cond_0
    array-length v1, p1

    aget-object v2, p1, v4

    array-length v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 97
    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p1, v4

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 99
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, p1, v0

    array-length v2, v2

    aget-object v3, p1, v4

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 102
    :cond_1
    aget-object v1, p1, v0

    array-length v1, v1

    if-ge v1, v6, :cond_2

    .line 103
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v3, p1, v0

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 106
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v2, p1, v0

    aget-object v3, p1, v0

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v2

    aput-object v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_3
    return-void
.end method

.method public static estimate([[DI)Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 28
    .param p0, "data"    # [[D
    .param p1, "numComponents"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 306
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    const/16 v24, 0x2

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 307
    new-instance v19, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v19

    .line 309
    :cond_0
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 310
    new-instance v19, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v19

    .line 312
    :cond_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 313
    new-instance v19, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v19

    .line 316
    :cond_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    .line 317
    .local v17, "numRows":I
    const/16 v19, 0x0

    aget-object v19, p0, v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    .line 320
    .local v16, "numCols":I
    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    move-object/from16 v18, v0

    .line 321
    .local v18, "sortedData":[Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 322
    new-instance v19, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    aget-object v24, p0, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;-><init>([D)V

    aput-object v19, v18, v9

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 324
    :cond_3
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 327
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v22, v24, v26

    .line 330
    .local v22, "weight":D
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v7, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    const/4 v5, 0x0

    .local v5, "binIndex":I
    :goto_1
    move/from16 v0, p1

    if-ge v5, v0, :cond_6

    .line 336
    mul-int v19, v5, v17

    div-int v13, v19, p1

    .line 339
    .local v13, "minIndex":I
    add-int/lit8 v19, v5, 0x1

    mul-int v19, v19, v17

    div-int v12, v19, p1

    .line 342
    .local v12, "maxIndex":I
    sub-int v15, v12, v13

    .line 345
    .local v15, "numBinRows":I
    filled-new-array/range {v15 .. v16}, [I

    move-result-object v19

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 348
    .local v4, "binData":[[D
    move/from16 v0, v16

    new-array v6, v0, [D

    .line 351
    .local v6, "columnMeans":[D
    move v9, v13

    const/4 v10, 0x0

    .local v10, "iBin":I
    :goto_2
    if-ge v9, v12, :cond_5

    .line 352
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_4

    .line 353
    aget-object v19, v18, v9

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->getRow()[D

    move-result-object v19

    aget-wide v20, v19, v11

    .line 354
    .local v20, "val":D
    aget-wide v24, v6, v11

    add-double v24, v24, v20

    aput-wide v24, v6, v11

    .line 355
    aget-object v19, v4, v10

    aput-wide v20, v19, v11

    .line 352
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 351
    .end local v20    # "val":D
    :cond_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 359
    .end local v11    # "j":I
    :cond_5
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v15

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v6}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    .line 362
    new-instance v19, Lorg/apache/commons/math3/stat/correlation/Covariance;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[D)V

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v8

    .line 364
    .local v8, "covMat":[[D
    new-instance v14, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-direct {v14, v6, v8}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>([D[[D)V

    .line 367
    .local v14, "mvn":Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    new-instance v19, Lorg/apache/commons/math3/util/Pair;

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 370
    .end local v4    # "binData":[[D
    .end local v6    # "columnMeans":[D
    .end local v8    # "covMat":[[D
    .end local v10    # "iBin":I
    .end local v12    # "maxIndex":I
    .end local v13    # "minIndex":I
    .end local v14    # "mvn":Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    .end local v15    # "numBinRows":I
    :cond_6
    new-instance v19, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v19
.end method


# virtual methods
.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;)V
    .locals 4
    .param p1, "initialMixture"    # Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 281
    const/16 v0, 0x3e8

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V

    .line 282
    return-void
.end method

.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V
    .locals 39
    .param p1, "initialMixture"    # Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .param p2, "maxIterations"    # I
    .param p3, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 138
    const/16 v31, 0x1

    move/from16 v0, p2

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 139
    new-instance v31, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v31

    .line 142
    :cond_0
    const-wide/16 v32, 0x1

    cmpg-double v31, p3, v32

    if-gez v31, :cond_1

    .line 143
    new-instance v31, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v31

    .line 146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v14, v0

    .line 150
    .local v14, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v19, v0

    .line 151
    .local v19, "numCols":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v12

    .line 153
    .local v12, "k":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v22, v0

    .line 156
    .local v22, "numMeanColumns":I
    move/from16 v0, v22

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 157
    new-instance v31, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, v31

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v31

    .line 160
    :cond_2
    const/16 v20, 0x0

    .line 161
    .local v20, "numIterations":I
    const-wide/16 v24, 0x0

    .line 163
    .local v24, "previousLogLikelihood":D
    const-wide/high16 v32, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 166
    new-instance v31, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move/from16 v21, v20

    .line 168
    .end local v20    # "numIterations":I
    .local v21, "numIterations":I
    :goto_0
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "numIterations":I
    .restart local v20    # "numIterations":I
    move/from16 v0, v21

    move/from16 v1, p2

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    move-wide/from16 v32, v0

    sub-double v32, v24, v32

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpl-double v31, v32, p3

    if-lez v31, :cond_d

    .line 170
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    move-wide/from16 v24, v0

    .line 171
    const-wide/16 v28, 0x0

    .line 174
    .local v28, "sumLogLikelihood":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v5

    .line 178
    .local v5, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    new-array v0, v12, [D

    move-object/from16 v30, v0

    .line 180
    .local v30, "weights":[D
    new-array v13, v12, [Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    .line 182
    .local v13, "mvns":[Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v12, :cond_3

    .line 183
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Double;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    aput-wide v32, v30, v11

    .line 184
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    aput-object v31, v13, v11

    .line 182
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 191
    :cond_3
    filled-new-array {v14, v12}, [I

    move-result-object v31

    sget-object v32, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 194
    .local v7, "gamma":[[D
    new-array v9, v12, [D

    .line 197
    .local v9, "gammaSums":[D
    move/from16 v0, v19

    filled-new-array {v12, v0}, [I

    move-result-object v31

    sget-object v32, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 199
    .local v8, "gammaDataProdSums":[[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v14, :cond_6

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    move-object/from16 v32, v0

    aget-object v32, v32, v10

    invoke-virtual/range {v31 .. v32}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->density([D)D

    move-result-wide v26

    .line 201
    .local v26, "rowDensity":D
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v32

    add-double v28, v28, v32

    .line 203
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_5

    .line 204
    aget-object v31, v7, v10

    aget-wide v32, v30, v11

    aget-object v34, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    move-object/from16 v35, v0

    aget-object v35, v35, v10

    invoke-virtual/range {v34 .. v35}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->density([D)D

    move-result-wide v34

    mul-double v32, v32, v34

    div-double v32, v32, v26

    aput-wide v32, v31, v11

    .line 205
    aget-wide v32, v9, v11

    aget-object v31, v7, v10

    aget-wide v34, v31, v11

    add-double v32, v32, v34

    aput-wide v32, v9, v11

    .line 207
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_4
    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    .line 208
    aget-object v31, v8, v11

    aget-wide v32, v31, v4

    aget-object v34, v7, v10

    aget-wide v34, v34, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    move-object/from16 v36, v0

    aget-object v36, v36, v10

    aget-wide v36, v36, v4

    mul-double v34, v34, v36

    add-double v32, v32, v34

    aput-wide v32, v31, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 203
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 199
    .end local v4    # "col":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 213
    .end local v26    # "rowDensity":D
    :cond_6
    int-to-double v0, v14

    move-wide/from16 v32, v0

    div-double v32, v28, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 217
    new-array v0, v12, [D

    move-object/from16 v18, v0

    .line 218
    .local v18, "newWeights":[D
    move/from16 v0, v19

    filled-new-array {v12, v0}, [I

    move-result-object v31

    sget-object v32, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[D

    .line 220
    .local v17, "newMeans":[[D
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v12, :cond_8

    .line 221
    aget-wide v32, v9, v11

    int-to-double v0, v14

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    aput-wide v32, v18, v11

    .line 222
    const/4 v4, 0x0

    .restart local v4    # "col":I
    :goto_6
    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 223
    aget-object v31, v17, v11

    aget-object v32, v8, v11

    aget-wide v32, v32, v4

    aget-wide v34, v9, v11

    div-double v32, v32, v34

    aput-wide v32, v31, v4

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 220
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 228
    .end local v4    # "col":I
    :cond_8
    new-array v0, v12, [Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v16, v0

    .line 229
    .local v16, "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v12, :cond_9

    .line 230
    new-instance v31, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, v31

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    aput-object v31, v16, v11

    .line 229
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 232
    :cond_9
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v14, :cond_b

    .line 233
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v12, :cond_a

    .line 234
    new-instance v23, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    move-object/from16 v31, v0

    aget-object v31, v31, v10

    aget-object v32, v17, v11

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([D)V

    .line 236
    .local v23, "vec":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface/range {v23 .. v23}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v31

    aget-object v32, v7, v10

    aget-wide v32, v32, v11

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 238
    .local v6, "dataCov":Lorg/apache/commons/math3/linear/RealMatrix;
    aget-object v31, v16, v11

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v31

    aput-object v31, v16, v11

    .line 233
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 232
    .end local v6    # "dataCov":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v23    # "vec":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 243
    :cond_b
    move/from16 v0, v19

    move/from16 v1, v19

    filled-new-array {v12, v0, v1}, [I

    move-result-object v31

    sget-object v32, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[D

    .line 244
    .local v15, "newCovMatArrays":[[[D
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v12, :cond_c

    .line 245
    aget-object v31, v16, v11

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    aget-wide v34, v9, v11

    div-double v32, v32, v34

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v31

    aput-object v31, v16, v11

    .line 246
    aget-object v31, v16, v11

    invoke-interface/range {v31 .. v31}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v31

    aput-object v31, v15, v11

    .line 244
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 250
    :cond_c
    new-instance v31, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v15}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>([D[[D[[[D)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move/from16 v21, v20

    .line 253
    .end local v20    # "numIterations":I
    .restart local v21    # "numIterations":I
    goto/16 :goto_0

    .line 255
    .end local v5    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .end local v7    # "gamma":[[D
    .end local v8    # "gammaDataProdSums":[[D
    .end local v9    # "gammaSums":[D
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v13    # "mvns":[Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    .end local v15    # "newCovMatArrays":[[[D
    .end local v16    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v17    # "newMeans":[[D
    .end local v18    # "newWeights":[D
    .end local v21    # "numIterations":I
    .end local v28    # "sumLogLikelihood":D
    .end local v30    # "weights":[D
    .restart local v20    # "numIterations":I
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    move-wide/from16 v32, v0

    sub-double v32, v24, v32

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpl-double v31, v32, p3

    if-lez v31, :cond_e

    .line 257
    new-instance v31, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct/range {v31 .. v31}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v31

    .line 259
    :cond_e
    return-void
.end method

.method public getFittedModel()Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getLogLikelihood()D
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    return-wide v0
.end method
