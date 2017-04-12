.class public Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;
.super Ljava/lang/Object;
.source "LinearInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 12
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
    .line 49
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_0

    .line 50
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v6, p1

    array-length v7, p2

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 53
    :cond_0
    array-length v5, p1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 54
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 59
    :cond_1
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 61
    .local v3, "n":I
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 64
    new-array v2, v3, [D

    .line 65
    .local v2, "m":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 66
    add-int/lit8 v5, v1, 0x1

    aget-wide v6, p2, v5

    aget-wide v8, p2, v1

    sub-double/2addr v6, v8

    add-int/lit8 v5, v1, 0x1

    aget-wide v8, p1, v5

    aget-wide v10, p1, v1

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aput-wide v6, v2, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    new-array v4, v3, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 70
    .local v4, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 71
    .local v0, "coefficients":[D
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 72
    const/4 v5, 0x0

    aget-wide v6, p2, v1

    aput-wide v6, v0, v5

    .line 73
    const/4 v5, 0x1

    aget-wide v6, v2, v1

    aput-wide v6, v0, v5

    .line 74
    new-instance v5, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v5, v4, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_3
    new-instance v5, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v5, p1, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v5
.end method
