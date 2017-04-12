.class public Lorg/apache/commons/math3/analysis/function/Sigmoid;
.super Ljava/lang/Object;
.source "Sigmoid.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
    }
.end annotation


# instance fields
.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Sigmoid;-><init>(DD)V

    .line 53
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "lo"    # D
    .param p3, "hi"    # D

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    .line 64
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    .line 65
    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D

    .prologue
    .line 41
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDD)D
    .locals 6
    .param p0, "x"    # D
    .param p2, "lo"    # D
    .param p4, "hi"    # D

    .prologue
    .line 161
    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    neg-double v4, p0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
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
    .line 77
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 22
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v6, v14, [D

    .line 171
    .local v6, "f":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    neg-double v14, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    .line 172
    .local v4, "exp":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 175
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    move-wide/from16 v16, v0

    aput-wide v16, v6, v14

    .line 176
    const/4 v14, 0x1

    array-length v15, v6

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v14, v15, v0, v1}, Ljava/util/Arrays;->fill([DIID)V

    .line 214
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v14

    return-object v14

    .line 186
    :cond_0
    array-length v14, v6

    new-array v11, v14, [D

    .line 188
    .local v11, "p":[D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v4

    div-double v8, v14, v16

    .line 189
    .local v8, "inv":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    move-wide/from16 v16, v0

    sub-double v2, v14, v16

    .line 190
    .local v2, "coeff":D
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_1
    array-length v14, v6

    if-ge v10, v14, :cond_3

    .line 193
    const-wide/16 v12, 0x0

    .line 194
    .local v12, "v":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v11, v10

    .line 195
    move v7, v10

    .local v7, "k":I
    :goto_2
    if-ltz v7, :cond_2

    .line 196
    mul-double v14, v12, v4

    aget-wide v16, v11, v7

    add-double v12, v14, v16

    .line 197
    const/4 v14, 0x1

    if-le v7, v14, :cond_1

    .line 198
    add-int/lit8 v14, v7, -0x1

    sub-int v15, v10, v7

    add-int/lit8 v15, v15, 0x2

    int-to-double v0, v15

    move-wide/from16 v16, v0

    add-int/lit8 v15, v7, -0x2

    aget-wide v18, v11, v15

    mul-double v16, v16, v18

    add-int/lit8 v15, v7, -0x1

    int-to-double v0, v15

    move-wide/from16 v18, v0

    add-int/lit8 v15, v7, -0x1

    aget-wide v20, v11, v15

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    aput-wide v16, v11, v14

    .line 195
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 200
    :cond_1
    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    aput-wide v16, v11, v14

    goto :goto_3

    .line 204
    :cond_2
    mul-double/2addr v2, v8

    .line 205
    mul-double v14, v2, v12

    aput-wide v14, v6, v10

    .line 190
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 210
    .end local v7    # "k":I
    .end local v12    # "v":D
    :cond_3
    const/4 v14, 0x0

    aget-wide v16, v6, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v6, v14

    goto :goto_0
.end method
