.class public Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "MidPointIntegrator.java"


# static fields
.field public static final MIDPOINT_MAX_ITERATIONS_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x3

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 96
    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 5
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "minimalIterationCount"    # I
    .param p6, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 62
    if-le p6, v2, :cond_0

    .line 63
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "minimalIterationCount"    # I
    .param p2, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 84
    if-le p2, v2, :cond_0

    .line 85
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method private stage(IDDD)D
    .locals 14
    .param p1, "n"    # I
    .param p2, "previousStageResult"    # D
    .param p4, "min"    # D
    .param p6, "diffMaxMin"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v10, 0x1

    add-int/lit8 v12, p1, -0x1

    shl-long v2, v10, v12

    .line 125
    .local v2, "np":J
    const-wide/16 v6, 0x0

    .line 128
    .local v6, "sum":D
    long-to-double v10, v2

    div-double v4, p6, v10

    .line 131
    .local v4, "spacing":D
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v4

    add-double v8, p4, v10

    .line 132
    .local v8, "x":D
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v10, v0, v2

    if-gez v10, :cond_0

    .line 133
    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v10

    add-double/2addr v6, v10

    .line 134
    add-double/2addr v8, v4

    .line 132
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    goto :goto_0

    .line 137
    :cond_0
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v6, v4

    add-double v12, v12, p2

    mul-double/2addr v10, v12

    return-wide v10
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMin()D

    move-result-wide v6

    .line 147
    .local v6, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMax()D

    move-result-wide v18

    sub-double v8, v18, v6

    .line 148
    .local v8, "diff":D
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v8

    add-double v12, v6, v18

    .line 150
    .local v12, "midPoint":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v18

    mul-double v4, v8, v18

    .line 153
    .local v4, "oldt":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    .local v3, "i":I
    move-object/from16 v2, p0

    .line 155
    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->stage(IDDD)D

    move-result-wide v16

    .line 156
    .local v16, "t":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMinimalIterationCount()I

    move-result v2

    if-lt v3, v2, :cond_1

    .line 157
    sub-double v18, v16, v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    .line 158
    .local v10, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getRelativeAccuracy()D

    move-result-wide v18

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    add-double v20, v20, v22

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v14, v18, v20

    .line 160
    .local v14, "rLimit":D
    cmpg-double v2, v10, v14

    if-lez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v18

    cmpg-double v2, v10, v18

    if-gtz v2, :cond_1

    .line 161
    :cond_0
    return-wide v16

    .line 164
    .end local v10    # "delta":D
    .end local v14    # "rLimit":D
    :cond_1
    move-wide/from16 v4, v16

    .line 165
    goto :goto_0
.end method
