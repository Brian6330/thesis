.class public abstract Lorg/apache/commons/math3/util/ContinuedFraction;
.super Ljava/lang/Object;
.source "ContinuedFraction.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-8


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public evaluate(D)D
    .locals 7
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 72
    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate(DD)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "epsilon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 83
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate(DDI)D
    .locals 31
    .param p1, "x"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide v28, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 125
    .local v28, "small":D
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v4

    .line 128
    .local v4, "hPrev":D
    const-wide/16 v6, 0x0

    const-wide v8, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 129
    const-wide v4, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 132
    :cond_0
    const/16 v26, 0x1

    .line 133
    .local v26, "n":I
    const-wide/16 v20, 0x0

    .line 134
    .local v20, "dPrev":D
    move-wide/from16 v18, v4

    .line 135
    .local v18, "cPrev":D
    move-wide/from16 v24, v4

    .line 137
    .local v24, "hN":D
    :goto_0
    move/from16 v0, v26

    move/from16 v1, p5

    if-ge v0, v1, :cond_5

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v14

    .line 139
    .local v14, "a":D
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ContinuedFraction;->getB(ID)D

    move-result-wide v16

    .line 141
    .local v16, "b":D
    mul-double v10, v16, v20

    add-double v6, v14, v10

    .line 142
    .local v6, "dN":D
    const-wide/16 v8, 0x0

    const-wide v10, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 143
    const-wide v6, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 145
    :cond_1
    div-double v10, v16, v18

    add-double v8, v14, v10

    .line 146
    .local v8, "cN":D
    const-wide/16 v10, 0x0

    const-wide v12, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 147
    const-wide v8, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 150
    :cond_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v6, v10, v6

    .line 151
    mul-double v22, v8, v6

    .line 152
    .local v22, "deltaN":D
    mul-double v24, v4, v22

    .line 154
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    new-instance v10, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v12, v13

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v10

    .line 158
    :cond_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 159
    new-instance v10, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v12, v13

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v10

    .line 163
    :cond_4
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v22, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpg-double v10, v10, p3

    if-gez v10, :cond_6

    .line 173
    .end local v6    # "dN":D
    .end local v8    # "cN":D
    .end local v14    # "a":D
    .end local v16    # "b":D
    .end local v22    # "deltaN":D
    :cond_5
    move/from16 v0, v26

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    .line 174
    new-instance v10, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v27, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    aput-object v30, v13, v27

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v10

    .line 167
    .restart local v6    # "dN":D
    .restart local v8    # "cN":D
    .restart local v14    # "a":D
    .restart local v16    # "b":D
    .restart local v22    # "deltaN":D
    :cond_6
    move-wide/from16 v20, v6

    .line 168
    move-wide/from16 v18, v8

    .line 169
    move-wide/from16 v4, v24

    .line 170
    add-int/lit8 v26, v26, 0x1

    .line 171
    goto/16 :goto_0

    .line 178
    .end local v6    # "dN":D
    .end local v8    # "cN":D
    .end local v14    # "a":D
    .end local v16    # "b":D
    .end local v22    # "deltaN":D
    :cond_7
    return-wide v24
.end method

.method public evaluate(DI)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 96
    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getA(ID)D
.end method

.method protected abstract getB(ID)D
.end method
