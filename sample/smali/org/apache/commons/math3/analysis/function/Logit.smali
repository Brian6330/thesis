.class public Lorg/apache/commons/math3/analysis/function/Logit;
.super Ljava/lang/Object;
.source "Logit.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
    }
.end annotation


# instance fields
.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Logit;-><init>(DD)V

    .line 50
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "lo"    # D
    .param p3, "hi"    # D

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    .line 61
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    .line 62
    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDD)D
    .locals 4
    .param p0, "x"    # D
    .param p2, "lo"    # D
    .param p4, "hi"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 161
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 164
    :cond_1
    sub-double v0, p0, p2

    sub-double v2, p4, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 7
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 67
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 20
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    .line 174
    .local v8, "x":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    cmpg-double v14, v8, v14

    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    cmpl-double v14, v8, v14

    if-lez v14, :cond_1

    .line 175
    :cond_0
    new-instance v14, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v14

    .line 177
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v2, v14, [D

    .line 180
    .local v2, "f":[D
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    move-wide/from16 v16, v0

    sub-double v16, v8, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    move-wide/from16 v18, v0

    sub-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v16

    aput-wide v16, v2, v14

    .line 182
    const/4 v14, 0x0

    aget-wide v14, v2, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 184
    array-length v14, v2

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    .line 185
    const/4 v14, 0x1

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v16, v2, v14

    .line 192
    :cond_2
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v14, v2

    if-ge v3, v14, :cond_4

    .line 193
    add-int/lit8 v14, v3, -0x2

    aget-wide v14, v2, v14

    aput-wide v14, v2, v3

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "i":I
    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    move-wide/from16 v16, v0

    sub-double v16, v8, v16

    div-double v6, v14, v16

    .line 200
    .local v6, "invL":D
    move-wide v12, v6

    .line 201
    .local v12, "xL":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    move-wide/from16 v16, v0

    sub-double v16, v16, v8

    div-double v4, v14, v16

    .line 202
    .local v4, "invH":D
    move-wide v10, v4

    .line 203
    .local v10, "xH":D
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    array-length v14, v2

    if-ge v3, v14, :cond_4

    .line 204
    add-double v14, v12, v10

    aput-wide v14, v2, v3

    .line 205
    neg-int v14, v3

    int-to-double v14, v14

    mul-double/2addr v14, v6

    mul-double/2addr v12, v14

    .line 206
    int-to-double v14, v3

    mul-double/2addr v14, v4

    mul-double/2addr v10, v14

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    .end local v4    # "invH":D
    .end local v6    # "invL":D
    .end local v10    # "xH":D
    .end local v12    # "xL":D
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v14

    return-object v14
.end method
