.class public abstract Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "BaseMultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseOptimizer",
        "<TPAIR;>;"
    }
.end annotation


# instance fields
.field private lowerBound:[D

.field private start:[D

.field private upperBound:[D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<TPAIR;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<TPAIR;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 48
    return-void
.end method

.method private checkParameters()V
    .locals 12

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    const/4 v11, 0x1

    .line 127
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    if-eqz v8, :cond_5

    .line 128
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    array-length v0, v8

    .line 129
    .local v0, "dim":I
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    if-eqz v8, :cond_2

    .line 130
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    array-length v8, v8

    if-eq v8, v0, :cond_0

    .line 131
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v9, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    array-length v9, v9

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 133
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 134
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    aget-wide v6, v8, v1

    .line 135
    .local v6, "v":D
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    aget-wide v4, v8, v1

    .line 136
    .local v4, "lo":D
    cmpg-double v8, v6, v4

    if-gez v8, :cond_1

    .line 137
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    .end local v4    # "lo":D
    .end local v6    # "v":D
    :cond_2
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    if-eqz v8, :cond_5

    .line 142
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    array-length v8, v8

    if-eq v8, v0, :cond_3

    .line 143
    new-instance v8, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v9, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    array-length v9, v9

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v8

    .line 145
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 146
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    aget-wide v6, v8, v1

    .line 147
    .restart local v6    # "v":D
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    aget-wide v2, v8, v1

    .line 148
    .local v2, "hi":D
    cmpl-double v8, v6, v2

    if-lez v8, :cond_4

    .line 149
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 145
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "dim":I
    .end local v1    # "i":I
    .end local v2    # "hi":D
    .end local v6    # "v":D
    :cond_5
    return-void
.end method


# virtual methods
.method public getLowerBound()[D
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public getStartPoint()[D
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public getUpperBound()[D
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/optim/OptimizationData;",
            ")TPAIR;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 6
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 85
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 86
    .local v2, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v5, v2, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v5, :cond_1

    .line 87
    check-cast v2, Lorg/apache/commons/math3/optim/InitialGuess;

    .end local v2    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/InitialGuess;->getInitialGuess()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .restart local v2    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    instance-of v5, v2, Lorg/apache/commons/math3/optim/SimpleBounds;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 91
    check-cast v1, Lorg/apache/commons/math3/optim/SimpleBounds;

    .line 92
    .local v1, "bounds":Lorg/apache/commons/math3/optim/SimpleBounds;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/SimpleBounds;->getLower()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    .line 93
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/SimpleBounds;->getUpper()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    goto :goto_1

    .line 99
    .end local v1    # "bounds":Lorg/apache/commons/math3/optim/SimpleBounds;
    .end local v2    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->checkParameters()V

    .line 100
    return-void
.end method
