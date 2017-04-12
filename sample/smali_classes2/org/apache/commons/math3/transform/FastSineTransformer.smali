.class public Lorg/apache/commons/math3/transform/FastSineTransformer;
.super Ljava/lang/Object;
.source "FastSineTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DstNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DstNormalization;)V
    .locals 0
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DstNormalization;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastSineTransformer;->normalization:Lorg/apache/commons/math3/transform/DstNormalization;

    .line 85
    return-void
.end method


# virtual methods
.method protected fst([D)[D
    .locals 18
    .param p1, "f"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p1

    array-length v12, v0

    new-array v8, v12, [D

    .line 140
    .local v8, "transformed":[D
    move-object/from16 v0, p1

    array-length v12, v0

    int-to-long v12, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v12

    if-nez v12, :cond_0

    .line 141
    new-instance v12, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 145
    :cond_0
    const/4 v12, 0x0

    aget-wide v12, p1, v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    .line 146
    new-instance v12, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ELEMENT_NOT_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-wide v16, p1, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 150
    :cond_1
    move-object/from16 v0, p1

    array-length v7, v0

    .line 151
    .local v7, "n":I
    const/4 v12, 0x1

    if-ne v7, v12, :cond_3

    .line 152
    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v8, v12

    .line 178
    :cond_2
    return-object v8

    .line 157
    :cond_3
    new-array v10, v7, [D

    .line 158
    .local v10, "x":[D
    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v10, v12

    .line 159
    shr-int/lit8 v12, v7, 0x1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    shr-int/lit8 v13, v7, 0x1

    aget-wide v16, p1, v13

    mul-double v14, v14, v16

    aput-wide v14, v10, v12

    .line 160
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    shr-int/lit8 v12, v7, 0x1

    if-ge v6, v12, :cond_4

    .line 161
    int-to-double v12, v6

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    int-to-double v14, v7

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v12

    aget-wide v14, p1, v6

    sub-int v16, v7, v6

    aget-wide v16, p1, v16

    add-double v14, v14, v16

    mul-double v2, v12, v14

    .line 162
    .local v2, "a":D
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    aget-wide v14, p1, v6

    sub-int v16, v7, v6

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    mul-double v4, v12, v14

    .line 163
    .local v4, "b":D
    add-double v12, v2, v4

    aput-wide v12, v10, v6

    .line 164
    sub-int v12, v7, v6

    sub-double v14, v2, v4

    aput-wide v14, v10, v12

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "a":D
    .end local v4    # "b":D
    :cond_4
    new-instance v9, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v12, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-direct {v9, v12}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    .line 168
    .local v9, "transformer":Lorg/apache/commons/math3/transform/FastFourierTransformer;
    sget-object v12, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    invoke-virtual {v9, v10, v12}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v11

    .line 171
    .local v11, "y":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v8, v12

    .line 172
    const/4 v12, 0x1

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v13}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v16

    mul-double v14, v14, v16

    aput-wide v14, v8, v12

    .line 173
    const/4 v6, 0x1

    :goto_1
    shr-int/lit8 v12, v7, 0x1

    if-ge v6, v12, :cond_2

    .line 174
    mul-int/lit8 v12, v6, 0x2

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v14

    neg-double v14, v14

    aput-wide v14, v8, v12

    .line 175
    mul-int/lit8 v12, v6, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v14

    mul-int/lit8 v13, v6, 0x2

    add-int/lit8 v13, v13, -0x1

    aget-wide v16, v8, v13

    add-double v14, v14, v16

    aput-wide v14, v8, v12

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 4
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .prologue
    .line 122
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    .line 123
    .local v0, "data":[D
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 124
    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastSineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object v1

    return-object v1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 6
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 96
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastSineTransformer;->normalization:Lorg/apache/commons/math3/transform/DstNormalization;

    sget-object v3, Lorg/apache/commons/math3/transform/DstNormalization;->ORTHOGONAL_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;

    if-ne v2, v3, :cond_0

    .line 97
    array-length v2, p1

    int-to-double v2, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 98
    .local v0, "s":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v2

    .line 104
    .end local v0    # "s":D
    :goto_0
    return-object v2

    .line 100
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v2, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_1
    array-length v2, p1

    int-to-double v2, v2

    div-double v0, v4, v2

    .line 104
    .restart local v0    # "s":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v2

    goto :goto_0
.end method
