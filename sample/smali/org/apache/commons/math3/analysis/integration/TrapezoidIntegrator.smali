.class public Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "TrapezoidIntegrator.java"


# static fields
.field public static final TRAPEZOID_MAX_ITERATIONS_COUNT:I = 0x40


# instance fields
.field private s:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x3

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 99
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

    .line 64
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 65
    if-le p6, v2, :cond_0

    .line 66
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 69
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

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 87
    if-le p2, v2, :cond_0

    .line 88
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v6

    .line 150
    .local v6, "oldt":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 152
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    .line 153
    .local v4, "i":I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v10

    .line 154
    .local v10, "t":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getMinimalIterationCount()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 155
    sub-double v12, v10, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 156
    .local v2, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getRelativeAccuracy()D

    move-result-wide v12

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v8, v12, v14

    .line 158
    .local v8, "rLimit":D
    cmpg-double v5, v2, v8

    if-lez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v12

    cmpg-double v5, v2, v12

    if-gtz v5, :cond_1

    .line 159
    :cond_0
    return-wide v10

    .line 162
    .end local v2    # "delta":D
    .end local v8    # "rLimit":D
    :cond_1
    move-wide v6, v10

    .line 163
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    goto :goto_0
.end method

.method stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D
    .locals 24
    .param p1, "baseIntegrator"    # Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p2, :cond_0

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v6

    .line 121
    .local v6, "max":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v8

    .line 122
    .local v8, "min":D
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    sub-double v20, v6, v8

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v22

    add-double v20, v20, v22

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    .line 125
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    move-wide/from16 v18, v0

    .line 140
    :goto_0
    return-wide v18

    .line 127
    .end local v6    # "max":D
    .end local v8    # "min":D
    :cond_0
    const-wide/16 v18, 0x1

    add-int/lit8 v20, p2, -0x1

    shl-long v10, v18, v20

    .line 128
    .local v10, "np":J
    const-wide/16 v14, 0x0

    .line 129
    .local v14, "sum":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v6

    .line 130
    .restart local v6    # "max":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v8

    .line 132
    .restart local v8    # "min":D
    sub-double v18, v6, v8

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v12, v18, v20

    .line 133
    .local v12, "spacing":D
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v12

    add-double v16, v8, v18

    .line 134
    .local v16, "x":D
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_1
    cmp-long v18, v4, v10

    if-gez v18, :cond_1

    .line 135
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v18

    add-double v14, v14, v18

    .line 136
    add-double v16, v16, v12

    .line 134
    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    goto :goto_1

    .line 139
    :cond_1
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    move-wide/from16 v20, v0

    mul-double v22, v14, v12

    add-double v20, v20, v22

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    .line 140
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    move-wide/from16 v18, v0

    goto :goto_0
.end method
