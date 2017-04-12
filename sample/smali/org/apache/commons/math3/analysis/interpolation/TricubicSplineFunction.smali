.class Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;
.super Ljava/lang/Object;
.source "TricubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[[D


# direct methods
.method public constructor <init>([D)V
    .locals 7
    .param p1, "aV"    # [D

    .prologue
    const/4 v6, 0x4

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    filled-new-array {v6, v6, v6}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[D

    iput-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 431
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 432
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v6, :cond_0

    .line 433
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    aget-wide v4, p1, v4

    aput-wide v4, v3, v2

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v2    # "k":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "j":I
    :cond_2
    return-void
.end method


# virtual methods
.method public value(DDD)D
    .locals 27
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 449
    const-wide/16 v22, 0x0

    cmpg-double v22, p1, v22

    if-ltz v22, :cond_0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, p1, v22

    if-lez v22, :cond_1

    .line 450
    :cond_0
    new-instance v22, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v22

    .line 452
    :cond_1
    const-wide/16 v22, 0x0

    cmpg-double v22, p3, v22

    if-ltz v22, :cond_2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, p3, v22

    if-lez v22, :cond_3

    .line 453
    :cond_2
    new-instance v22, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v22

    .line 455
    :cond_3
    const-wide/16 v22, 0x0

    cmpg-double v22, p5, v22

    if-ltz v22, :cond_4

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, p5, v22

    if-lez v22, :cond_5

    .line 456
    :cond_4
    new-instance v22, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v22

    .line 459
    :cond_5
    mul-double v10, p1, p1

    .line 460
    .local v10, "x2":D
    mul-double v12, v10, p1

    .line 461
    .local v12, "x3":D
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v5, v0, [D

    const/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    aput-wide v24, v5, v22

    const/16 v22, 0x1

    aput-wide p1, v5, v22

    const/16 v22, 0x2

    aput-wide v10, v5, v22

    const/16 v22, 0x3

    aput-wide v12, v5, v22

    .line 463
    .local v5, "pX":[D
    mul-double v14, p3, p3

    .line 464
    .local v14, "y2":D
    mul-double v16, v14, p3

    .line 465
    .local v16, "y3":D
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v6, v0, [D

    const/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    aput-wide v24, v6, v22

    const/16 v22, 0x1

    aput-wide p3, v6, v22

    const/16 v22, 0x2

    aput-wide v14, v6, v22

    const/16 v22, 0x3

    aput-wide v16, v6, v22

    .line 467
    .local v6, "pY":[D
    mul-double v18, p5, p5

    .line 468
    .local v18, "z2":D
    mul-double v20, v18, p5

    .line 469
    .local v20, "z3":D
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v7, v0, [D

    const/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    aput-wide v24, v7, v22

    const/16 v22, 0x1

    aput-wide p5, v7, v22

    const/16 v22, 0x2

    aput-wide v18, v7, v22

    const/16 v22, 0x3

    aput-wide v20, v7, v22

    .line 471
    .local v7, "pZ":[D
    const-wide/16 v8, 0x0

    .line 472
    .local v8, "result":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v2, v0, :cond_8

    .line 473
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v3, v0, :cond_7

    .line 474
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v4, v0, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    move-object/from16 v22, v0

    aget-object v22, v22, v2

    aget-object v22, v22, v3

    aget-wide v22, v22, v4

    aget-wide v24, v5, v2

    mul-double v22, v22, v24

    aget-wide v24, v6, v3

    mul-double v22, v22, v24

    aget-wide v24, v7, v4

    mul-double v22, v22, v24

    add-double v8, v8, v22

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 473
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 472
    .end local v4    # "k":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "j":I
    :cond_8
    return-wide v8
.end method
