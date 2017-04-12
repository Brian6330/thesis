.class public Lorg/apache/commons/math3/stat/correlation/Covariance;
.super Ljava/lang/Object;
.source "Covariance.java"


# instance fields
.field private final covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "biasCorrected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 123
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 125
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .param p1, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[DZ)V

    .line 104
    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 1
    .param p1, "data"    # [[D
    .param p2, "biasCorrected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V

    .line 86
    return-void
.end method

.method private checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 8
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 287
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 288
    .local v1, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 289
    .local v0, "nCols":I
    if-lt v1, v4, :cond_0

    if-ge v0, v7, :cond_1

    .line 290
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_ROWS_AND_COLUMNS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 294
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method protected computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "biasCorrected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 170
    .local v2, "dimension":I
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v6, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    .line 171
    .local v6, "variance":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    new-instance v5, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v5, v2, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 172
    .local v5, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 173
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 174
    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v8

    invoke-virtual {p0, v7, v8, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide v0

    .line 175
    .local v0, "cov":D
    invoke-interface {v5, v3, v4, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 176
    invoke-interface {v5, v4, v3, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "cov":D
    :cond_0
    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v8

    invoke-interface {v5, v3, v3, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "j":I
    :cond_1
    return-object v5
.end method

.method protected computeCovarianceMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix([[DZ)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method protected computeCovarianceMatrix([[DZ)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "data"    # [[D
    .param p2, "biasCorrected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public covariance([D[D)D
    .locals 2
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public covariance([D[DZ)D
    .locals 20
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D
    .param p3, "biasCorrected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v4, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 242
    .local v4, "mean":Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    const-wide/16 v6, 0x0

    .line 243
    .local v6, "result":D
    move-object/from16 v0, p1

    array-length v3, v0

    .line 244
    .local v3, "length":I
    move-object/from16 v0, p2

    array-length v5, v0

    if-eq v3, v5, :cond_0

    .line 245
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v16, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 247
    :cond_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 248
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v16, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 251
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D)D

    move-result-wide v10

    .line 252
    .local v10, "xMean":D
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D)D

    move-result-wide v14

    .line 253
    .local v14, "yMean":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 254
    aget-wide v16, p1, v2

    sub-double v8, v16, v10

    .line 255
    .local v8, "xDev":D
    aget-wide v16, p2, v2

    sub-double v12, v16, v14

    .line 256
    .local v12, "yDev":D
    mul-double v16, v8, v12

    sub-double v16, v16, v6

    add-int/lit8 v5, v2, 0x1

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    add-double v6, v6, v16

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v8    # "xDev":D
    .end local v12    # "yDev":D
    :cond_2
    if-eqz p3, :cond_3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    add-int/lit8 v5, v3, -0x1

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    mul-double v6, v6, v16

    .end local v6    # "result":D
    :cond_3
    return-wide v6
.end method

.method public getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    return v0
.end method
