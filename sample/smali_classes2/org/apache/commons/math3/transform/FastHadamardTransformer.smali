.class public Lorg/apache/commons/math3/transform/FastHadamardTransformer;
.super Ljava/lang/Object;
.source "FastHadamardTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected fht([D)[D
    .locals 13
    .param p1, "x"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 230
    array-length v3, p1

    .line 231
    .local v3, "n":I
    div-int/lit8 v0, v3, 0x2

    .line 233
    .local v0, "halfN":I
    int-to-long v8, v3

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 234
    new-instance v8, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8

    .line 243
    :cond_0
    new-array v6, v3, [D

    .line 244
    .local v6, "yPrevious":[D
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 247
    .local v5, "yCurrent":[D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 250
    move-object v7, v5

    .line 251
    .local v7, "yTmp":[D
    move-object v5, v6

    .line 252
    move-object v6, v7

    .line 255
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 257
    mul-int/lit8 v4, v1, 0x2

    .line 258
    .local v4, "twoI":I
    aget-wide v8, v6, v4

    add-int/lit8 v10, v4, 0x1

    aget-wide v10, v6, v10

    add-double/2addr v8, v10

    aput-wide v8, v5, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    .end local v4    # "twoI":I
    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 262
    mul-int/lit8 v4, v1, 0x2

    .line 263
    .restart local v4    # "twoI":I
    sub-int v8, v4, v3

    aget-wide v8, v6, v8

    sub-int v10, v4, v3

    add-int/lit8 v10, v10, 0x1

    aget-wide v10, v6, v10

    sub-double/2addr v8, v10

    aput-wide v8, v5, v1

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    .end local v4    # "twoI":I
    :cond_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    .end local v7    # "yTmp":[D
    :cond_3
    return-object v5
.end method

.method protected fht([I)[I
    .locals 13
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 281
    array-length v3, p1

    .line 282
    .local v3, "n":I
    div-int/lit8 v0, v3, 0x2

    .line 284
    .local v0, "halfN":I
    int-to-long v8, v3

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 285
    new-instance v8, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8

    .line 294
    :cond_0
    new-array v6, v3, [I

    .line 295
    .local v6, "yPrevious":[I
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 298
    .local v5, "yCurrent":[I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 301
    move-object v7, v5

    .line 302
    .local v7, "yTmp":[I
    move-object v5, v6

    .line 303
    move-object v6, v7

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 308
    mul-int/lit8 v4, v1, 0x2

    .line 309
    .local v4, "twoI":I
    aget v8, v6, v4

    add-int/lit8 v9, v4, 0x1

    aget v9, v6, v9

    add-int/2addr v8, v9

    aput v8, v5, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    .end local v4    # "twoI":I
    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 313
    mul-int/lit8 v4, v1, 0x2

    .line 314
    .restart local v4    # "twoI":I
    sub-int v8, v4, v3

    aget v8, v6, v8

    sub-int v9, v4, v3

    add-int/lit8 v9, v9, 0x1

    aget v9, v6, v9

    sub-int/2addr v8, v9

    aput v8, v5, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 298
    .end local v4    # "twoI":I
    :cond_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    .end local v7    # "yTmp":[I
    :cond_3
    return-object v5
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 2
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .prologue
    .line 70
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object v0

    return-object v0
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 6
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .prologue
    .line 51
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    array-length v1, p1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object v0

    goto :goto_0
.end method

.method public transform([I)[I
    .locals 1
    .param p1, "f"    # [I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([I)[I

    move-result-object v0

    return-object v0
.end method
