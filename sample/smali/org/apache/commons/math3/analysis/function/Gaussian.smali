.class public Lorg/apache/commons/math3/analysis/function/Gaussian;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
    }
.end annotation


# instance fields
.field private final i2s2:D

.field private final is:D

.field private final mean:D

.field private final norm:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DD)V

    .line 90
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
    .param p1, "mean"    # D
    .param p3, "sigma"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 82
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, p3

    div-double v2, v0, v2

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    .line 83
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 5
    .param p1, "norm"    # D
    .param p3, "mean"    # D
    .param p5, "sigma"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-gtz v0, :cond_0

    .line 63
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 66
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    .line 67
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    .line 68
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p5

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    .line 69
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->i2s2:D

    .line 70
    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D

    .prologue
    .line 40
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDD)D
    .locals 2
    .param p0, "xMinusMean"    # D
    .param p2, "norm"    # D
    .param p4, "i2s2"    # D

    .prologue
    .line 205
    neg-double v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->i2s2:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 20
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v8, v14, v16

    .line 215
    .local v8, "u":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v4, v14, [D

    .line 224
    .local v4, "f":[D
    array-length v14, v4

    new-array v7, v14, [D

    .line 225
    .local v7, "p":[D
    const/4 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v7, v14

    .line 226
    mul-double v10, v8, v8

    .line 227
    .local v10, "u2":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    const-wide/high16 v16, -0x4020000000000000L    # -0.5

    mul-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v16

    mul-double v2, v14, v16

    .line 228
    .local v2, "coeff":D
    sget-wide v14, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v14, v2, v14

    if-gtz v14, :cond_1

    .line 229
    const-wide/16 v14, 0x0

    invoke-static {v4, v14, v15}, Ljava/util/Arrays;->fill([DD)V

    .line 255
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v14

    return-object v14

    .line 231
    :cond_1
    const/4 v14, 0x0

    aput-wide v2, v4, v14

    .line 232
    const/4 v6, 0x1

    .local v6, "n":I
    :goto_0
    array-length v14, v4

    if-ge v6, v14, :cond_0

    .line 235
    const-wide/16 v12, 0x0

    .line 236
    .local v12, "v":D
    add-int/lit8 v14, v6, -0x1

    aget-wide v14, v7, v14

    neg-double v14, v14

    aput-wide v14, v7, v6

    .line 237
    move v5, v6

    .local v5, "k":I
    :goto_1
    if-ltz v5, :cond_4

    .line 238
    mul-double v14, v12, v10

    aget-wide v16, v7, v5

    add-double v12, v14, v16

    .line 239
    const/4 v14, 0x2

    if-le v5, v14, :cond_3

    .line 240
    add-int/lit8 v14, v5, -0x2

    add-int/lit8 v15, v5, -0x1

    int-to-double v0, v15

    move-wide/from16 v16, v0

    add-int/lit8 v15, v5, -0x1

    aget-wide v18, v7, v15

    mul-double v16, v16, v18

    add-int/lit8 v15, v5, -0x3

    aget-wide v18, v7, v15

    sub-double v16, v16, v18

    aput-wide v16, v7, v14

    .line 237
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    .line 241
    :cond_3
    const/4 v14, 0x2

    if-ne v5, v14, :cond_2

    .line 242
    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-wide v16, v7, v15

    aput-wide v16, v7, v14

    goto :goto_2

    .line 245
    :cond_4
    and-int/lit8 v14, v6, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 246
    mul-double/2addr v12, v8

    .line 249
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double/2addr v2, v14

    .line 250
    mul-double v14, v2, v12

    aput-wide v14, v4, v6

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
