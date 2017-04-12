.class public Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "IterativeLegendreGaussIntegrator.java"


# static fields
.field private static final FACTORY:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;


# instance fields
.field private final numberOfPoints:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->FACTORY:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "relativeAccuracy"    # D
    .param p4, "absoluteAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;-><init>(IDDII)V

    .line 95
    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "relativeAccuracy"    # D
    .param p4, "absoluteAccuracy"    # D
    .param p6, "minimalIterationCount"    # I
    .param p7, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 75
    if-gtz p1, :cond_0

    .line 76
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 78
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->numberOfPoints:I

    .line 79
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "minimalIterationCount"    # I
    .param p3, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 113
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;-><init>(IDDII)V

    .line 115
    return-void
.end method

.method private stage(I)D
    .locals 22
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v8, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;-><init>(Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;)V

    .line 167
    .local v8, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getMin()D

    move-result-wide v14

    .line 168
    .local v14, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getMax()D

    move-result-wide v12

    .line 169
    .local v12, "max":D
    sub-double v2, v12, v14

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v16, v2, v20

    .line 171
    .local v16, "step":D
    const-wide/16 v18, 0x0

    .line 172
    .local v18, "sum":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v10, v0, :cond_0

    .line 174
    int-to-double v2, v10

    mul-double v2, v2, v16

    add-double v4, v14, v2

    .line 175
    .local v4, "a":D
    add-double v6, v4, v16

    .line 176
    .local v6, "b":D
    sget-object v2, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->FACTORY:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->numberOfPoints:I

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendreHighPrecision(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    move-result-object v9

    .line 177
    .local v9, "g":Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D

    move-result-wide v2

    add-double v18, v18, v2

    .line 172
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v9    # "g":Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    :cond_0
    return-wide v18
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->stage(I)D

    move-result-wide v8

    .line 124
    .local v8, "oldt":D
    const/4 v6, 0x2

    .line 127
    .local v6, "n":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->stage(I)D

    move-result-wide v12

    .line 130
    .local v12, "t":D
    sub-double v14, v12, v8

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 131
    .local v2, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getRelativeAccuracy()D

    move-result-wide v16

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v18, v18, v20

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 136
    .local v4, "limit":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getMinimalIterationCount()I

    move-result v14

    if-lt v7, v14, :cond_0

    cmpg-double v7, v2, v4

    if-gtz v7, :cond_0

    .line 138
    return-wide v12

    .line 142
    :cond_0
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v16, v2, v4

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->numberOfPoints:I

    int-to-double v0, v7

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    .line 143
    .local v10, "ratio":D
    int-to-double v14, v6

    mul-double/2addr v14, v10

    double-to-int v7, v14

    add-int/lit8 v14, v6, 0x1

    invoke-static {v7, v14}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    .line 144
    move-wide v8, v12

    .line 145
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    goto :goto_0
.end method
