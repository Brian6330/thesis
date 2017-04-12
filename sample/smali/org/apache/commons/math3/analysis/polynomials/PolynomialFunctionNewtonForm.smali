.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
.super Ljava/lang/Object;
.source "PolynomialFunctionNewtonForm.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# instance fields
.field private final a:[D

.field private final c:[D

.field private coefficients:[D

.field private coefficientsComputed:Z


# direct methods
.method public constructor <init>([D[D)V
    .locals 3
    .param p1, "a"    # [D
    .param p2, "c"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 82
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    .line 83
    array-length v0, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-boolean v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    .line 87
    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 8
    .param p0, "a"    # [D
    .param p1, "c"    # [D
    .param p2, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 185
    array-length v1, p1

    .line 186
    .local v1, "n":I
    aget-wide v2, p0, v1

    .line 187
    .local v2, "value":D
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 188
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double v6, p2, v6

    mul-double/2addr v6, v2

    add-double v2, v4, v6

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    :cond_0
    return-wide v2
.end method

.method protected static verifyInputArray([D[D)V
    .locals 4
    .param p0, "a"    # [D
    .param p1, "c"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    .line 239
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_2

    .line 240
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v2, p0

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    .line 243
    :cond_2
    return-void
.end method


# virtual methods
.method protected computeCoefficients()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->degree()I

    move-result v2

    .line 201
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 203
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v4, v4, v2

    aput-wide v4, v3, v10

    .line 207
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 208
    sub-int v1, v2, v0

    .local v1, "j":I
    :goto_2
    if-lez v1, :cond_1

    .line 209
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v6, v6, v0

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aput-wide v4, v3, v1

    .line 208
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 211
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v4, v4, v0

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v6, v6, v0

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    aget-wide v8, v8, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aput-wide v4, v3, v10

    .line 207
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 214
    .end local v1    # "j":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    .line 215
    return-void
.end method

.method public degree()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v0, v0

    return v0
.end method

.method public getCenters()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 147
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-object v0
.end method

.method public getCoefficients()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-boolean v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->computeCoefficients()V

    .line 162
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 163
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    return-object v0
.end method

.method public getNewtonCoefficients()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 134
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-object v0
.end method

.method public value(D)D
    .locals 3
    .param p1, "z"    # D

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->evaluate([D[DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .line 104
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 106
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v1, v3

    .line 107
    .local v1, "n":I
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v6, v5, v1

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 108
    .local v2, "value":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 109
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v4, v3, v0

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object v2
.end method
