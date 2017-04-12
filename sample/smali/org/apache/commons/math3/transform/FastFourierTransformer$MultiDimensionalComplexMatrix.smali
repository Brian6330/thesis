.class Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
.super Ljava/lang/Object;
.source "FastFourierTransformer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/transform/FastFourierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiDimensionalComplexMatrix"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected dimensionSize:[I

.field protected multiDimensionalComplexArray:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .param p1, "multiDimensionalComplexArray"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, "numOfDimensions":I
    move-object v1, p1

    .line 527
    .local v1, "lastDimension":Ljava/lang/Object;
    :goto_0
    instance-of v4, v1, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 528
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "lastDimension":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 529
    .local v0, "array":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 530
    aget-object v1, v0, v6

    .line 531
    .restart local v1    # "lastDimension":Ljava/lang/Object;
    goto :goto_0

    .line 534
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_0
    new-array v4, v2, [I

    iput-object v4, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    .line 537
    const/4 v2, 0x0

    .line 538
    move-object v1, p1

    .line 539
    :goto_1
    instance-of v4, v1, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 540
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "lastDimension":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 541
    .restart local v0    # "array":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numOfDimensions":I
    .local v3, "numOfDimensions":I
    array-length v5, v0

    aput v5, v4, v2

    .line 542
    aget-object v1, v0, v6

    .restart local v1    # "lastDimension":Ljava/lang/Object;
    move v2, v3

    .line 543
    .end local v3    # "numOfDimensions":I
    .restart local v2    # "numOfDimensions":I
    goto :goto_1

    .line 545
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private clone(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;)V
    .locals 11
    .param p1, "mdcm"    # Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    .prologue
    const/4 v10, 0x0

    .line 650
    iget-object v8, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v8, v8

    new-array v6, v8, [I

    .line 651
    .local v6, "vector":[I
    const/4 v5, 0x1

    .line 652
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 653
    iget-object v8, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    aget v8, v8, v1

    mul-int/2addr v5, v8

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v8, v8

    filled-new-array {v5, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 656
    .local v7, "vectorList":[[I
    move-object v0, v7

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 657
    .local v4, "nextVector":[I
    iget-object v8, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v8, v8

    invoke-static {v6, v10, v4, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 660
    aget v8, v6, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v1

    .line 661
    aget v8, v6, v1

    iget-object v9, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    aget v9, v9, v1

    if-ge v8, v9, :cond_2

    .line 656
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 664
    :cond_2
    aput v10, v6, v1

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 669
    .end local v4    # "nextVector":[I
    :cond_3
    move-object v0, v7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 670
    .restart local v4    # "nextVector":[I
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->get([I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    invoke-virtual {p1, v8, v4}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 672
    .end local v4    # "nextVector":[I
    :cond_4
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 636
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    const-class v1, Lorg/apache/commons/math3/complex/Complex;

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;-><init>(Ljava/lang/Object;)V

    .line 639
    .local v0, "mdcm":Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->clone(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;)V

    .line 640
    return-object v0
.end method

.method public varargs get([I)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p1, "vector"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 557
    if-nez p1, :cond_1

    .line 558
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 559
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 563
    :cond_0
    const/4 v1, 0x0

    .line 576
    :goto_0
    return-object v1

    .line 565
    :cond_1
    array-length v2, p1

    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v3

    if-eq v2, v3, :cond_2

    .line 566
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    iget-object v4, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 571
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    .line 573
    .local v1, "lastDimension":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 574
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "lastDimension":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    aget v2, p1, v0

    aget-object v1, v1, v2

    .line 573
    .restart local v1    # "lastDimension":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 576
    :cond_3
    check-cast v1, Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    return-object v0
.end method

.method public getDimensionSizes()[I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public varargs set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "magnitude"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "vector"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 590
    if-nez p2, :cond_1

    .line 591
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v3

    if-lez v3, :cond_0

    .line 592
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 596
    :cond_0
    const/4 v2, 0x0

    .line 612
    :goto_0
    return-object v2

    .line 598
    :cond_1
    array-length v3, p2

    iget-object v4, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 599
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, p2

    iget-object v5, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 604
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 605
    .local v1, "lastDimension":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 606
    aget v3, p2, v0

    aget-object v3, v1, v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    aget-object v2, v1, v3

    check-cast v2, Lorg/apache/commons/math3/complex/Complex;

    .line 610
    .local v2, "lastValue":Lorg/apache/commons/math3/complex/Complex;
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    aput-object p1, v1, v3

    goto :goto_0
.end method
