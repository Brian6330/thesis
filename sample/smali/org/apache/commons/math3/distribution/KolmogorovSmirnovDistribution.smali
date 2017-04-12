.class public Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40d193cce9ad2d93L


# instance fields
.field private n:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-gtz p1, :cond_0

    .line 89
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 92
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    .line 93
    return-void
.end method

.method private createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 21
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
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
    .line 271
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v6, v6

    mul-double v6, v6, p1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v6

    double-to-int v15, v6

    .line 273
    .local v15, "k":I
    mul-int/lit8 v6, v15, 0x2

    add-int/lit8 v16, v6, -0x1

    .line 274
    .local v16, "m":I
    int-to-double v6, v15

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v8

    move-wide/from16 v18, v0

    mul-double v18, v18, p1

    sub-double v4, v6, v18

    .line 276
    .local v4, "hDouble":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    .line 277
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

    .line 280
    :cond_0
    const/4 v3, 0x0

    .line 283
    .local v3, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :try_start_0
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    const-wide v6, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
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

    .line 297
    .local v2, "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 298
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 299
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_1

    .line 300
    aget-object v6, v2, v13

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v14

    .line 298
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 284
    .end local v2    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v13    # "i":I
    .end local v14    # "j":I
    :catch_0
    move-exception v9

    .line 286
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

    .line 287
    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_1
    move-exception v10

    .line 288
    .local v10, "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 302
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

    .line 297
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 311
    .end local v14    # "j":I
    :cond_3
    move/from16 v0, v16

    new-array v12, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 312
    .local v12, "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v6, 0x0

    aput-object v3, v12, v6

    .line 313
    const/4 v13, 0x1

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 314
    add-int/lit8 v6, v13, -0x1

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v12, v13

    .line 313
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 320
    :cond_4
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 321
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

    .line 322
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

    .line 320
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 330
    :cond_5
    sget-object v6, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 331
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

    .line 345
    :cond_6
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 346
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_7
    add-int/lit8 v6, v13, 0x1

    if-ge v14, v6, :cond_8

    .line 347
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_7

    .line 348
    const/4 v11, 0x2

    .local v11, "g":I
    :goto_8
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-gt v11, v6, :cond_7

    .line 349
    aget-object v6, v2, v13

    aget-object v7, v2, v13

    aget-object v7, v7, v14

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v14

    .line 348
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 346
    .end local v11    # "g":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 345
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 355
    .end local v14    # "j":I
    :cond_9
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object v6
.end method

.method private exactK(D)D
    .locals 9
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 198
    iget v5, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v6, v5

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 200
    .local v3, "k":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 201
    .local v0, "H":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    iget v5, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 203
    .local v1, "Hpower":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 205
    .local v4, "pFrac":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt v2, v5, :cond_0

    .line 206
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    const/16 v5, 0x14

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    return-wide v6
.end method

.method private roundedK(D)D
    .locals 15
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 230
    iget v7, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v10, v7

    mul-double v10, v10, p1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 231
    .local v5, "k":I
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 232
    .local v1, "HBigFraction":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v6

    .line 238
    .local v6, "m":I
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, v6, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 240
    .local v0, "H":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 241
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 242
    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v10

    invoke-interface {v0, v3, v4, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v4    # "j":I
    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 248
    .local v2, "Hpower":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v7, v5, -0x1

    add-int/lit8 v10, v5, -0x1

    invoke-interface {v2, v7, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    .line 250
    .local v8, "pFrac":D
    const/4 v3, 0x1

    :goto_2
    iget v7, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt v3, v7, :cond_2

    .line 251
    int-to-double v10, v3

    iget v7, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v12, v7

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    :cond_2
    return-wide v8
.end method


# virtual methods
.method public cdf(D)D
    .locals 3
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->cdf(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public cdf(DZ)D
    .locals 19
    .param p1, "d"    # D
    .param p3, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 153
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v14, v5

    div-double v6, v12, v14

    .line 154
    .local v6, "ninv":D
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v8, v12, v6

    .line 156
    .local v8, "ninvhalf":D
    cmpg-double v5, p1, v8

    if-gtz v5, :cond_1

    .line 158
    const-wide/16 v10, 0x0

    .line 181
    :cond_0
    :goto_0
    return-wide v10

    .line 160
    :cond_1
    cmpg-double v5, v8, p1

    if-gez v5, :cond_2

    cmpg-double v5, p1, v6

    if-gtz v5, :cond_2

    .line 162
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 163
    .local v10, "res":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, p1

    sub-double v2, v12, v6

    .line 166
    .local v2, "f":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt v4, v5, :cond_0

    .line 167
    int-to-double v12, v4

    mul-double/2addr v12, v2

    mul-double/2addr v10, v12

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 172
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

    .line 174
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, p1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v10, v12, v14

    goto :goto_0

    .line 176
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v12, p1

    if-gtz v5, :cond_4

    .line 178
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 181
    :cond_4
    if-eqz p3, :cond_5

    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->exactK(D)D

    move-result-wide v12

    :goto_2
    move-wide v10, v12

    goto :goto_0

    :cond_5
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->roundedK(D)D

    move-result-wide v12

    goto :goto_2
.end method

.method public cdfExact(D)D
    .locals 3
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->cdf(DZ)D

    move-result-wide v0

    return-wide v0
.end method
