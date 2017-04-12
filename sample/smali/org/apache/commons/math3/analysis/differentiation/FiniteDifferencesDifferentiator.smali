.class public Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateVectorFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateMatrixFunctionDifferentiator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330555L


# instance fields
.field private final halfSampleSpan:D

.field private final nbPoints:I

.field private final stepSize:D

.field private final tMax:D

.field private final tMin:D


# direct methods
.method public constructor <init>(ID)V
    .locals 8
    .param p1, "nbPoints"    # I
    .param p2, "stepSize"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 108
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;-><init>(IDDD)V

    .line 109
    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 8
    .param p1, "nbPoints"    # I
    .param p2, "stepSize"    # D
    .param p4, "tLower"    # D
    .param p6, "tUpper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    .line 145
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 147
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    .line 149
    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gtz v2, :cond_1

    .line 150
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 152
    :cond_1
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    .line 154
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, p2

    add-int/lit8 v4, p1, -0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    .line 155
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    mul-double/2addr v2, v4

    sub-double v4, p6, p4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 156
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sub-double v4, p6, p4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 158
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    .line 159
    .local v0, "safety":D
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    add-double/2addr v2, p4

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    .line 160
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    sub-double v2, p6, v2

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    .line 162
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .prologue
    .line 70
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;
    .param p1, "x1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "x2"    # D
    .param p4, "x3"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method private evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 22
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "t0"    # D
    .param p4, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    new-array v13, v14, [D

    .line 198
    .local v13, "top":[D
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    new-array v2, v14, [D

    .line 200
    .local v2, "bottom":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v5, v14, :cond_1

    .line 203
    aget-wide v14, p4, v5

    aput-wide v14, v2, v5

    .line 204
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_1
    if-gt v9, v5, :cond_0

    .line 205
    sub-int v14, v5, v9

    sub-int v15, v5, v9

    add-int/lit8 v15, v15, 0x1

    aget-wide v16, v2, v15

    sub-int v15, v5, v9

    aget-wide v18, v2, v15

    sub-double v16, v16, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v16, v16, v18

    aput-wide v16, v2, v14

    .line 204
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 209
    :cond_0
    const/4 v14, 0x0

    aget-wide v14, v2, v14

    aput-wide v14, v13, v5

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    .end local v9    # "j":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v11

    .line 215
    .local v11, "order":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v12

    .line 216
    .local v12, "parameters":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v4

    .line 217
    .local v4, "derivatives":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    sub-double v6, v14, p2

    .line 218
    .local v6, "dt0":D
    new-instance v8, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/16 v14, 0x0

    invoke-direct {v8, v12, v11, v14, v15}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 219
    .local v8, "interpolation":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v10, 0x0

    .line 220
    .local v10, "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v5, v14, :cond_3

    .line 221
    if-nez v5, :cond_2

    .line 223
    new-instance v10, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .end local v10    # "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-direct {v10, v12, v11, v14, v15}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 230
    .restart local v10    # "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :goto_3
    aget-wide v14, v13, v5

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v8

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 226
    :cond_2
    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v16, v6, v16

    aput-wide v16, v4, v14

    .line 227
    new-instance v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v3, v12, v11, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    .line 228
    .local v3, "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v10

    goto :goto_3

    .line 233
    .end local v3    # "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_3
    return-object v8
.end method


# virtual methods
.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 244
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    .prologue
    .line 335
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    .prologue
    .line 284
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V

    return-object v0
.end method

.method public getNbPoints()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return v0
.end method

.method public getStepSize()D
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method
