.class public Lorg/apache/commons/math3/transform/FastCosineTransformer;
.super Ljava/lang/Object;
.source "FastCosineTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330294L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DctNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DctNormalization;)V
    .locals 0
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DctNormalization;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    .line 82
    return-void
.end method


# virtual methods
.method protected fct([D)[D
    .locals 24
    .param p1, "f"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v12, v0, [D

    .line 140
    .local v12, "transformed":[D
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v9, v16, -0x1

    .line 141
    .local v9, "n":I
    int-to-long v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v16

    if-nez v16, :cond_0

    .line 142
    new-instance v16, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v17, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_PLUS_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-direct/range {v16 .. v18}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v16

    .line 146
    :cond_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_1

    .line 147
    const/16 v16, 0x0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const/16 v17, 0x0

    aget-wide v20, p1, v17

    const/16 v17, 0x1

    aget-wide v22, p1, v17

    add-double v20, v20, v22

    mul-double v18, v18, v20

    aput-wide v18, v12, v16

    .line 148
    const/16 v16, 0x1

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const/16 v17, 0x0

    aget-wide v20, p1, v17

    const/16 v17, 0x1

    aget-wide v22, p1, v17

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    aput-wide v18, v12, v16

    .line 179
    :goto_0
    return-object v12

    .line 153
    :cond_1
    new-array v14, v9, [D

    .line 154
    .local v14, "x":[D
    const/16 v16, 0x0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const/16 v17, 0x0

    aget-wide v20, p1, v17

    aget-wide v22, p1, v9

    add-double v20, v20, v22

    mul-double v18, v18, v20

    aput-wide v18, v14, v16

    .line 155
    shr-int/lit8 v16, v9, 0x1

    shr-int/lit8 v17, v9, 0x1

    aget-wide v18, p1, v17

    aput-wide v18, v14, v16

    .line 157
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const/16 v18, 0x0

    aget-wide v18, p1, v18

    aget-wide v20, p1, v9

    sub-double v18, v18, v20

    mul-double v10, v16, v18

    .line 158
    .local v10, "t1":D
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    shr-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    if-ge v8, v0, :cond_2

    .line 159
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    aget-wide v18, p1, v8

    sub-int v20, v9, v8

    aget-wide v20, p1, v20

    add-double v18, v18, v20

    mul-double v2, v16, v18

    .line 160
    .local v2, "a":D
    int-to-double v0, v8

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v16

    aget-wide v18, p1, v8

    sub-int v20, v9, v8

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    mul-double v4, v16, v18

    .line 161
    .local v4, "b":D
    int-to-double v0, v8

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v16

    aget-wide v18, p1, v8

    sub-int v20, v9, v8

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    mul-double v6, v16, v18

    .line 162
    .local v6, "c":D
    sub-double v16, v2, v4

    aput-wide v16, v14, v8

    .line 163
    sub-int v16, v9, v8

    add-double v18, v2, v4

    aput-wide v18, v14, v16

    .line 164
    add-double/2addr v10, v6

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 167
    .end local v2    # "a":D
    .end local v4    # "b":D
    .end local v6    # "c":D
    :cond_2
    new-instance v13, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v16, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    .line 168
    .local v13, "transformer":Lorg/apache/commons/math3/transform/FastFourierTransformer;
    sget-object v16, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v15

    .line 171
    .local v15, "y":[Lorg/apache/commons/math3/complex/Complex;
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v18

    aput-wide v18, v12, v16

    .line 172
    const/16 v16, 0x1

    aput-wide v10, v12, v16

    .line 173
    const/4 v8, 0x1

    :goto_2
    shr-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 174
    mul-int/lit8 v16, v8, 0x2

    aget-object v17, v15, v8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v18

    aput-wide v18, v12, v16

    .line 175
    mul-int/lit8 v16, v8, 0x2

    add-int/lit8 v16, v16, 0x1

    mul-int/lit8 v17, v8, 0x2

    add-int/lit8 v17, v17, -0x1

    aget-wide v18, v12, v17

    aget-object v17, v15, v8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v20

    sub-double v18, v18, v20

    aput-wide v18, v12, v16

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 177
    :cond_3
    shr-int/lit8 v16, v9, 0x1

    aget-object v16, v15, v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v16

    aput-wide v16, v12, v9

    goto/16 :goto_0
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 2
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    .line 124
    .local v0, "data":[D
    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object v1

    return-object v1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 10
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 92
    sget-object v6, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v6, :cond_1

    .line 93
    iget-object v6, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v7, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne v6, v7, :cond_0

    .line 94
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    div-double v6, v8, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 95
    .local v0, "s":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object v6

    invoke-static {v6, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v6

    .line 106
    .end local v0    # "s":D
    :goto_0
    return-object v6

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object v6

    goto :goto_0

    .line 99
    :cond_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    div-double v4, v8, v6

    .line 101
    .local v4, "s2":D
    iget-object v6, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v7, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne v6, v7, :cond_2

    .line 102
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 106
    .local v2, "s1":D
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object v6

    invoke-static {v6, v2, v3}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v6

    goto :goto_0

    .line 104
    .end local v2    # "s1":D
    :cond_2
    move-wide v2, v4

    .restart local v2    # "s1":D
    goto :goto_1
.end method
