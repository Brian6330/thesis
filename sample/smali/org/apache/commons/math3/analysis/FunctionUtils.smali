.class public Lorg/apache/commons/math3/analysis/FunctionUtils;
.super Ljava/lang/Object;
.source "FunctionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$6;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 144
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$4;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$4;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    .prologue
    .line 164
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$5;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static collector(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1
    .param p0, "combiner"    # Lorg/apache/commons/math3/analysis/BivariateFunction;
    .param p1, "initialValue"    # D

    .prologue
    .line 372
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Identity;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Identity;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public static collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 2
    .param p0, "combiner"    # Lorg/apache/commons/math3/analysis/BivariateFunction;
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "initialValue"    # D

    .prologue
    .line 349
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/apache/commons/math3/analysis/FunctionUtils$11;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;DLorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static combine(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p0, "combiner"    # Lorg/apache/commons/math3/analysis/BivariateFunction;
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "g"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 328
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$10;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$3;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 51
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$1;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    .prologue
    .line 74
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$2;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static fix1stArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/BivariateFunction;
    .param p1, "fixed"    # D

    .prologue
    .line 384
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$12;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V

    return-object v0
.end method

.method public static fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/BivariateFunction;
    .param p1, "fixed"    # D

    .prologue
    .line 400
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$13;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$9;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 232
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$7;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$7;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .param p0, "f"    # [Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    .prologue
    .line 252
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$8;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$8;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D
    .locals 9
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 428
    if-gtz p5, :cond_0

    .line 429
    new-instance v4, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v4

    .line 433
    :cond_0
    cmpl-double v4, p1, p3

    if-ltz v4, :cond_1

    .line 434
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 437
    :cond_1
    new-array v3, p5, [D

    .line 438
    .local v3, "s":[D
    sub-double v4, p3, p1

    int-to-double v6, p5

    div-double v0, v4, v6

    .line 439
    .local v0, "h":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_2

    .line 440
    int-to-double v4, v2

    mul-double/2addr v4, v0

    add-double/2addr v4, p1

    invoke-interface {p0, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_2
    return-object v3
.end method

.method public static toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$16;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$18;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V

    return-object v0
.end method

.method public static toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$14;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$14;-><init>(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static toMultivariateDifferentiableFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$17;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)V

    return-object v0
.end method

.method public static toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 731
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$19;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V

    return-object v0
.end method

.method public static toUnivariateDifferential(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$15;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method
