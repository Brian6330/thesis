.class public Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SimpsonIntegrator.java"


# static fields
.field public static final SIMPSON_MAX_ITERATIONS_COUNT:I = 0x40


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


# virtual methods
.method protected doIntegrate()D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v8, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 104
    .local v8, "qtrap":Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getMinimalIterationCount()I

    move-result v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_1

    .line 105
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v18

    mul-double v16, v16, v18

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    div-double v12, v16, v18

    .line 120
    :cond_0
    return-wide v12

    .line 109
    :cond_1
    const-wide/16 v4, 0x0

    .line 110
    .local v4, "olds":D
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v6

    .line 112
    .local v6, "oldt":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v14

    .line 113
    .local v14, "t":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 114
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v14

    sub-double v16, v16, v6

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    div-double v12, v16, v18

    .line 115
    .local v12, "s":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getMinimalIterationCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v9, v0, :cond_2

    .line 116
    sub-double v16, v12, v4

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 117
    .local v2, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getRelativeAccuracy()D

    move-result-wide v16

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v18, v18, v20

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v10, v16, v18

    .line 119
    .local v10, "rLimit":D
    cmpg-double v9, v2, v10

    if-lez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v16

    cmpg-double v9, v2, v16

    if-lez v9, :cond_0

    .line 123
    .end local v2    # "delta":D
    .end local v10    # "rLimit":D
    :cond_2
    move-wide v4, v12

    .line 124
    move-wide v6, v14

    .line 125
    goto :goto_0
.end method
