.class public Lorg/apache/commons/math3/util/MathArrays;
.super Ljava/lang/Object;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MathArrays$3;,
        Lorg/apache/commons/math3/util/MathArrays$Position;,
        Lorg/apache/commons/math3/util/MathArrays$OrderDirection;,
        Lorg/apache/commons/math3/util/MathArrays$Function;
    }
.end annotation


# static fields
.field private static final SPLIT_FACTOR:I = 0x8000001


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 1374
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 1375
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1376
    return-object v0
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;
    .locals 6
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;II)[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v5, 0x0

    .line 1394
    if-gez p2, :cond_1

    .line 1395
    invoke-static {p0, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    .line 1396
    .local v1, "dummyRow":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [[Ljava/lang/Object;

    .line 1406
    .end local v1    # "dummyRow":[Ljava/lang/Object;, "[TT;"
    .local v0, "array":[[Ljava/lang/Object;, "[[TT;"
    :cond_0
    return-object v0

    .line 1398
    .end local v0    # "array":[[Ljava/lang/Object;, "[[TT;"
    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [[Ljava/lang/Object;

    .line 1402
    .restart local v0    # "array":[[Ljava/lang/Object;, "[[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1403
    aget-object v3, v0, v2

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static checkNonNegative([J)V
    .locals 6
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 518
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 519
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_1
    return-void
.end method

.method public static checkNonNegative([[J)V
    .locals 6
    .param p0, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 534
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v2, p0, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 535
    aget-object v2, p0, v0

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 536
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-object v3, p0, v0

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 533
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public static checkNotNaN([D)V
    .locals 4
    .param p0, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 502
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    new-instance v1, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v1

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :cond_1
    return-void
.end method

.method public static checkOrder([D)V
    .locals 2
    .param p0, "val"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    .line 453
    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V
    .locals 1
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 442
    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z
    .locals 10
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .param p3, "abort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 380
    aget-wide v8, p0, v0

    .line 381
    .local v8, "previous":D
    array-length v6, p0

    .line 385
    .local v6, "max":I
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 386
    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 411
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 388
    :pswitch_0
    if-eqz p2, :cond_2

    .line 389
    aget-wide v4, p0, v3

    cmpg-double v1, v4, v8

    if-gtz v1, :cond_3

    .line 417
    :cond_0
    :goto_1
    if-ne v3, v6, :cond_5

    .line 419
    const/4 v0, 0x1

    .line 426
    :cond_1
    return v0

    .line 393
    :cond_2
    aget-wide v4, p0, v3

    cmpg-double v1, v4, v8

    if-ltz v1, :cond_0

    .line 414
    :cond_3
    aget-wide v8, p0, v3

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    :pswitch_1
    if-eqz p2, :cond_4

    .line 400
    aget-wide v4, p0, v3

    cmpl-double v1, v4, v8

    if-ltz v1, :cond_3

    goto :goto_1

    .line 404
    :cond_4
    aget-wide v4, p0, v3

    cmpl-double v1, v4, v8

    if-lez v1, :cond_3

    goto :goto_1

    .line 423
    :cond_5
    if-eqz p3, :cond_1

    .line 424
    new-instance v0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;-><init>(Ljava/lang/Number;Ljava/lang/Number;ILorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    throw v0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkPositive([D)V
    .locals 6
    .param p0, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 486
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 487
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 485
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_1
    return-void
.end method

.method public static checkRectangular([[J)V
    .locals 5
    .param p0, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 466
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 467
    aget-object v1, p0, v0

    array-length v1, v1

    aget-object v2, p0, v4

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 468
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIFFERENT_ROWS_LENGTHS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v3, p0, v0

    array-length v3, v3

    aget-object v4, p0, v4

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v1

    .line 466
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    return-void
.end method

.method public static convolve([D[D)[D
    .locals 18
    .param p0, "x"    # [D
    .param p1, "h"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1433
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1435
    move-object/from16 v0, p0

    array-length v9, v0

    .line 1436
    .local v9, "xLen":I
    move-object/from16 v0, p1

    array-length v2, v0

    .line 1438
    .local v2, "hLen":I
    if-eqz v9, :cond_0

    if-nez v2, :cond_1

    .line 1439
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v11}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v11

    .line 1443
    :cond_1
    add-int v11, v9, v2

    add-int/lit8 v8, v11, -0x1

    .line 1444
    .local v8, "totalLength":I
    new-array v10, v8, [D

    .line 1447
    .local v10, "y":[D
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 1448
    const-wide/16 v12, 0x0

    .line 1449
    .local v12, "yn":D
    const/4 v11, 0x0

    add-int/lit8 v14, v7, 0x1

    sub-int/2addr v14, v9

    invoke-static {v11, v14}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v5

    .line 1450
    .local v5, "k":I
    sub-int v3, v7, v5

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v6, v5

    .line 1451
    .end local v5    # "k":I
    .local v6, "k":I
    :goto_1
    if-ge v6, v2, :cond_2

    if-ltz v4, :cond_2

    .line 1452
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-wide v14, p0, v4

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    aget-wide v16, p1, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    goto :goto_1

    .line 1454
    :cond_2
    aput-wide v12, v10, v7

    .line 1447
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1457
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v12    # "yn":D
    :cond_3
    return-object v10
.end method

.method public static copyOf([D)[D
    .locals 1
    .param p0, "source"    # [D

    .prologue
    .line 784
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3
    .param p0, "source"    # [D
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 812
    new-array v0, p1, [D

    .line 813
    .local v0, "output":[D
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    return-object v0
.end method

.method public static copyOf([I)[I
    .locals 1
    .param p0, "source"    # [I

    .prologue
    .line 774
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "source"    # [I
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 797
    new-array v0, p1, [I

    .line 798
    .local v0, "output":[I
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    return-object v0
.end method

.method public static copyOfRange([DII)[D
    .locals 4
    .param p0, "source"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 826
    sub-int v0, p2, p1

    .line 827
    .local v0, "len":I
    new-array v1, v0, [D

    .line 828
    .local v1, "output":[D
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    return-object v1
.end method

.method public static distance([D[D)D
    .locals 10
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D

    .prologue
    .line 239
    const-wide/16 v4, 0x0

    .line 240
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 241
    aget-wide v6, p0, v2

    aget-wide v8, p1, v2

    sub-double v0, v6, v8

    .line 242
    .local v0, "dp":D
    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "dp":D
    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public static distance([I[I)D
    .locals 8
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I

    .prologue
    .line 255
    const-wide/16 v4, 0x0

    .line 256
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 257
    aget v3, p0, v2

    aget v6, p1, v2

    sub-int/2addr v3, v6

    int-to-double v0, v3

    .line 258
    .local v0, "dp":D
    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "dp":D
    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public static distance1([D[D)D
    .locals 8
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D

    .prologue
    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .local v2, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 211
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-wide v2
.end method

.method public static distance1([I[I)I
    .locals 4
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 226
    aget v2, p0, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return v1
.end method

.method public static distanceInf([D[D)D
    .locals 8
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D

    .prologue
    .line 271
    const-wide/16 v2, 0x0

    .line 272
    .local v2, "max":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 273
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-wide v2
.end method

.method public static distanceInf([I[I)I
    .locals 4
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 288
    aget v2, p0, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return v1
.end method

.method public static ebeAdd([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 124
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 125
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p0

    array-length v4, p1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 128
    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 129
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 130
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-object v1
.end method

.method public static ebeDivide([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 190
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 191
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p0

    array-length v4, p1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 194
    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 195
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 196
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    return-object v1
.end method

.method public static ebeMultiply([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 168
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 169
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p0

    array-length v4, p1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 172
    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 173
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 174
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return-object v1
.end method

.method public static ebeSubtract([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 146
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 147
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p0

    array-length v4, p1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 150
    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 151
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 152
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-object v1
.end method

.method public static equals([D[D)Z
    .locals 8
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1267
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1268
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1278
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1268
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1270
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1274
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1278
    goto :goto_3
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1216
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1217
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1227
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1217
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1219
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1223
    aget v3, p0, v0

    aget v4, p1, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1227
    goto :goto_3
.end method

.method public static equalsIncludingNaN([D[D)Z
    .locals 8
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1293
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1294
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1304
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1294
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1296
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1300
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1299
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1304
    goto :goto_3
.end method

.method public static equalsIncludingNaN([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1242
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1243
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1253
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1243
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1245
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1249
    aget v3, p0, v0

    aget v4, p1, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1253
    goto :goto_3
.end method

.method public static isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 1
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result v0

    return v0
.end method

.method public static isMonotonic([Ljava/lang/Comparable;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 7
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;",
            "Lorg/apache/commons/math3/util/MathArrays$OrderDirection;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "val":[Ljava/lang/Comparable;, "[TT;"
    const/4 v4, 0x0

    .line 315
    aget-object v3, p0, v4

    .line 316
    .local v3, "previous":Ljava/lang/Comparable;, "TT;"
    array-length v2, p0

    .line 317
    .local v2, "max":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 319
    sget-object v5, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 346
    new-instance v4, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v4

    .line 321
    :pswitch_0
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 322
    .local v0, "comp":I
    if-eqz p2, :cond_1

    .line 323
    if-ltz v0, :cond_2

    .line 351
    .end local v0    # "comp":I
    :cond_0
    :goto_1
    return v4

    .line 327
    .restart local v0    # "comp":I
    :cond_1
    if-gtz v0, :cond_0

    .line 349
    :cond_2
    aget-object v3, p0, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "comp":I
    :pswitch_1
    aget-object v5, p0, v1

    invoke-interface {v5, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 334
    .restart local v0    # "comp":I
    if-eqz p2, :cond_3

    .line 335
    if-ltz v0, :cond_2

    goto :goto_1

    .line 339
    :cond_3
    if-lez v0, :cond_2

    goto :goto_1

    .line 351
    .end local v0    # "comp":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static linearCombination(DDDD)D
    .locals 46
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D

    .prologue
    .line 948
    const-wide v40, 0x41a0000002000000L    # 1.34217729E8

    mul-double v16, v40, p0

    .line 949
    .local v16, "ca1":D
    sub-double v40, v16, p0

    sub-double v0, v16, v40

    .line 950
    .local v0, "a1High":D
    sub-double v2, p0, v0

    .line 951
    .local v2, "a1Low":D
    const-wide v40, 0x41a0000002000000L    # 1.34217729E8

    mul-double v20, v40, p2

    .line 952
    .local v20, "cb1":D
    sub-double v40, v20, p2

    sub-double v8, v20, v40

    .line 953
    .local v8, "b1High":D
    sub-double v10, p2, v8

    .line 956
    .local v10, "b1Low":D
    mul-double v24, p0, p2

    .line 957
    .local v24, "prod1High":D
    mul-double v40, v2, v10

    mul-double v42, v0, v8

    sub-double v42, v24, v42

    mul-double v44, v2, v8

    sub-double v42, v42, v44

    mul-double v44, v0, v10

    sub-double v42, v42, v44

    sub-double v26, v40, v42

    .line 960
    .local v26, "prod1Low":D
    const-wide v40, 0x41a0000002000000L    # 1.34217729E8

    mul-double v18, v40, p4

    .line 961
    .local v18, "ca2":D
    sub-double v40, v18, p4

    sub-double v4, v18, v40

    .line 962
    .local v4, "a2High":D
    sub-double v6, p4, v4

    .line 963
    .local v6, "a2Low":D
    const-wide v40, 0x41a0000002000000L    # 1.34217729E8

    mul-double v22, v40, p6

    .line 964
    .local v22, "cb2":D
    sub-double v40, v22, p6

    sub-double v12, v22, v40

    .line 965
    .local v12, "b2High":D
    sub-double v14, p6, v12

    .line 968
    .local v14, "b2Low":D
    mul-double v28, p4, p6

    .line 969
    .local v28, "prod2High":D
    mul-double v40, v6, v14

    mul-double v42, v4, v12

    sub-double v42, v28, v42

    mul-double v44, v6, v12

    sub-double v42, v42, v44

    mul-double v44, v4, v14

    sub-double v42, v42, v44

    sub-double v30, v40, v42

    .line 972
    .local v30, "prod2Low":D
    add-double v34, v24, v28

    .line 973
    .local v34, "s12High":D
    sub-double v38, v34, v28

    .line 974
    .local v38, "s12Prime":D
    sub-double v40, v34, v38

    sub-double v40, v28, v40

    sub-double v42, v24, v38

    add-double v36, v40, v42

    .line 978
    .local v36, "s12Low":D
    add-double v40, v26, v30

    add-double v40, v40, v36

    add-double v32, v34, v40

    .line 980
    .local v32, "result":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->isNaN(D)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 983
    mul-double v40, p0, p2

    mul-double v42, p4, p6

    add-double v32, v40, v42

    .line 986
    :cond_0
    return-wide v32
.end method

.method public static linearCombination(DDDDDD)D
    .locals 68
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D
    .param p8, "a3"    # D
    .param p10, "b3"    # D

    .prologue
    .line 1028
    const-wide v62, 0x41a0000002000000L    # 1.34217729E8

    mul-double v24, v62, p0

    .line 1029
    .local v24, "ca1":D
    sub-double v62, v24, p0

    sub-double v0, v24, v62

    .line 1030
    .local v0, "a1High":D
    sub-double v2, p0, v0

    .line 1031
    .local v2, "a1Low":D
    const-wide v62, 0x41a0000002000000L    # 1.34217729E8

    mul-double v30, v62, p2

    .line 1032
    .local v30, "cb1":D
    sub-double v62, v30, p2

    sub-double v12, v30, v62

    .line 1033
    .local v12, "b1High":D
    sub-double v14, p2, v12

    .line 1036
    .local v14, "b1Low":D
    mul-double v36, p0, p2

    .line 1037
    .local v36, "prod1High":D
    mul-double v62, v2, v14

    mul-double v64, v0, v12

    sub-double v64, v36, v64

    mul-double v66, v2, v12

    sub-double v64, v64, v66

    mul-double v66, v0, v14

    sub-double v64, v64, v66

    sub-double v38, v62, v64

    .line 1040
    .local v38, "prod1Low":D
    const-wide v62, 0x41a0000002000000L    # 1.34217729E8

    mul-double v26, v62, p4

    .line 1041
    .local v26, "ca2":D
    sub-double v62, v26, p4

    sub-double v4, v26, v62

    .line 1042
    .local v4, "a2High":D
    sub-double v6, p4, v4

    .line 1043
    .local v6, "a2Low":D
    const-wide v62, 0x41a0000002000000L    # 1.34217729E8

    mul-double v32, v62, p6

    .line 1044
    .local v32, "cb2":D
    sub-double v62, v32, p6

    sub-double v16, v32, v62

    .line 1045
    .local v16, "b2High":D
    sub-double v18, p6, v16

    .line 1048
    .local v18, "b2Low":D
    mul-double v40, p4, p6

    .line 1049
    .local v40, "prod2High":D
    mul-double v62, v6, v18

    mul-double v64, v4, v16

    sub-double v64, v40, v64

    mul-double v66, v6, v16

    sub-double v64, v64, v66

    mul-double v66, v4, v18

    sub-double v64, v64, v66

    sub-double v42, v62, v64

    .line 1052
    .local v42, "prod2Low":D
    const-wide v62, 0x41a0000002000000L    # 1.34217729E8

    mul-double v28, v62, p8

    .line 1053
    .local v28, "ca3":D
    sub-double v62, v28, p8

    sub-double v8, v28, v62

    .line 1054
    .local v8, "a3High":D
    sub-double v10, p8, v8

    .line 1055
    .local v10, "a3Low":D
    const-wide v62, 0x41a0000002000000L    # 1.34217729E8

    mul-double v34, v62, p10

    .line 1056
    .local v34, "cb3":D
    sub-double v62, v34, p10

    sub-double v20, v34, v62

    .line 1057
    .local v20, "b3High":D
    sub-double v22, p10, v20

    .line 1060
    .local v22, "b3Low":D
    mul-double v44, p8, p10

    .line 1061
    .local v44, "prod3High":D
    mul-double v62, v10, v22

    mul-double v64, v8, v20

    sub-double v64, v44, v64

    mul-double v66, v10, v20

    sub-double v64, v64, v66

    mul-double v66, v8, v22

    sub-double v64, v64, v66

    sub-double v46, v62, v64

    .line 1064
    .local v46, "prod3Low":D
    add-double v56, v36, v40

    .line 1065
    .local v56, "s12High":D
    sub-double v60, v56, v40

    .line 1066
    .local v60, "s12Prime":D
    sub-double v62, v56, v60

    sub-double v62, v40, v62

    sub-double v64, v36, v60

    add-double v58, v62, v64

    .line 1069
    .local v58, "s12Low":D
    add-double v50, v56, v44

    .line 1070
    .local v50, "s123High":D
    sub-double v54, v50, v44

    .line 1071
    .local v54, "s123Prime":D
    sub-double v62, v50, v54

    sub-double v62, v44, v62

    sub-double v64, v56, v54

    add-double v52, v62, v64

    .line 1075
    .local v52, "s123Low":D
    add-double v62, v38, v42

    add-double v62, v62, v46

    add-double v62, v62, v58

    add-double v62, v62, v52

    add-double v48, v50, v62

    .line 1077
    .local v48, "result":D
    invoke-static/range {v48 .. v49}, Ljava/lang/Double;->isNaN(D)Z

    move-result v62

    if-eqz v62, :cond_0

    .line 1080
    mul-double v62, p0, p2

    mul-double v64, p4, p6

    add-double v62, v62, v64

    mul-double v64, p8, p10

    add-double v48, v62, v64

    .line 1083
    :cond_0
    return-wide v48
.end method

.method public static linearCombination(DDDDDDDD)D
    .locals 90
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D
    .param p8, "a3"    # D
    .param p10, "b3"    # D
    .param p12, "a4"    # D
    .param p14, "b4"    # D

    .prologue
    .line 1130
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v32, v84, p0

    .line 1131
    .local v32, "ca1":D
    sub-double v84, v32, p0

    sub-double v0, v32, v84

    .line 1132
    .local v0, "a1High":D
    sub-double v2, p0, v0

    .line 1133
    .local v2, "a1Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v40, v84, p2

    .line 1134
    .local v40, "cb1":D
    sub-double v84, v40, p2

    sub-double v16, v40, v84

    .line 1135
    .local v16, "b1High":D
    sub-double v18, p2, v16

    .line 1138
    .local v18, "b1Low":D
    mul-double v48, p0, p2

    .line 1139
    .local v48, "prod1High":D
    mul-double v84, v2, v18

    mul-double v86, v0, v16

    sub-double v86, v48, v86

    mul-double v88, v2, v16

    sub-double v86, v86, v88

    mul-double v88, v0, v18

    sub-double v86, v86, v88

    sub-double v50, v84, v86

    .line 1142
    .local v50, "prod1Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v34, v84, p4

    .line 1143
    .local v34, "ca2":D
    sub-double v84, v34, p4

    sub-double v4, v34, v84

    .line 1144
    .local v4, "a2High":D
    sub-double v6, p4, v4

    .line 1145
    .local v6, "a2Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v42, v84, p6

    .line 1146
    .local v42, "cb2":D
    sub-double v84, v42, p6

    sub-double v20, v42, v84

    .line 1147
    .local v20, "b2High":D
    sub-double v22, p6, v20

    .line 1150
    .local v22, "b2Low":D
    mul-double v52, p4, p6

    .line 1151
    .local v52, "prod2High":D
    mul-double v84, v6, v22

    mul-double v86, v4, v20

    sub-double v86, v52, v86

    mul-double v88, v6, v20

    sub-double v86, v86, v88

    mul-double v88, v4, v22

    sub-double v86, v86, v88

    sub-double v54, v84, v86

    .line 1154
    .local v54, "prod2Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v36, v84, p8

    .line 1155
    .local v36, "ca3":D
    sub-double v84, v36, p8

    sub-double v8, v36, v84

    .line 1156
    .local v8, "a3High":D
    sub-double v10, p8, v8

    .line 1157
    .local v10, "a3Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v44, v84, p10

    .line 1158
    .local v44, "cb3":D
    sub-double v84, v44, p10

    sub-double v24, v44, v84

    .line 1159
    .local v24, "b3High":D
    sub-double v26, p10, v24

    .line 1162
    .local v26, "b3Low":D
    mul-double v56, p8, p10

    .line 1163
    .local v56, "prod3High":D
    mul-double v84, v10, v26

    mul-double v86, v8, v24

    sub-double v86, v56, v86

    mul-double v88, v10, v24

    sub-double v86, v86, v88

    mul-double v88, v8, v26

    sub-double v86, v86, v88

    sub-double v58, v84, v86

    .line 1166
    .local v58, "prod3Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v38, v84, p12

    .line 1167
    .local v38, "ca4":D
    sub-double v84, v38, p12

    sub-double v12, v38, v84

    .line 1168
    .local v12, "a4High":D
    sub-double v14, p12, v12

    .line 1169
    .local v14, "a4Low":D
    const-wide v84, 0x41a0000002000000L    # 1.34217729E8

    mul-double v46, v84, p14

    .line 1170
    .local v46, "cb4":D
    sub-double v84, v46, p14

    sub-double v28, v46, v84

    .line 1171
    .local v28, "b4High":D
    sub-double v30, p14, v28

    .line 1174
    .local v30, "b4Low":D
    mul-double v60, p12, p14

    .line 1175
    .local v60, "prod4High":D
    mul-double v84, v14, v30

    mul-double v86, v12, v28

    sub-double v86, v60, v86

    mul-double v88, v14, v28

    sub-double v86, v86, v88

    mul-double v88, v12, v30

    sub-double v86, v86, v88

    sub-double v62, v84, v86

    .line 1178
    .local v62, "prod4Low":D
    add-double v78, v48, v52

    .line 1179
    .local v78, "s12High":D
    sub-double v82, v78, v52

    .line 1180
    .local v82, "s12Prime":D
    sub-double v84, v78, v82

    sub-double v84, v52, v84

    sub-double v86, v48, v82

    add-double v80, v84, v86

    .line 1183
    .local v80, "s12Low":D
    add-double v72, v78, v56

    .line 1184
    .local v72, "s123High":D
    sub-double v76, v72, v56

    .line 1185
    .local v76, "s123Prime":D
    sub-double v84, v72, v76

    sub-double v84, v56, v84

    sub-double v86, v78, v76

    add-double v74, v84, v86

    .line 1188
    .local v74, "s123Low":D
    add-double v66, v72, v60

    .line 1189
    .local v66, "s1234High":D
    sub-double v70, v66, v60

    .line 1190
    .local v70, "s1234Prime":D
    sub-double v84, v66, v70

    sub-double v84, v60, v84

    sub-double v86, v72, v70

    add-double v68, v84, v86

    .line 1194
    .local v68, "s1234Low":D
    add-double v84, v50, v54

    add-double v84, v84, v58

    add-double v84, v84, v62

    add-double v84, v84, v80

    add-double v84, v84, v74

    add-double v84, v84, v68

    add-double v64, v66, v84

    .line 1196
    .local v64, "result":D
    invoke-static/range {v64 .. v65}, Ljava/lang/Double;->isNaN(D)Z

    move-result v84

    if-eqz v84, :cond_0

    .line 1199
    mul-double v84, p0, p2

    mul-double v86, p4, p6

    add-double v84, v84, v86

    mul-double v86, p8, p10

    add-double v84, v84, v86

    mul-double v86, p12, p14

    add-double v64, v84, v86

    .line 1202
    :cond_0
    return-wide v64
.end method

.method public static linearCombination([D[D)D
    .locals 48
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 851
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    .line 852
    .local v21, "len":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v21

    move/from16 v1, v42

    if-eq v0, v1, :cond_0

    .line 853
    new-instance v42, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, v21

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v42

    .line 856
    :cond_0
    const/16 v42, 0x1

    move/from16 v0, v21

    move/from16 v1, v42

    if-ne v0, v1, :cond_2

    .line 858
    const/16 v42, 0x0

    aget-wide v42, p0, v42

    const/16 v44, 0x0

    aget-wide v44, p1, v44

    mul-double v32, v42, v44

    .line 909
    :cond_1
    return-wide v32

    .line 861
    :cond_2
    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v23, v0

    .line 862
    .local v23, "prodHigh":[D
    const-wide/16 v30, 0x0

    .line 864
    .local v30, "prodLowSum":D
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 865
    aget-wide v8, p0, v20

    .line 866
    .local v8, "ai":D
    const-wide v42, 0x41a0000002000000L    # 1.34217729E8

    mul-double v16, v42, v8

    .line 867
    .local v16, "ca":D
    sub-double v42, v16, v8

    sub-double v4, v16, v42

    .line 868
    .local v4, "aHigh":D
    sub-double v6, v8, v4

    .line 870
    .local v6, "aLow":D
    aget-wide v14, p1, v20

    .line 871
    .local v14, "bi":D
    const-wide v42, 0x41a0000002000000L    # 1.34217729E8

    mul-double v18, v42, v14

    .line 872
    .local v18, "cb":D
    sub-double v42, v18, v14

    sub-double v10, v18, v42

    .line 873
    .local v10, "bHigh":D
    sub-double v12, v14, v10

    .line 874
    .local v12, "bLow":D
    mul-double v42, v8, v14

    aput-wide v42, v23, v20

    .line 875
    mul-double v42, v6, v12

    aget-wide v44, v23, v20

    mul-double v46, v4, v10

    sub-double v44, v44, v46

    mul-double v46, v6, v10

    sub-double v44, v44, v46

    mul-double v46, v4, v12

    sub-double v44, v44, v46

    sub-double v28, v42, v44

    .line 879
    .local v28, "prodLow":D
    add-double v30, v30, v28

    .line 864
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 883
    .end local v4    # "aHigh":D
    .end local v6    # "aLow":D
    .end local v8    # "ai":D
    .end local v10    # "bHigh":D
    .end local v12    # "bLow":D
    .end local v14    # "bi":D
    .end local v16    # "ca":D
    .end local v18    # "cb":D
    .end local v28    # "prodLow":D
    :cond_3
    const/16 v42, 0x0

    aget-wide v24, v23, v42

    .line 884
    .local v24, "prodHighCur":D
    const/16 v42, 0x1

    aget-wide v26, v23, v42

    .line 885
    .local v26, "prodHighNext":D
    add-double v36, v24, v26

    .line 886
    .local v36, "sHighPrev":D
    sub-double v40, v36, v26

    .line 887
    .local v40, "sPrime":D
    sub-double v42, v36, v40

    sub-double v42, v26, v42

    sub-double v44, v24, v40

    add-double v38, v42, v44

    .line 889
    .local v38, "sLowSum":D
    add-int/lit8 v22, v21, -0x1

    .line 890
    .local v22, "lenMinusOne":I
    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 891
    add-int/lit8 v42, v20, 0x1

    aget-wide v26, v23, v42

    .line 892
    add-double v34, v36, v26

    .line 893
    .local v34, "sHighCur":D
    sub-double v40, v34, v26

    .line 894
    sub-double v42, v34, v40

    sub-double v42, v26, v42

    sub-double v44, v36, v40

    add-double v42, v42, v44

    add-double v38, v38, v42

    .line 895
    move-wide/from16 v36, v34

    .line 890
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 898
    .end local v34    # "sHighCur":D
    :cond_4
    add-double v42, v30, v38

    add-double v32, v36, v42

    .line 900
    .local v32, "result":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->isNaN(D)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 903
    const-wide/16 v32, 0x0

    .line 904
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 905
    aget-wide v42, p0, v20

    aget-wide v44, p1, v20

    mul-double v42, v42, v44

    add-double v32, v32, v42

    .line 904
    add-int/lit8 v20, v20, 0x1

    goto :goto_2
.end method

.method public static natural(I)[I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 1576
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->sequence(III)[I

    move-result-object v0

    return-object v0
.end method

.method public static normalizeArray([DD)[D
    .locals 11
    .param p0, "values"    # [D
    .param p1, "normalizedSum"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1332
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1333
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_INFINITE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1335
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1336
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1338
    :cond_1
    const-wide/16 v4, 0x0

    .line 1339
    .local v4, "sum":D
    array-length v1, p0

    .line 1340
    .local v1, "len":I
    new-array v2, v1, [D

    .line 1341
    .local v2, "out":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1342
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1343
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aget-wide v8, p0, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1345
    :cond_2
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1346
    aget-wide v6, p0, v0

    add-double/2addr v4, v6

    .line 1341
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    :cond_4
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_5

    .line 1350
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SUMS_TO_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1352
    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_7

    .line 1353
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1354
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    aput-wide v6, v2, v0

    .line 1352
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1356
    :cond_6
    aget-wide v6, p0, v0

    mul-double/2addr v6, p1

    div-double/2addr v6, v4

    aput-wide v6, v2, v0

    goto :goto_2

    .line 1359
    :cond_7
    return-object v2
.end method

.method public static safeNorm([D)D
    .locals 34
    .param p0, "v"    # [D

    .prologue
    .line 603
    const-wide v12, 0x3be6a1c6e8d98029L    # 3.834E-20

    .line 604
    .local v12, "rdwarf":D
    const-wide v14, 0x43e69eec5d27e300L    # 1.304E19

    .line 605
    .local v14, "rgiant":D
    const-wide/16 v16, 0x0

    .line 606
    .local v16, "s1":D
    const-wide/16 v18, 0x0

    .line 607
    .local v18, "s2":D
    const-wide/16 v20, 0x0

    .line 608
    .local v20, "s3":D
    const-wide/16 v22, 0x0

    .line 609
    .local v22, "x1max":D
    const-wide/16 v24, 0x0

    .line 610
    .local v24, "x3max":D
    move-object/from16 v0, p0

    array-length v7, v0

    int-to-double v4, v7

    .line 611
    .local v4, "floatn":D
    div-double v2, v14, v4

    .line 612
    .local v2, "agiant":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v7, v0

    if-ge v6, v7, :cond_6

    .line 613
    aget-wide v28, p0, v6

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    .line 614
    .local v26, "xabs":D
    cmpg-double v7, v26, v12

    if-ltz v7, :cond_0

    cmpl-double v7, v26, v2

    if-lez v7, :cond_5

    .line 615
    :cond_0
    cmpl-double v7, v26, v12

    if-lez v7, :cond_3

    .line 616
    cmpl-double v7, v26, v22

    if-lez v7, :cond_2

    .line 617
    div-double v10, v22, v26

    .line 618
    .local v10, "r":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v30, v16, v10

    mul-double v30, v30, v10

    add-double v16, v28, v30

    .line 619
    move-wide/from16 v22, v26

    .line 612
    .end local v10    # "r":D
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 621
    :cond_2
    div-double v10, v26, v22

    .line 622
    .restart local v10    # "r":D
    mul-double v28, v10, v10

    add-double v16, v16, v28

    .line 623
    goto :goto_1

    .line 625
    .end local v10    # "r":D
    :cond_3
    cmpl-double v7, v26, v24

    if-lez v7, :cond_4

    .line 626
    div-double v10, v24, v26

    .line 627
    .restart local v10    # "r":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v30, v20, v10

    mul-double v30, v30, v10

    add-double v20, v28, v30

    .line 628
    move-wide/from16 v24, v26

    .line 629
    goto :goto_1

    .line 630
    .end local v10    # "r":D
    :cond_4
    const-wide/16 v28, 0x0

    cmpl-double v7, v26, v28

    if-eqz v7, :cond_1

    .line 631
    div-double v10, v26, v24

    .line 632
    .restart local v10    # "r":D
    mul-double v28, v10, v10

    add-double v20, v20, v28

    .line 633
    goto :goto_1

    .line 637
    .end local v10    # "r":D
    :cond_5
    mul-double v28, v26, v26

    add-double v18, v18, v28

    goto :goto_1

    .line 641
    .end local v26    # "xabs":D
    :cond_6
    const-wide/16 v28, 0x0

    cmpl-double v7, v16, v28

    if-eqz v7, :cond_7

    .line 642
    div-double v28, v18, v22

    div-double v28, v28, v22

    add-double v28, v28, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    mul-double v8, v22, v28

    .line 654
    .local v8, "norm":D
    :goto_2
    return-wide v8

    .line 644
    .end local v8    # "norm":D
    :cond_7
    const-wide/16 v28, 0x0

    cmpl-double v7, v18, v28

    if-nez v7, :cond_8

    .line 645
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    mul-double v8, v24, v28

    .restart local v8    # "norm":D
    goto :goto_2

    .line 647
    .end local v8    # "norm":D
    :cond_8
    cmpl-double v7, v18, v24

    if-ltz v7, :cond_9

    .line 648
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v30, v24, v18

    mul-double v32, v24, v20

    mul-double v30, v30, v32

    add-double v28, v28, v30

    mul-double v28, v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .restart local v8    # "norm":D
    goto :goto_2

    .line 650
    .end local v8    # "norm":D
    :cond_9
    div-double v28, v18, v24

    mul-double v30, v24, v20

    add-double v28, v28, v30

    mul-double v28, v28, v24

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .restart local v8    # "norm":D
    goto :goto_2
.end method

.method public static scale(D[D)[D
    .locals 4
    .param p0, "val"    # D
    .param p2, "arr"    # [D

    .prologue
    .line 90
    array-length v2, p2

    new-array v1, v2, [D

    .line 91
    .local v1, "newArr":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 92
    aget-wide v2, p2, v0

    mul-double/2addr v2, p0

    aput-wide v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public static scaleInPlace(D[D)V
    .locals 4
    .param p0, "val"    # D
    .param p2, "arr"    # [D

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 108
    aget-wide v2, p2, v0

    mul-double/2addr v2, p0

    aput-wide v2, p2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public static sequence(III)[I
    .locals 3
    .param p0, "size"    # I
    .param p1, "start"    # I
    .param p2, "stride"    # I

    .prologue
    .line 1594
    new-array v0, p0, [I

    .line 1595
    .local v0, "a":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 1596
    mul-int v2, v1, p2

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 1595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1598
    :cond_0
    return-object v0
.end method

.method public static shuffle([I)V
    .locals 1
    .param p0, "list"    # [I

    .prologue
    .line 1565
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1566
    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;)V
    .locals 1
    .param p0, "list"    # [I
    .param p1, "start"    # I
    .param p2, "pos"    # Lorg/apache/commons/math3/util/MathArrays$Position;

    .prologue
    .line 1487
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1488
    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 5
    .param p0, "list"    # [I
    .param p1, "start"    # I
    .param p2, "pos"    # Lorg/apache/commons/math3/util/MathArrays$Position;
    .param p3, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 1508
    sget-object v3, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/MathArrays$Position;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1540
    new-instance v3, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v3

    .line 1510
    :pswitch_0
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 1512
    if-ne v0, p1, :cond_0

    .line 1513
    move v1, p1

    .line 1518
    .local v1, "target":I
    :goto_1
    aget v2, p0, v1

    .line 1519
    .local v2, "temp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1520
    aput v2, p0, v0

    .line 1510
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1516
    .end local v1    # "target":I
    .end local v2    # "temp":I
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v3, p3, p1, v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v1

    .restart local v1    # "target":I
    goto :goto_1

    .line 1525
    .end local v0    # "i":I
    .end local v1    # "target":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-gt v0, p1, :cond_2

    .line 1527
    if-ne v0, p1, :cond_1

    .line 1528
    move v1, p1

    .line 1533
    .restart local v1    # "target":I
    :goto_3
    aget v2, p0, v1

    .line 1534
    .restart local v2    # "temp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1535
    aput v2, p0, v0

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1531
    .end local v1    # "target":I
    .end local v2    # "temp":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v3, p3, v0, p1}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v1

    .restart local v1    # "target":I
    goto :goto_3

    .line 1542
    .end local v1    # "target":I
    :cond_2
    return-void

    .line 1508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p0, "list"    # [I
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 1554
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1555
    return-void
.end method

.method public static varargs sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
    .locals 16
    .param p0, "x"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "yList"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 702
    if-nez p0, :cond_0

    .line 703
    new-instance v13, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v13}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v13

    .line 706
    :cond_0
    move-object/from16 v0, p2

    array-length v11, v0

    .line 707
    .local v11, "yListLen":I
    move-object/from16 v0, p0

    array-length v7, v0

    .line 709
    .local v7, "len":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v11, :cond_3

    .line 710
    aget-object v9, p2, v6

    .line 711
    .local v9, "y":[D
    if-nez v9, :cond_1

    .line 712
    new-instance v13, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v13}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v13

    .line 714
    :cond_1
    array-length v13, v9

    if-eq v13, v7, :cond_2

    .line 715
    new-instance v13, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v14, v9

    invoke-direct {v13, v14, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v13

    .line 709
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 720
    .end local v9    # "y":[D
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 723
    new-instance v13, Lorg/apache/commons/math3/util/Pair;

    aget-wide v14, p0, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 727
    :cond_4
    sget-object v13, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5

    new-instance v2, Lorg/apache/commons/math3/util/MathArrays$1;

    invoke-direct {v2}, Lorg/apache/commons/math3/util/MathArrays$1;-><init>()V

    .line 742
    .local v2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    :goto_2
    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 747
    new-array v5, v7, [I

    .line 748
    .local v5, "indices":[I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_6

    .line 749
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/util/Pair;

    .line 750
    .local v3, "e":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    aput-wide v14, p0, v4

    .line 751
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v5, v4

    .line 748
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 727
    .end local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    .end local v3    # "e":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;"
    .end local v5    # "indices":[I
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/util/MathArrays$2;

    invoke-direct {v2}, Lorg/apache/commons/math3/util/MathArrays$2;-><init>()V

    goto :goto_2

    .line 756
    .restart local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    .restart local v5    # "indices":[I
    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v11, :cond_8

    .line 758
    aget-object v10, p2, v6

    .line 759
    .local v10, "yInPlace":[D
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    .line 761
    .local v12, "yOrig":[D
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_7

    .line 762
    aget v13, v5, v4

    aget-wide v14, v12, v13

    aput-wide v14, v10, v4

    .line 761
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 756
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 765
    .end local v10    # "yInPlace":[D
    .end local v12    # "yOrig":[D
    :cond_8
    return-void
.end method

.method public static varargs sortInPlace([D[[D)V
    .locals 1
    .param p0, "x"    # [D
    .param p1, "yList"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 675
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V

    .line 676
    return-void
.end method

.method public static verifyValues([DII)Z
    .locals 1
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1622
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v0

    return v0
.end method

.method public static verifyValues([DIIZ)Z
    .locals 5
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1649
    if-nez p0, :cond_0

    .line 1650
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 1653
    :cond_0
    if-gez p1, :cond_1

    .line 1654
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 1657
    :cond_1
    if-gez p2, :cond_2

    .line 1658
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 1661
    :cond_2
    add-int v2, p1, p2

    array-length v3, p0

    if-le v2, v3, :cond_3

    .line 1662
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SUBARRAY_ENDS_AFTER_ARRAY_END:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    add-int v3, p1, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1666
    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 1670
    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static verifyValues([D[DII)Z
    .locals 1
    .param p0, "values"    # [D
    .param p1, "weights"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1708
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([D[DIIZ)Z

    move-result v0

    return v0
.end method

.method public static verifyValues([D[DIIZ)Z
    .locals 11
    .param p0, "values"    # [D
    .param p1, "weights"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .param p4, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1747
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1748
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1751
    :cond_1
    array-length v4, p1

    array-length v5, p0

    if-eq v4, v5, :cond_2

    .line 1752
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, p1

    array-length v6, p0

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 1755
    :cond_2
    const/4 v0, 0x0

    .line 1756
    .local v0, "containsPositiveWeight":Z
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v4, p2, p3

    if-ge v1, v4, :cond_7

    .line 1757
    aget-wide v2, p1, v1

    .line 1758
    .local v2, "weight":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1759
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1761
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1762
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1764
    :cond_4
    cmpg-double v4, v2, v6

    if-gez v4, :cond_5

    .line 1765
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1767
    :cond_5
    if-nez v0, :cond_6

    cmpl-double v4, v2, v6

    if-lez v4, :cond_6

    .line 1768
    const/4 v0, 0x1

    .line 1756
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1772
    .end local v2    # "weight":D
    :cond_7
    if-nez v0, :cond_8

    .line 1773
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WEIGHT_AT_LEAST_ONE_NON_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1776
    :cond_8
    invoke-static {p0, p2, p3, p4}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v4

    return v4
.end method
