.class public Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "RombergIntegrator.java"


# static fields
.field public static final ROMBERG_MAX_ITERATIONS_COUNT:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x3

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 97
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
    const/16 v2, 0x20

    .line 62
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 63
    if-le p6, v2, :cond_0

    .line 64
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 67
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
    const/16 v2, 0x20

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 85
    if-le p2, v2, :cond_0

    .line 86
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v21

    add-int/lit8 v7, v21, 0x1

    .line 105
    .local v7, "m":I
    new-array v10, v7, [D

    .line 106
    .local v10, "previousRow":[D
    new-array v2, v7, [D

    .line 108
    .local v2, "currentRow":[D
    new-instance v11, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v11}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 109
    .local v11, "qtrap":Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v22

    aput-wide v22, v2, v21

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 111
    const/16 v21, 0x0

    aget-wide v8, v2, v21

    .line 114
    .local v8, "olds":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    .line 117
    .local v3, "i":I
    move-object/from16 v20, v10

    .line 118
    .local v20, "tmpRow":[D
    move-object v10, v2

    .line 119
    move-object/from16 v2, v20

    .line 121
    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v3}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v22

    aput-wide v22, v2, v21

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 123
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_1
    if-gt v6, v3, :cond_0

    .line 125
    const-wide/16 v22, 0x1

    mul-int/lit8 v21, v6, 0x2

    shl-long v22, v22, v21

    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v12, v0

    .line 126
    .local v12, "r":D
    add-int/lit8 v21, v6, -0x1

    aget-wide v18, v2, v21

    .line 127
    .local v18, "tIJm1":D
    add-int/lit8 v21, v6, -0x1

    aget-wide v22, v10, v21

    sub-double v22, v18, v22

    div-double v22, v22, v12

    add-double v22, v22, v18

    aput-wide v22, v2, v6

    .line 123
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 129
    .end local v12    # "r":D
    .end local v18    # "tIJm1":D
    :cond_0
    aget-wide v16, v2, v3

    .line 130
    .local v16, "s":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getMinimalIterationCount()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_2

    .line 131
    sub-double v22, v16, v8

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 132
    .local v4, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getRelativeAccuracy()D

    move-result-wide v22

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v14, v22, v24

    .line 133
    .local v14, "rLimit":D
    cmpg-double v21, v4, v14

    if-lez v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v22

    cmpg-double v21, v4, v22

    if-gtz v21, :cond_2

    .line 134
    :cond_1
    return-wide v16

    .line 137
    .end local v4    # "delta":D
    .end local v14    # "rLimit":D
    :cond_2
    move-wide/from16 v8, v16

    .line 138
    goto :goto_0
.end method
