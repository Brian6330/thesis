.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;
.super Ljava/lang/Object;
.source "PolynomialFunctionLagrangeForm.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field private coefficients:[D

.field private coefficientsComputed:Z

.field private final x:[D

.field private final y:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 5
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    .line 74
    array-length v0, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-boolean v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    .line 79
    invoke-static {p1, p2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    new-array v1, v4, [[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 82
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 84
    :cond_0
    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 6
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-static {p0, p1, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide v2

    .line 187
    :goto_0
    return-wide v2

    .line 179
    :cond_0
    array-length v2, p0

    new-array v0, v2, [D

    .line 180
    .local v0, "xNew":[D
    array-length v2, p1

    new-array v1, v2, [D

    .line 181
    .local v1, "yNew":[D
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    new-array v2, v4, [[D

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 186
    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 187
    invoke-static {v0, v1, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide v2

    goto :goto_0
.end method

.method private static evaluateInternal([D[DD)D
    .locals 28
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "z"    # D

    .prologue
    .line 207
    const/4 v13, 0x0

    .line 208
    .local v13, "nearest":I
    move-object/from16 v0, p0

    array-length v12, v0

    .line 209
    .local v12, "n":I
    new-array v2, v12, [D

    .line 210
    .local v2, "c":[D
    new-array v3, v12, [D

    .line 211
    .local v3, "d":[D
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 212
    .local v10, "min_dist":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_1

    .line 214
    aget-wide v22, p1, v8

    aput-wide v22, v2, v8

    .line 215
    aget-wide v22, p1, v8

    aput-wide v22, v3, v8

    .line 217
    aget-wide v22, p0, v8

    sub-double v22, p2, v22

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 218
    .local v4, "dist":D
    cmpg-double v22, v4, v10

    if-gez v22, :cond_0

    .line 219
    move v13, v8

    .line 220
    move-wide v10, v4

    .line 212
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 225
    .end local v4    # "dist":D
    :cond_1
    aget-wide v18, p1, v13

    .line 227
    .local v18, "value":D
    const/4 v8, 0x1

    :goto_1
    if-ge v8, v12, :cond_4

    .line 228
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    sub-int v22, v12, v8

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 229
    aget-wide v22, p0, v9

    sub-double v14, v22, p2

    .line 230
    .local v14, "tc":D
    add-int v22, v8, v9

    aget-wide v22, p0, v22

    sub-double v16, v22, p2

    .line 231
    .local v16, "td":D
    aget-wide v22, p0, v9

    add-int v24, v8, v9

    aget-wide v24, p0, v24

    sub-double v6, v22, v24

    .line 233
    .local v6, "divider":D
    add-int/lit8 v22, v9, 0x1

    aget-wide v22, v2, v22

    aget-wide v24, v3, v9

    sub-double v22, v22, v24

    div-double v20, v22, v6

    .line 234
    .local v20, "w":D
    mul-double v22, v14, v20

    aput-wide v22, v2, v9

    .line 235
    mul-double v22, v16, v20

    aput-wide v22, v3, v9

    .line 228
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 238
    .end local v6    # "divider":D
    .end local v14    # "tc":D
    .end local v16    # "td":D
    .end local v20    # "w":D
    :cond_2
    int-to-double v0, v13

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    sub-int v26, v12, v8

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    cmpg-double v22, v22, v24

    if-gez v22, :cond_3

    .line 239
    aget-wide v22, v2, v13

    add-double v18, v18, v22

    .line 227
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 241
    :cond_3
    add-int/lit8 v13, v13, -0x1

    .line 242
    aget-wide v22, v3, v13

    add-double v18, v18, v22

    goto :goto_3

    .line 246
    .end local v9    # "j":I
    :cond_4
    return-wide v18
.end method

.method public static verifyInterpolationArray([D[DZ)Z
    .locals 5
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "abort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 317
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 318
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p0

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 320
    :cond_0
    array-length v0, p0

    if-ge v0, v2, :cond_1

    .line 321
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 324
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, v0, v4, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected computeCoefficients()V
    .locals 18

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->degree()I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 257
    .local v7, "n":I
    new-array v11, v7, [D

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    .line 258
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    add-int/lit8 v11, v7, 0x1

    new-array v2, v11, [D

    .line 264
    .local v2, "c":[D
    const/4 v11, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v2, v11

    .line 265
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_2

    .line 266
    move v6, v3

    .local v6, "j":I
    :goto_2
    if-lez v6, :cond_1

    .line 267
    add-int/lit8 v11, v6, -0x1

    aget-wide v12, v2, v11

    aget-wide v14, v2, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v16, v11, v3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    aput-wide v12, v2, v6

    .line 266
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 269
    :cond_1
    const/4 v11, 0x0

    aget-wide v12, v2, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v14, v14, v3

    neg-double v14, v14

    mul-double/2addr v12, v14

    aput-wide v12, v2, v11

    .line 270
    add-int/lit8 v11, v3, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v2, v11

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v6    # "j":I
    :cond_2
    new-array v10, v7, [D

    .line 274
    .local v10, "tc":[D
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_6

    .line 276
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 277
    .local v4, "d":D
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v7, :cond_4

    .line 278
    if-eq v3, v6, :cond_3

    .line 279
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v12, v11, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v14, v11, v6

    sub-double/2addr v12, v14

    mul-double/2addr v4, v12

    .line 277
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 282
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    aget-wide v12, v11, v3

    div-double v8, v12, v4

    .line 286
    .local v8, "t":D
    add-int/lit8 v11, v7, -0x1

    aget-wide v12, v2, v7

    aput-wide v12, v10, v11

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    add-int/lit8 v12, v7, -0x1

    aget-wide v14, v11, v12

    add-int/lit8 v13, v7, -0x1

    aget-wide v16, v10, v13

    mul-double v16, v16, v8

    add-double v14, v14, v16

    aput-wide v14, v11, v12

    .line 288
    add-int/lit8 v6, v7, -0x2

    :goto_5
    if-ltz v6, :cond_5

    .line 289
    add-int/lit8 v11, v6, 0x1

    aget-wide v12, v2, v11

    add-int/lit8 v11, v6, 0x1

    aget-wide v14, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v16, v11, v3

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v10, v6

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    aget-wide v12, v11, v6

    aget-wide v14, v10, v6

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    aput-wide v12, v11, v6

    .line 288
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 274
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 294
    .end local v4    # "d":D
    .end local v6    # "j":I
    .end local v8    # "t":D
    :cond_6
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    .line 295
    return-void
.end method

.method public degree()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCoefficients()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-boolean v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->computeCoefficients()V

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 152
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method

.method public getInterpolatingPoints()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 120
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-object v0
.end method

.method public getInterpolatingValues()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 133
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-object v0
.end method

.method public value(D)D
    .locals 3
    .param p1, "z"    # D

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide v0

    return-wide v0
.end method
