.class public Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;
.super Ljava/lang/Object;
.source "DividedDifferenceInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17c50f88a3a43fdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static computeDividedDifference([D[D)[D
    .locals 13
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 102
    const/4 v7, 0x1

    invoke-static {p0, p1, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 104
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 106
    .local v1, "divdiff":[D
    array-length v6, p0

    .line 107
    .local v6, "n":I
    new-array v0, v6, [D

    .line 108
    .local v0, "a":[D
    aget-wide v8, v1, v12

    aput-wide v8, v0, v12

    .line 109
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 110
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    sub-int v7, v6, v4

    if-ge v5, v7, :cond_0

    .line 111
    add-int v7, v5, v4

    aget-wide v8, p0, v7

    aget-wide v10, p0, v5

    sub-double v2, v8, v10

    .line 112
    .local v2, "denominator":D
    add-int/lit8 v7, v5, 0x1

    aget-wide v8, v1, v7

    aget-wide v10, v1, v5

    sub-double/2addr v8, v10

    div-double/2addr v8, v2

    aput-wide v8, v1, v5

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    .end local v2    # "denominator":D
    :cond_0
    aget-wide v8, v1, v12

    aput-wide v8, v0, v4

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v5    # "j":I
    :cond_1
    return-object v0
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
    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
    .locals 4
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
    const/4 v3, 0x0

    .line 63
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 73
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [D

    .line 74
    .local v1, "c":[D
    array-length v2, v1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;->computeDividedDifference([D[D)[D

    move-result-object v0

    .line 77
    .local v0, "a":[D
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;-><init>([D[D)V

    return-object v2
.end method
