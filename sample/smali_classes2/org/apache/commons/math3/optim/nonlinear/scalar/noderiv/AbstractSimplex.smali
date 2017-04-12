.class public abstract Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.super Ljava/lang/Object;
.source "AbstractSimplex.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final dimension:I

.field private simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

.field private startConfiguration:[[D


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 65
    return-void
.end method

.method protected constructor <init>(ID)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "sideLength"    # D

    .prologue
    .line 75
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->createHypercubeSteps(ID)[D

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 76
    return-void
.end method

.method protected constructor <init>([D)V
    .locals 9
    .param p1, "steps"    # [D

    .prologue
    const/4 v8, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 100
    :cond_0
    array-length v3, p1

    if-nez v3, :cond_1

    .line 101
    new-instance v3, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v3

    .line 103
    :cond_1
    array-length v3, p1

    iput v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    .line 107
    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v0, v3, :cond_4

    .line 109
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    aget-object v2, v3, v0

    .line 110
    .local v2, "vertexI":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    add-int/lit8 v3, v0, 0x1

    if-ge v1, v3, :cond_3

    .line 111
    aget-wide v4, p1, v1

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    .line 112
    new-instance v3, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EQUAL_VERTICES_IN_SIMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 114
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "j":I
    .end local v2    # "vertexI":[D
    :cond_4
    return-void
.end method

.method protected constructor <init>([[D)V
    .locals 13
    .param p1, "referenceSimplex"    # [[D

    .prologue
    const/4 v12, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    array-length v8, p1

    if-gtz v8, :cond_0

    .line 133
    new-instance v8, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLEX_NEED_ONE_POINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v10, p1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v8

    .line 136
    :cond_0
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    .line 140
    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    .line 141
    aget-object v5, p1, v12

    .line 144
    .local v5, "ref0":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_7

    .line 145
    aget-object v6, p1, v2

    .line 148
    .local v6, "refI":[D
    array-length v8, v6

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-eq v8, v9, :cond_1

    .line 149
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v9, v6

    iget v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 151
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 152
    aget-object v7, p1, v3

    .line 153
    .local v7, "refJ":[D
    const/4 v0, 0x1

    .line 154
    .local v0, "allEquals":Z
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v4, v8, :cond_2

    .line 155
    aget-wide v8, v6, v4

    aget-wide v10, v7, v4

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_3

    .line 156
    const/4 v0, 0x0

    .line 160
    :cond_2
    if-eqz v0, :cond_4

    .line 161
    new-instance v8, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EQUAL_VERTICES_IN_SIMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8

    .line 154
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 151
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "allEquals":Z
    .end local v4    # "k":I
    .end local v7    # "refJ":[D
    :cond_5
    if-lez v2, :cond_6

    .line 168
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    add-int/lit8 v9, v2, -0x1

    aget-object v1, v8, v9

    .line 169
    .local v1, "confI":[D
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_3
    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v4, v8, :cond_6

    .line 170
    aget-wide v8, v6, v4

    aget-wide v10, v5, v4

    sub-double/2addr v8, v10

    aput-wide v8, v1, v4

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 144
    .end local v1    # "confI":[D
    .end local v4    # "k":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v3    # "j":I
    .end local v6    # "refI":[D
    :cond_7
    return-void
.end method

.method private static createHypercubeSteps(ID)[D
    .locals 3
    .param p0, "n"    # I
    .param p1, "sideLength"    # D

    .prologue
    .line 339
    new-array v1, p0, [D

    .line 340
    .local v1, "steps":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 341
    aput-wide p1, v1, v0

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-object v1
.end method


# virtual methods
.method public build([D)V
    .locals 10
    .param p1, "startPoint"    # [D

    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 216
    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    array-length v5, p1

    if-eq v4, v5, :cond_0

    .line 217
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    array-length v6, p1

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 221
    :cond_0
    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lorg/apache/commons/math3/optim/PointValuePair;

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    .line 222
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v6, p1, v8, v9}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    aput-object v6, v4, v5

    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v1, v4, :cond_2

    .line 226
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    aget-object v0, v4, v1

    .line 227
    .local v0, "confI":[D
    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    new-array v3, v4, [D

    .line 228
    .local v3, "vertexI":[D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v2, v4, :cond_1

    .line 229
    aget-wide v4, p1, v2

    aget-wide v6, v0, v2

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v6, v3, v8, v9}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    aput-object v6, v4, v5

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "confI":[D
    .end local v2    # "k":I
    .end local v3    # "vertexI":[D
    :cond_2
    return-void
.end method

.method public evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 8
    .param p1, "evaluationFunction"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 247
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aget-object v2, v3, v0

    .line 248
    .local v2, "vertex":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v1

    .line 249
    .local v1, "point":[D
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v6

    const/4 v5, 0x0

    invoke-direct {v4, v1, v6, v7, v5}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    aput-object v4, v3, v0

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "point":[D
    .end local v2    # "vertex":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-static {v3, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 256
    return-void
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    return v0
.end method

.method public getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 295
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 297
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v1

    new-array v0, v1, [Lorg/apache/commons/math3/optim/PointValuePair;

    .line 284
    .local v0, "copy":[Lorg/apache/commons/math3/optim/PointValuePair;
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v0, v0

    return v0
.end method

.method public abstract iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation
.end method

.method protected replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V
    .locals 4
    .param p1, "pointValuePair"    # Lorg/apache/commons/math3/optim/PointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v0, v2, :cond_1

    .line 268
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aget-object v2, v2, v0

    invoke-interface {p2, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 269
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aget-object v1, v2, v0

    .line 270
    .local v1, "tmp":Lorg/apache/commons/math3/optim/PointValuePair;
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aput-object p1, v2, v0

    .line 271
    move-object p1, v1

    .line 267
    .end local v1    # "tmp":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    aput-object p1, v2, v3

    .line 275
    return-void
.end method

.method protected setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "point"    # Lorg/apache/commons/math3/optim/PointValuePair;

    .prologue
    .line 310
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 312
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aput-object p2, v0, p1

    .line 315
    return-void
.end method

.method protected setPoints([Lorg/apache/commons/math3/optim/PointValuePair;)V
    .locals 3
    .param p1, "points"    # [Lorg/apache/commons/math3/optim/PointValuePair;

    .prologue
    .line 324
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 325
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 327
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    .line 328
    return-void
.end method
