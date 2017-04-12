.class public Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;
.super Ljava/lang/Object;
.source "LoessInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ACCURACY:D = 1.0E-12

.field public static final DEFAULT_BANDWIDTH:D = 0.3

.field public static final DEFAULT_ROBUSTNESS_ITERS:I = 0x2

.field private static final serialVersionUID:J = 0x483b9da904604c5dL


# instance fields
.field private final accuracy:D

.field private final bandwidth:D

.field private final robustnessIters:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 97
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    .line 98
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .param p1, "bandwidth"    # D
    .param p3, "robustnessIters"    # I

    .prologue
    .line 123
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;-><init>(DID)V

    .line 124
    return-void
.end method

.method public constructor <init>(DID)V
    .locals 5
    .param p1, "bandwidth"    # D
    .param p3, "robustnessIters"    # I
    .param p4, "accuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 154
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    .line 155
    if-gez p3, :cond_2

    .line 156
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROBUSTNESS_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 158
    :cond_2
    iput p3, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 159
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    .line 160
    return-void
.end method

.method private static checkAllFiniteReal([D)V
    .locals 4
    .param p0, "values"    # [D

    .prologue
    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 470
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->checkFinite(D)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method private static nextNonzero([DI)I
    .locals 6
    .param p0, "weights"    # [D
    .param p1, "i"    # I

    .prologue
    .line 437
    add-int/lit8 v0, p1, 0x1

    .line 438
    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return v0
.end method

.method private static tricube(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 453
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 454
    .local v0, "absX":D
    cmpl-double v4, v0, v6

    if-ltz v4, :cond_0

    .line 455
    const-wide/16 v4, 0x0

    .line 458
    :goto_0
    return-wide v4

    .line 457
    :cond_0
    mul-double v4, v0, v0

    mul-double/2addr v4, v0

    sub-double v2, v6, v4

    .line 458
    .local v2, "tmp":D
    mul-double v4, v2, v2

    mul-double/2addr v4, v2

    goto :goto_0
.end method

.method private static updateBandwidthInterval([D[DI[I)V
    .locals 12
    .param p0, "xval"    # [D
    .param p1, "weights"    # [D
    .param p2, "i"    # I
    .param p3, "bandwidthInterval"    # [I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 415
    aget v0, p3, v10

    .line 416
    .local v0, "left":I
    aget v3, p3, v11

    .line 420
    .local v3, "right":I
    invoke-static {p1, v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v2

    .line 421
    .local v2, "nextRight":I
    array-length v4, p0

    if-ge v2, v4, :cond_0

    aget-wide v4, p0, v2

    aget-wide v6, p0, p2

    sub-double/2addr v4, v6

    aget-wide v6, p0, p2

    aget-wide v8, p0, v0

    sub-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 422
    aget v4, p3, v10

    invoke-static {p1, v4}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v1

    .line 423
    .local v1, "nextLeft":I
    aput v1, p3, v10

    .line 424
    aput v2, p3, v11

    .line 426
    .end local v1    # "nextLeft":I
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public final interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 2
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D)[D

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public final smooth([D[D)[D
    .locals 4
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 387
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 388
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    array-length v3, p2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 391
    :cond_0
    array-length v1, p1

    new-array v0, v1, [D

    .line 392
    .local v0, "unitWeights":[D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D[D)[D

    move-result-object v1

    return-object v1
.end method

.method public final smooth([D[D[D)[D
    .locals 66
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 220
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v60, v0

    move/from16 v0, v39

    move/from16 v1, v60

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v39, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v60, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v61, v0

    move-object/from16 v0, v39

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v39

    .line 224
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    .line 226
    .local v34, "n":I
    if-nez v34, :cond_1

    .line 227
    new-instance v39, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct/range {v39 .. v39}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v39

    .line 230
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 231
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 232
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 234
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 236
    const/16 v39, 0x1

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 237
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v35, v0

    const/16 v39, 0x0

    const/16 v60, 0x0

    aget-wide v60, p2, v60

    aput-wide v60, v35, v39

    .line 361
    :cond_2
    :goto_0
    return-object v35

    .line 240
    :cond_3
    const/16 v39, 0x2

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    .line 241
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v35, v0

    const/16 v39, 0x0

    const/16 v60, 0x0

    aget-wide v60, p2, v60

    aput-wide v60, v35, v39

    const/16 v39, 0x1

    const/16 v60, 0x1

    aget-wide v60, p2, v60

    aput-wide v60, v35, v39

    goto :goto_0

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    move-wide/from16 v60, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v62, v0

    mul-double v60, v60, v62

    move-wide/from16 v0, v60

    double-to-int v10, v0

    .line 246
    .local v10, "bandwidthInPoints":I
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ge v10, v0, :cond_5

    .line 247
    new-instance v39, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v60, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    const/16 v62, 0x2

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v63, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    move-object/from16 v3, v62

    move/from16 v4, v63

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v39

    .line 251
    :cond_5
    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v35, v0

    .line 253
    .local v35, "res":[D
    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v36, v0

    .line 254
    .local v36, "residuals":[D
    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 256
    .local v38, "sortedResiduals":[D
    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v37, v0

    .line 261
    .local v37, "robustnessWeights":[D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v37

    move-wide/from16 v1, v60

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 263
    const/16 v22, 0x0

    .local v22, "iter":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    move/from16 v39, v0

    move/from16 v0, v22

    move/from16 v1, v39

    if-gt v0, v1, :cond_2

    .line 264
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v11, v0, [I

    const/16 v39, 0x0

    const/16 v60, 0x0

    aput v60, v11, v39

    const/16 v39, 0x1

    add-int/lit8 v60, v10, -0x1

    aput v60, v11, v39

    .line 266
    .local v11, "bandwidthInterval":[I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    .line 267
    aget-wide v52, p1, v19

    .line 271
    .local v52, "x":D
    if-lez v19, :cond_6

    .line 272
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v11}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->updateBandwidthInterval([D[DI[I)V

    .line 275
    :cond_6
    const/16 v39, 0x0

    aget v20, v11, v39

    .line 276
    .local v20, "ileft":I
    const/16 v39, 0x1

    aget v21, v11, v39

    .line 281
    .local v21, "iright":I
    aget-wide v60, p1, v19

    aget-wide v62, p1, v20

    sub-double v60, v60, v62

    aget-wide v62, p1, v21

    aget-wide v64, p1, v19

    sub-double v62, v62, v64

    cmpl-double v39, v60, v62

    if-lez v39, :cond_7

    .line 282
    move/from16 v18, v20

    .line 294
    .local v18, "edge":I
    :goto_3
    const-wide/16 v40, 0x0

    .line 295
    .local v40, "sumWeights":D
    const-wide/16 v42, 0x0

    .line 296
    .local v42, "sumX":D
    const-wide/16 v44, 0x0

    .line 297
    .local v44, "sumXSquared":D
    const-wide/16 v48, 0x0

    .line 298
    .local v48, "sumY":D
    const-wide/16 v46, 0x0

    .line 299
    .local v46, "sumXY":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    aget-wide v62, p1, v18

    sub-double v62, v62, v52

    div-double v60, v60, v62

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    .line 300
    .local v14, "denom":D
    move/from16 v23, v20

    .local v23, "k":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    .line 301
    aget-wide v54, p1, v23

    .line 302
    .local v54, "xk":D
    aget-wide v58, p2, v23

    .line 303
    .local v58, "yk":D
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    sub-double v16, v52, v54

    .line 304
    .local v16, "dist":D
    :goto_5
    mul-double v60, v16, v14

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->tricube(D)D

    move-result-wide v60

    aget-wide v62, v37, v23

    mul-double v60, v60, v62

    aget-wide v62, p3, v23

    mul-double v50, v60, v62

    .line 305
    .local v50, "w":D
    mul-double v56, v54, v50

    .line 306
    .local v56, "xkw":D
    add-double v40, v40, v50

    .line 307
    add-double v42, v42, v56

    .line 308
    mul-double v60, v54, v56

    add-double v44, v44, v60

    .line 309
    mul-double v60, v58, v50

    add-double v48, v48, v60

    .line 310
    mul-double v60, v58, v56

    add-double v46, v46, v60

    .line 300
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 284
    .end local v14    # "denom":D
    .end local v16    # "dist":D
    .end local v18    # "edge":I
    .end local v23    # "k":I
    .end local v40    # "sumWeights":D
    .end local v42    # "sumX":D
    .end local v44    # "sumXSquared":D
    .end local v46    # "sumXY":D
    .end local v48    # "sumY":D
    .end local v50    # "w":D
    .end local v54    # "xk":D
    .end local v56    # "xkw":D
    .end local v58    # "yk":D
    :cond_7
    move/from16 v18, v21

    .restart local v18    # "edge":I
    goto :goto_3

    .line 303
    .restart local v14    # "denom":D
    .restart local v23    # "k":I
    .restart local v40    # "sumWeights":D
    .restart local v42    # "sumX":D
    .restart local v44    # "sumXSquared":D
    .restart local v46    # "sumXY":D
    .restart local v48    # "sumY":D
    .restart local v54    # "xk":D
    .restart local v58    # "yk":D
    :cond_8
    sub-double v16, v54, v52

    goto :goto_5

    .line 313
    .end local v54    # "xk":D
    .end local v58    # "yk":D
    :cond_9
    div-double v24, v42, v40

    .line 314
    .local v24, "meanX":D
    div-double v30, v48, v40

    .line 315
    .local v30, "meanY":D
    div-double v28, v46, v40

    .line 316
    .local v28, "meanXY":D
    div-double v26, v44, v40

    .line 319
    .local v26, "meanXSquared":D
    mul-double v60, v24, v24

    sub-double v60, v26, v60

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v60

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    move-wide/from16 v62, v0

    cmpg-double v39, v60, v62

    if-gez v39, :cond_a

    .line 320
    const-wide/16 v12, 0x0

    .line 325
    .local v12, "beta":D
    :goto_6
    mul-double v60, v12, v24

    sub-double v6, v30, v60

    .line 327
    .local v6, "alpha":D
    mul-double v60, v12, v52

    add-double v60, v60, v6

    aput-wide v60, v35, v19

    .line 328
    aget-wide v60, p2, v19

    aget-wide v62, v35, v19

    sub-double v60, v60, v62

    invoke-static/range {v60 .. v61}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v60

    aput-wide v60, v36, v19

    .line 266
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 322
    .end local v6    # "alpha":D
    .end local v12    # "beta":D
    :cond_a
    mul-double v60, v24, v30

    sub-double v60, v28, v60

    mul-double v62, v24, v24

    sub-double v62, v26, v62

    div-double v12, v60, v62

    .restart local v12    # "beta":D
    goto :goto_6

    .line 333
    .end local v12    # "beta":D
    .end local v14    # "denom":D
    .end local v18    # "edge":I
    .end local v20    # "ileft":I
    .end local v21    # "iright":I
    .end local v23    # "k":I
    .end local v24    # "meanX":D
    .end local v26    # "meanXSquared":D
    .end local v28    # "meanXY":D
    .end local v30    # "meanY":D
    .end local v40    # "sumWeights":D
    .end local v42    # "sumX":D
    .end local v44    # "sumXSquared":D
    .end local v46    # "sumXY":D
    .end local v48    # "sumY":D
    .end local v52    # "x":D
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    move/from16 v39, v0

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    .line 342
    const/16 v39, 0x0

    const/16 v60, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    move-object/from16 v2, v38

    move/from16 v3, v60

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->sort([D)V

    .line 344
    div-int/lit8 v39, v34, 0x2

    aget-wide v32, v38, v39

    .line 346
    .local v32, "medianResidual":D
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v60

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    move-wide/from16 v62, v0

    cmpg-double v39, v60, v62

    if-ltz v39, :cond_2

    .line 350
    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    .line 351
    aget-wide v60, v36, v19

    const-wide/high16 v62, 0x4018000000000000L    # 6.0

    mul-double v62, v62, v32

    div-double v8, v60, v62

    .line 352
    .local v8, "arg":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    cmpl-double v39, v8, v60

    if-ltz v39, :cond_c

    .line 353
    const-wide/16 v60, 0x0

    aput-wide v60, v37, v19

    .line 350
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 355
    :cond_c
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    mul-double v62, v8, v8

    sub-double v50, v60, v62

    .line 356
    .restart local v50    # "w":D
    mul-double v60, v50, v50

    aput-wide v60, v37, v19

    goto :goto_8

    .line 263
    .end local v8    # "arg":D
    .end local v50    # "w":D
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1
.end method
