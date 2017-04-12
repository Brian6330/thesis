.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D

.field private final partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>([D)V
    .locals 1
    .param p1, "coeff"    # [D

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    .line 462
    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 14
    .param p1, "coeff"    # [D
    .param p2, "initializeDerivatives"    # Z

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const/4 v9, 0x4

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    .line 475
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 476
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/4 v9, 0x4

    if-ge v8, v9, :cond_0

    .line 477
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v9, v9, v5

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v8

    aget-wide v10, p1, v10

    aput-wide v10, v9, v8

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 475
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 481
    .end local v8    # "j":I
    :cond_1
    if-eqz p2, :cond_4

    .line 483
    const/4 v9, 0x4

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 484
    .local v0, "aX":[[D
    const/4 v9, 0x4

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 485
    .local v3, "aY":[[D
    const/4 v9, 0x4

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 486
    .local v1, "aXX":[[D
    const/4 v9, 0x4

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 487
    .local v4, "aYY":[[D
    const/4 v9, 0x4

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 489
    .local v2, "aXY":[[D
    const/4 v5, 0x0

    :goto_2
    const/4 v9, 0x4

    if-ge v5, v9, :cond_3

    .line 490
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_3
    const/4 v9, 0x4

    if-ge v8, v9, :cond_2

    .line 491
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v9, v9, v5

    aget-wide v6, v9, v8

    .line 492
    .local v6, "c":D
    aget-object v9, v0, v5

    int-to-double v10, v5

    mul-double/2addr v10, v6

    aput-wide v10, v9, v8

    .line 493
    aget-object v9, v3, v5

    int-to-double v10, v8

    mul-double/2addr v10, v6

    aput-wide v10, v9, v8

    .line 494
    aget-object v9, v1, v5

    add-int/lit8 v10, v5, -0x1

    int-to-double v10, v10

    aget-object v12, v0, v5

    aget-wide v12, v12, v8

    mul-double/2addr v10, v12

    aput-wide v10, v9, v8

    .line 495
    aget-object v9, v4, v5

    add-int/lit8 v10, v8, -0x1

    int-to-double v10, v10

    aget-object v12, v3, v5

    aget-wide v12, v12, v8

    mul-double/2addr v10, v12

    aput-wide v10, v9, v8

    .line 496
    aget-object v9, v2, v5

    int-to-double v10, v8

    aget-object v12, v0, v5

    aget-wide v12, v12, v8

    mul-double/2addr v10, v12

    aput-wide v10, v9, v8

    .line 490
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 489
    .end local v6    # "c":D
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 500
    .end local v8    # "j":I
    :cond_3
    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;

    invoke-direct {v9, p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 512
    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;

    invoke-direct {v9, p0, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 524
    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;

    invoke-direct {v9, p0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 535
    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;

    invoke-direct {v9, p0, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 546
    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;

    invoke-direct {v9, p0, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 564
    .end local v0    # "aX":[[D
    .end local v1    # "aXX":[[D
    .end local v2    # "aXY":[[D
    .end local v3    # "aY":[[D
    .end local v4    # "aYY":[[D
    :goto_4
    return-void

    .line 558
    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 559
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 560
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 561
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 562
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    goto :goto_4
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
    .param p1, "x1"    # [D
    .param p2, "x2"    # [D
    .param p3, "x3"    # [[D

    .prologue
    .line 439
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private apply([D[D[[D)D
    .locals 9
    .param p1, "pX"    # [D
    .param p2, "pY"    # [D
    .param p3, "coeff"    # [[D

    .prologue
    const/4 v8, 0x4

    .line 597
    const-wide/16 v2, 0x0

    .line 598
    .local v2, "result":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 599
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v8, :cond_0

    .line 600
    aget-object v4, p3, v0

    aget-wide v4, v4, v1

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    aget-wide v6, p2, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "j":I
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public value(DD)D
    .locals 15
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 570
    const-wide/16 v10, 0x0

    cmpg-double v10, p1, v10

    if-ltz v10, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, p1, v10

    if-lez v10, :cond_1

    .line 571
    :cond_0
    new-instance v10, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v10

    .line 573
    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v10, p3, v10

    if-ltz v10, :cond_2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, p3, v10

    if-lez v10, :cond_3

    .line 574
    :cond_2
    new-instance v10, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v10

    .line 577
    :cond_3
    mul-double v2, p1, p1

    .line 578
    .local v2, "x2":D
    mul-double v4, v2, p1

    .line 579
    .local v4, "x3":D
    const/4 v10, 0x4

    new-array v0, v10, [D

    const/4 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v0, v10

    const/4 v10, 0x1

    aput-wide p1, v0, v10

    const/4 v10, 0x2

    aput-wide v2, v0, v10

    const/4 v10, 0x3

    aput-wide v4, v0, v10

    .line 581
    .local v0, "pX":[D
    mul-double v6, p3, p3

    .line 582
    .local v6, "y2":D
    mul-double v8, v6, p3

    .line 583
    .local v8, "y3":D
    const/4 v10, 0x4

    new-array v1, v10, [D

    const/4 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v1, v10

    const/4 v10, 0x1

    aput-wide p3, v1, v10

    const/4 v10, 0x2

    aput-wide v6, v1, v10

    const/4 v10, 0x3

    aput-wide v8, v1, v10

    .line 585
    .local v1, "pY":[D
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    invoke-direct {p0, v0, v1, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide v10

    return-wide v10
.end method
