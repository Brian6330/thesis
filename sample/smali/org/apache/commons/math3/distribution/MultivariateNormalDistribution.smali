.class public Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "MultivariateNormalDistribution.java"


# instance fields
.field private final covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final covarianceMatrixDeterminant:D

.field private final covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final means:[D

.field private final samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V
    .locals 19
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "means"    # [D
    .param p3, "covariances"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p2

    array-length v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 111
    move-object/from16 v0, p2

    array-length v12, v0

    .line 113
    .local v12, "dim":I
    move-object/from16 v0, p3

    array-length v2, v0

    if-eq v2, v12, :cond_0

    .line 114
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p3

    array-length v3, v0

    invoke-direct {v2, v3, v12}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 117
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_2

    .line 118
    aget-object v2, p3, v5

    array-length v2, v2

    if-eq v12, v2, :cond_1

    .line 119
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v3, p3, v5

    array-length v3, v3

    invoke-direct {v2, v3, v12}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 117
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    .line 125
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 128
    new-instance v9, Lorg/apache/commons/math3/linear/EigenDecomposition;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v9, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 131
    .local v9, "covMatDec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 133
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getDeterminant()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixDeterminant:D

    .line 136
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getRealEigenvalues()[D

    move-result-object v10

    .line 138
    .local v10, "covMatEigenvalues":[D
    const/4 v5, 0x0

    :goto_1
    array-length v2, v10

    if-ge v5, v2, :cond_4

    .line 139
    aget-wide v2, v10, v5

    const-wide/16 v6, 0x0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_3

    .line 140
    new-instance v2, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v3, v10, v5

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v2

    .line 138
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 145
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v11, v12, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 146
    .local v11, "covMatEigenvectors":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    const/16 v18, 0x0

    .local v18, "v":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v12, :cond_5

    .line 147
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v13

    .line 148
    .local v13, "evec":[D
    move/from16 v0, v18

    invoke-virtual {v11, v0, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setColumn(I[D)V

    .line 146
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 151
    .end local v13    # "evec":[D
    :cond_5
    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v17

    .line 154
    .local v17, "tmpMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v16, 0x0

    .local v16, "row":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v12, :cond_7

    .line 155
    aget-wide v2, v10, v16

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 156
    .local v14, "factor":D
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_4
    if-ge v8, v12, :cond_6

    .line 157
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1, v8, v14, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->multiplyEntry(IID)V

    .line 156
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 154
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 161
    .end local v8    # "col":I
    .end local v14    # "factor":D
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 162
    return-void
.end method

.method public constructor <init>([D[[D)V
    .locals 1
    .param p1, "means"    # [D
    .param p2, "covariances"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V

    .line 83
    return-void
.end method

.method private getExponentTerm([D)D
    .locals 10
    .param p1, "values"    # [D

    .prologue
    .line 236
    array-length v3, p1

    new-array v0, v3, [D

    .line 237
    .local v0, "centered":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 238
    aget-wide v6, p1, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v3

    aget-wide v8, v3, v1

    sub-double/2addr v6, v8

    aput-wide v6, v0, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->preMultiply([D)[D

    move-result-object v2

    .line 241
    .local v2, "preMultiplied":[D
    const-wide/16 v4, 0x0

    .line 242
    .local v4, "sum":D
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 243
    aget-wide v6, v2, v1

    aget-wide v8, v0, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    :cond_1
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    return-wide v6
.end method


# virtual methods
.method public density([D)D
    .locals 8
    .param p1, "vals"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 185
    .local v0, "dim":I
    array-length v1, p1

    if-eq v1, v0, :cond_0

    .line 186
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 189
    :cond_0
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v0

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixDeterminant:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getExponentTerm([D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getCovariances()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getMeans()[D
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    return-object v0
.end method

.method public getStandardDeviations()[D
    .locals 6

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 202
    .local v0, "dim":I
    new-array v3, v0, [D

    .line 203
    .local v3, "std":[D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    .line 204
    .local v2, "s":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 205
    aget-object v4, v2, v1

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-object v3
.end method

.method public sample()[D
    .locals 8

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 214
    .local v0, "dim":I
    new-array v2, v0, [D

    .line 216
    .local v2, "normalVals":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v3

    .line 222
    .local v3, "vals":[D
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 223
    aget-wide v4, v3, v1

    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    aget-wide v6, v6, v1

    add-double/2addr v4, v6

    aput-wide v4, v3, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_1
    return-object v3
.end method
