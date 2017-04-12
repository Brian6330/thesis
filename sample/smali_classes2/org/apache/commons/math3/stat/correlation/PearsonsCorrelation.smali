.class public Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
.super Ljava/lang/Object;
.source "PearsonsCorrelation.java"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final nObs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 1
    .param p1, "covarianceMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "numberOfObservations"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 129
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/correlation/Covariance;)V
    .locals 4
    .param p1, "covariance"    # Lorg/apache/commons/math3/stat/correlation/Covariance;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 112
    .local v0, "covarianceMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    if-nez v0, :cond_0

    .line 113
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COVARIANCE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getN()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 116
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 117
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .param p1, "data"    # [[D

    .prologue
    .line 82
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 83
    return-void
.end method

.method private checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 7
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v4, 0x2

    .line 323
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 324
    .local v1, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 325
    .local v0, "nCols":I
    if-lt v1, v4, :cond_0

    if-ge v0, v4, :cond_1

    .line 326
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_ROWS_AND_COLUMNS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 329
    :cond_1
    return-void
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 228
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    .line 229
    .local v4, "nVars":I
    new-instance v5, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v5, v4, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 230
    .local v5, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 231
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 232
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide v0

    .line 233
    .local v0, "corr":D
    invoke-interface {v5, v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 234
    invoke-interface {v5, v3, v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "corr":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v2, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "j":I
    :cond_1
    return-object v5
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "data"    # [[D

    .prologue
    .line 256
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 8
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D

    .prologue
    const/4 v7, 0x2

    .line 274
    new-instance v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>()V

    .line 275
    .local v1, "regression":Lorg/apache/commons/math3/stat/regression/SimpleRegression;
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 276
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 277
    :cond_0
    array-length v2, p1

    if-ge v2, v7, :cond_1

    .line 278
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 281
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 282
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getR()D

    move-result-wide v2

    return-wide v2
.end method

.method public covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12
    .param p1, "covarianceMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 300
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    .line 301
    .local v4, "nVars":I
    new-instance v5, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v5, v4, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 302
    .local v5, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 303
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 304
    .local v6, "sigma":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v2, v2, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 305
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 306
    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-interface {p1, v3, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    div-double v0, v8, v10

    .line 308
    .local v0, "entry":D
    invoke-interface {v5, v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 309
    invoke-interface {v5, v3, v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "entry":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v3    # "j":I
    .end local v6    # "sigma":D
    :cond_1
    return-object v5
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getCorrelationPValues()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    .prologue
    .line 195
    new-instance v10, Lorg/apache/commons/math3/distribution/TDistribution;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    add-int/lit8 v11, v11, -0x2

    int-to-double v12, v11

    invoke-direct {v10, v12, v13}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 196
    .local v10, "tDistribution":Lorg/apache/commons/math3/distribution/TDistribution;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v11}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    .line 197
    .local v4, "nVars":I
    filled-new-array {v4, v4}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 198
    .local v5, "out":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 199
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 200
    if-ne v2, v3, :cond_0

    .line 201
    aget-object v11, v5, v2

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v3

    .line 199
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v11, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    .line 204
    .local v6, "r":D
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    add-int/lit8 v11, v11, -0x2

    int-to-double v12, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v16, v6, v6

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    .line 205
    .local v8, "t":D
    aget-object v11, v5, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    neg-double v14, v8

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    aput-wide v12, v11, v3

    goto :goto_2

    .line 198
    .end local v6    # "r":D
    .end local v8    # "t":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "j":I
    :cond_2
    new-instance v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v11, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    return-object v11
.end method

.method public getCorrelationStandardErrors()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12

    .prologue
    .line 163
    iget-object v6, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 164
    .local v2, "nVars":I
    filled-new-array {v2, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 165
    .local v3, "out":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 166
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 167
    iget-object v6, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 168
    .local v4, "r":D
    aget-object v6, v3, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v10, v4, v4

    sub-double/2addr v8, v10

    iget v7, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    add-int/lit8 v7, v7, -0x2

    int-to-double v10, v7

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v4    # "r":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "j":I
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v6, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    return-object v6
.end method
