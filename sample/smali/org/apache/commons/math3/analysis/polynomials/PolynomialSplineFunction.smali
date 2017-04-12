.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
.super Ljava/lang/Object;
.source "PolynomialSplineFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# instance fields
.field private final knots:[D

.field private final n:I

.field private final polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;


# direct methods
.method public constructor <init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V
    .locals 5
    .param p1, "knots"    # [D
    .param p2, "polynomials"    # [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_1
    array-length v0, p1

    if-ge v0, v2, :cond_2

    .line 109
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_POINTS_IN_SPLINE_PARTITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 112
    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    array-length v1, p2

    if-eq v0, v1, :cond_3

    .line 113
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 115
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 117
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    .line 118
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    invoke-static {p2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomialSplineDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public getKnots()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [D

    .line 228
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-object v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    return v0
.end method

.method public getPolynomials()[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    new-array v0, v1, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 215
    .local v0, "p":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    return-object v0
.end method

.method public isValidPoint(D)Z
    .locals 5
    .param p1, "x"    # D

    .prologue
    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public polynomialSplineDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 4

    .prologue
    .line 167
    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    new-array v0, v2, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 168
    .local v0, "derivativePolynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    if-ge v1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v2
.end method

.method public value(D)D
    .locals 7
    .param p1, "v"    # D

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v2, v1, v4

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    .line 137
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 140
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 141
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 146
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 149
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v2, v2, v0

    sub-double v2, p1, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    const/4 v6, 0x0

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    .line 180
    .local v2, "t0":D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v4, v1, v6

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v4, v1, v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 181
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 183
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 184
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 185
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 190
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 191
    add-int/lit8 v0, v0, -0x1

    .line 193
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    aget-object v1, v1, v0

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    return-object v1
.end method
