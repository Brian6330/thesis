.class public Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;
.super Ljava/lang/Object;
.source "HermiteInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;


# instance fields
.field private final abscissae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[D>;"
        }
    .end annotation
.end field

.field private final topDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[D>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    .line 65
    return-void
.end method

.method private checkInterpolation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    .line 229
    :cond_0
    return-void
.end method

.method private varargs polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 1
    .param p1, "c"    # [D

    .prologue
    .line 236
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v0
.end method


# virtual methods
.method public varargs addSamplePoint(D[[D)V
    .locals 17
    .param p1, "x"    # D
    .param p3, "value"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v4, v11, :cond_4

    .line 91
    aget-object v11, p3, v4

    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 92
    .local v10, "y":[D
    const/4 v11, 0x1

    if-le v4, v11, :cond_0

    .line 93
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v4}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v14

    long-to-double v14, v14

    div-double v6, v12, v14

    .line 94
    .local v6, "inv":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v11, v10

    if-ge v5, v11, :cond_0

    .line 95
    aget-wide v12, v10, v5

    mul-double/2addr v12, v6

    aput-wide v12, v10, v5

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100
    .end local v5    # "j":I
    .end local v6    # "inv":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 101
    .local v9, "n":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    sub-int v12, v9, v4

    invoke-interface {v11, v12, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    move-object v2, v10

    .line 103
    .local v2, "bottom0":[D
    move v5, v4

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v9, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    add-int/lit8 v12, v5, 0x1

    sub-int v12, v9, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 105
    .local v3, "bottom1":[D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    add-int/lit8 v14, v5, 0x1

    sub-int v14, v9, v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    sub-double v14, p1, v14

    div-double v6, v12, v14

    .line 106
    .restart local v6    # "inv":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 107
    new-instance v11, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DUPLICATED_ABSCISSA_DIVISION_BY_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v11

    .line 109
    :cond_1
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    array-length v11, v10

    if-ge v8, v11, :cond_2

    .line 110
    aget-wide v12, v2, v8

    aget-wide v14, v3, v8

    sub-double/2addr v12, v14

    mul-double/2addr v12, v6

    aput-wide v12, v3, v8

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 112
    :cond_2
    move-object v2, v3

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 116
    .end local v3    # "bottom1":[D
    .end local v6    # "inv":D
    .end local v8    # "k":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 123
    .end local v2    # "bottom0":[D
    .end local v5    # "j":I
    .end local v9    # "n":I
    .end local v10    # "y":[D
    :cond_4
    return-void
.end method

.method public getPolynomials()[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 136
    new-array v6, v11, [D

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v10

    invoke-direct {p0, v6}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v5

    .line 137
    .local v5, "zero":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    array-length v6, v6

    new-array v3, v6, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 138
    .local v3, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 139
    aput-object v5, v3, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-array v6, v11, [D

    aput-wide v12, v6, v10

    invoke-direct {p0, v6}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    .line 144
    .local v0, "coeff":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 145
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 146
    .local v4, "tdi":[D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 147
    aget-object v6, v3, v2

    new-array v7, v11, [D

    aget-wide v8, v4, v2

    aput-wide v8, v7, v10

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->add(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v6

    aput-object v6, v3, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    :cond_1
    const/4 v6, 0x2

    new-array v7, v6, [D

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    neg-double v8, v8

    aput-wide v8, v7, v10

    aput-wide v12, v7, v11

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    .end local v2    # "k":I
    .end local v4    # "tdi":[D
    :cond_2
    return-object v3
.end method

.method public value(D)[D
    .locals 13
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 173
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    array-length v8, v8

    new-array v5, v8, [D

    .line 174
    .local v5, "value":[D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 175
    .local v6, "valueCoeff":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 176
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 177
    .local v2, "dividedDifference":[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_0

    .line 178
    aget-wide v8, v5, v4

    aget-wide v10, v2, v4

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v5, v4

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double v0, p1, v8

    .line 181
    .local v0, "deltaX":D
    mul-double/2addr v6, v0

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "deltaX":D
    .end local v2    # "dividedDifference":[D
    .end local v4    # "k":I
    :cond_1
    return-object v5
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .param p1, "x"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 205
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    array-length v6, v6

    new-array v4, v6, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 206
    .local v4, "value":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 208
    .local v5, "valueCoeff":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 209
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 210
    .local v1, "dividedDifference":[D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_0

    .line 211
    aget-object v6, v4, v3

    aget-wide v8, v1, v3

    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    aput-object v6, v4, v3

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 214
    .local v0, "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .end local v1    # "dividedDifference":[D
    .end local v3    # "k":I
    :cond_1
    return-object v4
.end method
