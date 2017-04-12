.class public Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "PiecewiseBicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final MIN_NUM_POINTS:I = 0x5


# instance fields
.field private final fval:[[D

.field private final xval:[D

.field private final yval:[D


# direct methods
.method public constructor <init>([D[D[[D)V
    .locals 5
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "f"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    aget-object v2, p3, v3

    if-nez v2, :cond_1

    .line 75
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 78
    :cond_1
    array-length v0, p1

    .line 79
    .local v0, "xLen":I
    array-length v1, p2

    .line 81
    .local v1, "yLen":I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    array-length v2, p3

    if-eqz v2, :cond_2

    aget-object v2, p3, v3

    array-length v2, v2

    if-nez v2, :cond_3

    .line 85
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2

    .line 88
    :cond_3
    if-lt v0, v4, :cond_4

    if-lt v1, v4, :cond_4

    array-length v2, p3

    if-lt v2, v4, :cond_4

    aget-object v2, p3, v3

    array-length v2, v2

    if-ge v2, v4, :cond_5

    .line 92
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw v2

    .line 95
    :cond_5
    array-length v2, p3

    if-eq v0, v2, :cond_6

    .line 96
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p3

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 99
    :cond_6
    aget-object v2, p3, v3

    array-length v2, v2

    if-eq v1, v2, :cond_7

    .line 100
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v3, p3, v3

    array-length v3, v3

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 103
    :cond_7
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 104
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 106
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    .line 107
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    .line 108
    invoke-virtual {p3}, [[D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->fval:[[D

    .line 109
    return-void
.end method

.method private searchIndex(D[DII)I
    .locals 7
    .param p1, "c"    # D
    .param p3, "val"    # [D
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 183
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 185
    .local v0, "r":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 189
    :cond_1
    if-gez v0, :cond_4

    .line 193
    neg-int v1, v0

    sub-int/2addr v1, p4

    add-int/lit8 v0, v1, -0x1

    .line 198
    :goto_0
    if-gez v0, :cond_2

    .line 199
    const/4 v0, 0x0

    .line 202
    :cond_2
    add-int v1, v0, p5

    array-length v2, p3

    if-lt v1, v2, :cond_3

    .line 205
    array-length v1, p3

    sub-int v0, v1, p5

    .line 208
    :cond_3
    return v0

    .line 195
    :cond_4
    sub-int/2addr v0, p4

    goto :goto_0
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p3, v2

    if-lez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public value(DD)D
    .locals 23
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v12, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;

    invoke-direct {v12}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;-><init>()V

    .line 118
    .local v12, "interpolator":Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;
    const/4 v14, 0x2

    .line 119
    .local v14, "offset":I
    const/4 v2, 0x5

    .line 120
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    const/4 v7, 0x2

    const/4 v8, 0x5

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->searchIndex(D[DII)I

    move-result v9

    .line 121
    .local v9, "i":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    const/4 v7, 0x2

    const/4 v8, 0x5

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->searchIndex(D[DII)I

    move-result v13

    .line 123
    .local v13, "j":I
    const/4 v3, 0x5

    new-array v0, v3, [D

    move-object/from16 v18, v0

    .line 124
    .local v18, "xArray":[D
    const/4 v3, 0x5

    new-array v0, v3, [D

    move-object/from16 v19, v0

    .line 125
    .local v19, "yArray":[D
    const/4 v3, 0x5

    new-array v0, v3, [D

    move-object/from16 v20, v0

    .line 126
    .local v20, "zArray":[D
    const/4 v3, 0x5

    new-array v11, v3, [D

    .line 128
    .local v11, "interpArray":[D
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    const/4 v3, 0x5

    if-ge v10, v3, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    add-int v4, v9, v10

    aget-wide v4, v3, v4

    aput-wide v4, v18, v10

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    add-int v4, v13, v10

    aget-wide v4, v3, v4

    aput-wide v4, v19, v10

    .line 128
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const/16 v21, 0x0

    .local v21, "zIndex":I
    :goto_1
    const/4 v3, 0x5

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 134
    const/4 v10, 0x0

    :goto_2
    const/4 v3, 0x5

    if-ge v10, v3, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->fval:[[D

    add-int v4, v9, v10

    aget-object v3, v3, v4

    add-int v4, v13, v21

    aget-wide v4, v3, v4

    aput-wide v4, v20, v10

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 137
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v15

    .line 138
    .local v15, "spline":Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v11, v21

    .line 133
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 141
    .end local v15    # "spline":Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v11}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v15

    .line 143
    .restart local v15    # "spline":Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v16

    .line 145
    .local v16, "returnValue":D
    return-wide v16
.end method
